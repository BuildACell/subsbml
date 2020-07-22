# Import packaged available with Python
import time
import copy
import warnings
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import sys

# Import dependencies
try:
    import libsbml 
except:
    raise ValueError('Package not installed : libsbml. The package depends on Python libsbml, install it before using this package.')

# Import subsbml methods
from .SimpleModel import SimpleModel
from .SimpleReaction import SimpleReaction
from .setIdFromNames import SetIdFromNames
from .utilityFunctions import check, getFromXML, createSbmlDoc

# The latest level and version of SBML 
# These are used to convert the models given as input to the latest SBML version
latestLevel = 3
latestVersion = 2

class Subsystem(object):

    '''
    The Subsystem class can be used to create subsystems which are placeholders for one SBML model.
    Each Subsystem must have ONE compartment (except when it's a Subsystem for a membrane, in which case it will have two compartments which should be called 'internal', 'external')
    The methods in the Subsystem class can be used for - 
    0. Load SBMLDocuments to a Subsystem object.
    1. Using various utility functions to edit SBML models (such as renaming, identifier modifications etc.)
    2. Performing simple quasi-steady state approximations to reduce models
    3. Work with reversible and irreversible reactions in an SBML model
    4. Combine, merge, and connect different Subsystem objects (Refer to wiki for a detailed documentation)
    5. Simulate SBMLDocument objects (placed inside Subsystem objects) using different simulators such as COPASI, bioscrape, libSBMLsim
    '''

    def __init__(self, SBMLDocument, System = None):
        '''
        Initializes the Subsystem object with the SBMLDocument object 
        Initializes the System attribute which may store the System inside which this Subsystem is placed.
        '''
        check(SBMLDocument,'checking SBMLDocument object')
        self.SBMLDocument = SBMLDocument
        self.System = System
        self.changeLog = {}

    def __add__(self, subsystem):
        '''
        Returns a combined Subsystem object that combines the two Subsystem objects using the '+' operator.
        Internally calls `combineSubsystems` function.
        '''
        temp_ss = createNewSubsystem()
        ListOfSubsystems = [self, subsystem]
        temp_ss.combineSubsystems(ListOfSubsystems)
        return temp_ss

    def getSBMLDocument(self):
        '''
        Returns the SBMLDocument object of the Subsystem
        '''
        return self.SBMLDocument

    def setSBMLDocument(self, doc):
        '''
        The doc is set as the SBMLDocument of the Subsystem
        Returns the Subsystem object
        '''
        check(doc,'retreiving SBMLDocument object in self.setSBMLDocument')
        self.SBMLDocument = doc
        return self

    def isSetSystem(self):
        '''
        Returns True if System is set for this Subsystem, False otherwise
        '''
        if self.System == None:
            return False
        else:
            return True

    def setSystem(self,systemObj):
        '''
        Sets the systemObject argument as the System for this Subsystem and returns it
        '''
        self.System = systemObj
        return self.System


    def getSystem(self):
        '''
        Returns the System object in which the Subsystem is placed.
        '''
        return self.System

    def renameSName(self, ListOfOldNames, new_name, **kwargs):
        '''
        Search the SBMLDocument in this Subsystem for the ListOfOldNames and rename all such 
        components by the new_name. Returns the updated SBMLDocument object of this Subsystem.
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        check(model,'retreiving model from document in renameSName')
        mod_obj = SimpleModel(model)
        names = []
        if type(ListOfOldNames) is str:
            names.append(ListOfOldNames)
        elif type(ListOfOldNames) is list:
            names = ListOfOldNames[:]
        else:
            raise ValueError('The ListOfOldNames argument should either be a string or a list of strings')
        
        if type(new_name) is not str:
            raise ValueError('The new name attribute should be a string')

        for old_name in names:
            if type(old_name) is not str:
                raise ValueError('All species names should be string type')
            species = mod_obj.getSpeciesByName(old_name)
            if species == None:
                raise ValueError('No species named' + old_name + 'found.')
            if type(species) is list:
                warnings.warn('Multiple species found with the name' + old_name + '. Replacing all.') if verbose else None
                for sp in species:
                    check(sp.setName(new_name), 'setting the new name from rename to the list of species')
            else:
                check(species.setName(new_name), 'setting new name from rename function call')
        return self.getSBMLDocument()

    def convertSubsystemLevelAndVersion(self, newLevel, newVersion, **kwargs):
        '''
        Converts the SBMLDocument of this Subsytem to the newLevel and newVersion
        Returns the SBMLDocument object of the Subsystem with updated level and version.
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        document = self.getSBMLDocument()
        check(document,'retreiving document object for subsystem in convert function')
        if type(newLevel) is not int or type(newVersion) is not int:
            raise ValueError('The arguments newLevel and newVersion must be integers')

        if newLevel == document.getLevel() and newVersion == document.getVersion():
            warnings.warn('The current SBMLDocument level and version are the same as the new level and version given') if verbose else None
            return

        check(document.setLevelAndVersion(newLevel,newVersion), 'converting SBMLDocument to new level and version')
        return self.getSBMLDocument()

    def renameSId(self, oldSId, newSId, debug = False): 
        '''
        Updates the SId from oldSId to newSId for any component of the Subsystem.
        Returns the SBMLDocument of the updated Subsystem
        '''

        # 
        # @file    renameSId.py
        # @brief   Utility program, renaming a specific SId 
        #          while updating all references to it.
        # @author  Frank T. Bergmann
        # 
        # <!--------------------------------------------------------------------------
        # This sample program is distributed under a different license than the rest
        # of libSBML.  This program uses the open-source MIT license, as follows:
        # 
        # Copyright (c) 2013-2018 by the California Institute of Technology
        # (California, USA), the European Bioinformatics Institute (EMBL-EBI, UK)
        # and the University of Heidelberg (Germany), with support from the National
        # Institutes of Health (USA) under grant R01GM070923.  All rights reserved.
        # 
        # Permission is hereby granted, free of charge, to any person obtaining a
        # copy of this software and associated documentation files (the "Software"),
        # to deal in the Software without restriction, including without limitation
        # the rights to use, copy, modify, merge, publish, distribute, sublicense,
        # and/or sell copies of the Software, and to permit persons to whom the
        # Software is furnished to do so, subject to the following conditions:
        # 
        # The above copyright notice and this permission notice shall be included in
        # all copies or substantial portions of the Software.
        # 
        # THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
        # IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
        # FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
        # THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
        # LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
        # FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
        # DEALINGS IN THE SOFTWARE.
        # 
        # Neither the name of the California Institute of Technology (Caltech), nor
        # of the European Bioinformatics Institute (EMBL-EBI), nor of the University
        # of Heidelberg, nor the names of any contributors, may be used to endorse
        # or promote products derived from this software without specific prior
        # written permission.
        # ------------------------------------------------------------------------ -->
        # 

        if oldSId == newSId:
            print("The Ids are identical, renaming stopped.")
            return

        if not libsbml.SyntaxChecker.isValidInternalSId(newSId):
            print("The new SId '{0}' does not represent a valid SId.".format(newSId))
            return

        document = self.getSBMLDocument()
        check(document,'retreiving document from subsystem in renameSId')
        element = document.getElementBySId(oldSId)

        if element == None:
            if debug:
                print("Found no element with SId '{0}' in subsystem {1}".format(oldSId,document.getModel().getId()))
            return
        
        # found element -> renaming
        check(element.setId(newSId),'setting new SId in renameSId')


        # update all references to this element
        allElements = document.getListOfAllElements()
        check(allElements,'getting list of all elements in renameSId')
        for i in range(allElements.getSize()):
            current = allElements.get(i)
            current.renameSIdRefs(oldSId, newSId)
            self.changeLog[oldSId] = newSId
        return document 
    
    def getSpeciesByName(self, name, compartment = '', **kwargs):
        ''' 
        Returns a list of species in the Model with the given name
        compartment : (Optional) argument to specify the compartment name in which to look for the species.
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if type(name) is not str:
            raise ValueError('The arguments are not of expected type.') 
        check(model,'retreived model object')
        species_found =[]
        for species in model.getListOfSpecies():
            if species.getName() == name:
                if compartment != '':
                    if model.getElementBySId(species.getCompartment()).getName() == compartment:
                        species_found.append(species)
                    else:
                        continue
                else:
                    species_found.append(species)

        if len(species_found) == 1:
            return species_found[0] 
        elif not species_found:
            raise ValueError('The species ' + name + ' not found.')
        else:
            warnings.warn('Multiple species with name ' + name + ' found. Returning a list') if verbose else None
            return species_found
    
 
    def getParameterByName(self, name):
        ''' 
        Returns a list of Parameters in the Model with the given name
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        if type(name) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getSBMLDocument().getModel()
        check(model,'retreived model object')
        parameter_found =[]
        # Going through all local parameters
        for reaction in model.getListOfReactions():
            for local_param in reaction.getKineticLaw().getListOfLocalParameters():
                if local_param.getName() == name:
                    parameter_found.append(local_param)
 
        # Going through all global parameters
        for parameter in model.getListOfParameters():
            if parameter.getName() == name:
                parameter_found.append(parameter)

        if len(parameter_found) == 1:
            return parameter_found[0] 
        elif not parameter_found:
            raise ValueError('The parameter ' + name + ' not found.')
        else:
            warnings.warn('Multiple parameter with name ' + name + ' found. Returning a list') if verbose else None
            return parameter_found
 

    def getAllIds(self):
        """ 
        Returns SIds of all components in this Subsystem in string format
        """
        document = self.getSBMLDocument()
        check(document,'retreiving document from subsystem in getAllIds')
        allElements = document.getListOfAllElements()
        result = []
        if (allElements == None or allElements.getSize() == 0):
            return result 
        for i in range (allElements.getSize()):
            current = allElements.get(i) 
            if (current.isSetId() and current.getTypeCode() != libsbml.SBML_EVENT and current.getTypeCode() != libsbml.SBML_LOCAL_PARAMETER):
                result.append(current.getId()) 
        return result     
    
    def suffixAllElementIds(self, name, suffixNames = False):
        '''
        All elements identifiers in the
        SBMLDocument of this Subsystem are suffixed with name.
        Returns the SBMLDocument of the Subsystem.
        '''
        document = self.getSBMLDocument()
        check(document,'retreiving document from subsystem in suffixAllElements')
        allids = self.getAllIds()
        if type(name) is not str:
            raise ValueError('The name argument should be string type')
            
        for oldid in allids:
            if oldid == self.getSBMLDocument().getModel().getId():
                continue
            if document.getElementBySId(oldid) != None:
                if name != '':
                    self.renameSId(oldid, oldid + '_' + name)

        ## Use if want to suffix all Name arguments too
        if suffixNames:
            elements = document.getListOfAllElements()
            for element in elements:
                if element.isSetName():
                    oldname = element.getName()
                    newname = oldname + '_' + name
                    element.setName(newname)
        return document

    def setCompartments(self, newCompartments, **kwargs):
        '''
    	The newCompartments list is set as the new ListOfCompartments 
        in theSBMLDocument of this Subsystem
        Returns the updated SBMLDocument 
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        document = self.getSBMLDocument()
        check(document,'retreiving document from subsystem in setSubsystemCompartments')
        compartments = document.getModel().getListOfCompartments()
        if not len(compartments):
            return 
        check(compartments,'retreiving list of compartments in setSubsystemCompartments')
        if type(newCompartments) is not list:
            if type(newCompartments) is str:
                newcomp = newCompartments
                newCompartments = []
                newCompartments.append(newcomp)
            else:
                raise ValueError('The newCompartments argument should be a list of strings or a single string')

        if len(compartments) != len(newCompartments):
            warnings.warn('The number of compartments given is not the same as the number of compartments in the model.') if verbose else None
            for i in range(len(newCompartments)):
                # rename compartment name and id
                if compartments.get(i).isSetName():
                    status = compartments.get(i).setName(newCompartments[i])
                    check(status, 'setting name of compartment in setSubsystemCompartment')
                oldid = compartments.get(i).getId()
                check(oldid,'retreiving oldid in setSubsystemCompartments')
                allids = self.getAllIds()
                trans = SetIdFromNames(allids)
                self.renameSId(oldid, trans.getValidIdForName(newCompartments[i]))
   
        else:
            for i in range(len(compartments)):
                # rename compartment name and id
                if compartments.get(i).isSetName():
                    status = compartments.get(i).setName(newCompartments[i])
                    check(status, 'setting name of compartment in setSubsystemCompartments')
                oldid = compartments.get(i).getId()
                check(oldid,'retreiving oldid in setSubsystemCompartments')
                allids = self.getAllIds()
                trans = SetIdFromNames(allids)
                self.renameSId(oldid, trans.getValidIdForName(newCompartments[i]))
        return self.getSBMLDocument()
    
    def renameCompartments(self,oldCompartments, newCompartments, **kwargs):
        '''
    	The newCompartments list is set as the new ListOfCompartments 
        in theSBMLDocument of this Subsystem
        Returns the updated SBMLDocument 
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        document = self.getSBMLDocument()
        check(document,'retreiving document from subsystem in setSubsystemCompartments')
        #compartments = document.getModel().getListOfCompartments()
        #if not len(compartments):
        #    return 
        #check(compartments,'retreiving list of compartments in setSubsystemCompartments')
        if type(newCompartments) is not list:
            if type(newCompartments) is str:
                newcomp = newCompartments
                newCompartments = []
                newCompartments.append(newcomp)
            else:
                raise ValueError('The newCompartments argument should be a list of strings or a single string')
        if type(oldCompartments) is not list:
            if type(oldCompartments) is str:
                oldcomp = oldCompartments
                oldCompartments = []
                oldCompartments.append(oldcomp)
            else:
                raise ValueError('The oldCompartments argument should be a list of strings or a single string')

        if len(oldCompartments) != len(newCompartments):
            raise ValueError('The number of old compartments given is not the same as the number of new compartments in the model.')
            
   
        else:
            for i in range(len(oldCompartments)):
                # rename compartment name and id
                compName= oldCompartments[i]
                compartment= self.getCompartmentsByName(compName)
               
                
                status = compartment.setName(newCompartments[i])
                check(status, 'setting name of compartment in setSubsystemCompartments')
                oldid = compartment.getId()
                check(oldid,'retreiving oldid in setSubsystemCompartments')
                allids = self.getAllIds()
                trans = SetIdFromNames(allids)
                self.renameSId(oldid, trans.getValidIdForName(newCompartments[i]))
        return self.getSBMLDocument()
    
    def createNewModel(self, modelId, timeUnits, extentUnits, substanceUnits):
        '''
        Creates a new Model object in the SBMLDocument of this Subsystem 
        with the given attributes. 
        Returns the libSBML Model object created.
        '''
        model = self.getSBMLDocument().createModel()
        if model == None:
            print('Unable to create Model object.')
            sys.exit(1)
        status = model.setId(modelId)
        if status != libsbml.LIBSBML_OPERATION_SUCCESS:
            print('Unable to set identifier on the Model object')
            sys.exit(1)
        check(model.setTimeUnits(timeUnits), 'set model-wide time units')
        check(model.setExtentUnits(extentUnits), 'set model units of extent')
        check(model.setSubstanceUnits(substanceUnits),
              'set model substance units')
        return model

    def mergeSubsystemModels(self, ListOfSubsystems, **kwargs):
        '''
        The ListOfSubsystems are merged together. All components are 
        merged together except the Species.
        Helper function which is used in other methods. 
        Returns the SBMLDocument of the merged Subsystem 
        '''
        # The following are merged : 
        # functions, units, compartments, species, parameters, 
        # initial assignments, rules, constraints, reactions, and events
        document = self.getSBMLDocument()
        debug = kwargs.get('debug')
        check(document,'retreiving document in mergeSubsystem')
        model_base = ListOfSubsystems[0].getSBMLDocument().getModel()
        check(model_base,'retreiving model in mergeSubsystems')
        model = self.createNewModel('merged_model',model_base.getTimeUnits(), model_base.getExtentUnits(), model_base.getSubstanceUnits())
        if debug:
            check(model.setAreaUnits(model_base.getAreaUnits()), 'set area units to merged ss')
            check(model.setExtentUnits(model_base.getExtentUnits()), 'set extent units to merged ss')
            check(model.setLengthUnits(model_base.getLengthUnits()), 'set length units to merged ss')
            check(model.setSubstanceUnits(model_base.getSubstanceUnits()), 'set substance units to merged ss')
            check(model.setTimeUnits(model_base.getTimeUnits()), 'set time units to merged ss')
            check(model.setVolumeUnits(model_base.getVolumeUnits()), 'set volume units to merged ss')
            check(document.setModel(model),'set model for document in mergeSubsystem')
        else:
            model.setAreaUnits(model_base.getAreaUnits())
            model.setExtentUnits(model_base.getExtentUnits())
            model.setLengthUnits(model_base.getLengthUnits())
            model.setSubstanceUnits(model_base.getSubstanceUnits())
            model.setTimeUnits(model_base.getTimeUnits())
            model.setVolumeUnits(model_base.getVolumeUnits())
            document.setModel(model)
            
        for subsystem in ListOfSubsystems:
            if type(subsystem) is not Subsystem:
                raise ValueError('All items of the ListOfSubsystems argument should be of Subsystem class')
            mod = subsystem.getSBMLDocument().getModel()
            if debug:
                check(mod,'retreive Subsystem model in mergeSubsystem')
            # Obsolete in SBML Level 3 
            # if mod.getNumCompartmentTypes() != 0:
            #     for each_compartmentType in mod.getListOfCompartmentType():
            #         model.addCompartmentType(each_compartmentType)
            if mod.getNumConstraints() != 0:
                for each_constraint in mod.getListOfConstraints():
                    if debug:
                        check(model.addConstraint(each_constraint), 'add constraint to merged model')
                    else:
                        model.addConstraint(each_constraint)

            if mod.getNumInitialAssignments() != 0:
                for each_initialAssignment in mod.getListOfInitialAssignments():
                    if debug:
                        check(model.addInitialAssignment(each_initialAssignment), 'add initial assignment to merged model')
                    else:
                        model.addInitialAssignment(each_initialAssignment)
            if mod.getNumFunctionDefinitions() != 0:
                for each_functionDefinition in mod.getListOfFunctionDefinitions():
                    if debug:
                        check(model.addFunctionDefinition(each_functionDefinition), 'add function definition to merged model')
                    else:
                        model.addFunctionDefinition(each_functionDefinition)
            if mod.getNumRules() != 0:
                for each_rule in mod.getListOfRules():
                    if debug:
                        check(model.addRule(each_rule), 'add rule to merged model')
                    else:
                        model.addRule(each_rule)
            if mod.getNumEvents() != 0:
                for each_event in mod.getListOfEvents():
                    if debug:
                        check(model.addEvent(each_event), 'add event to merged model')
                    else:
                        model.addEvent(each_event)
            if mod.getNumCompartments() != 0:
                for each_compartment in mod.getListOfCompartments():
                    if debug:
                        check(model.addCompartment(each_compartment), 'add compartment from SS into merged ss')
                    else:
                        model.addCompartment(each_compartment)
            if mod.getNumParameters() != 0:
                for each_parameter in mod.getListOfParameters():
                    if debug:
                        check(model.addParameter(each_parameter), 'add parameter to merged model')
                    else:
                        model.addParameter(each_parameter)
            if mod.getNumUnitDefinitions() != 0:
                for each_unit in mod.getListOfUnitDefinitions():
                    if debug:
                        check(model.addUnitDefinition(each_unit), 'add unit definition to merged model')
                    else:
                        model.addUnitDefinition(each_unit)
            if mod.getNumReactions() != 0:
                for each_reaction in mod.getListOfReactions():
                    if debug:
                        check(model.addReaction(each_reaction), 'add reaction to merged model')
                    else:
                        model.addReaction(each_reaction)
        return self.getSBMLDocument()
   
    def shareSubsystems(self, ListOfSubsystems, ListOfSharedResources, mode = 'virtual', **kwargs):
        '''
        Merges the ListOfSubsystems together along with all the Species. 
        The Species in ListOfSharedResources are combined together 
        and so are shared by all Subsystems among the ListOfSubsystems.
        Returns the combined SBMLDocument object of this Subsystem which stores the combined model
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        # Flatten out the ListOfSubsystems argument 
        ListOfListOfSubsystems = []
        if type(ListOfSubsystems) is not list:
            if type(ListOfSubsystems) is not Subsystem:
                raise ValueError('ListOfSubsystems argument must be a Subsystem object or list of Subsystem object')
            ListOfSubsystems = [ListOfSubsystems]
        for subsystem in ListOfSubsystems:
            if type(subsystem) is list:
                for sub in subsystem:
                    ListOfListOfSubsystems.append(sub)
            elif type(subsystem) is Subsystem:
                ListOfListOfSubsystems.append(subsystem)
            else:
                raise ValueError('All elements of ListOfSubsystems argument must be Subsystem objects')
    
        ListOfSubsystems = []
        ListOfSubsystems = ListOfListOfSubsystems
        flag = 0
        for subsystem in ListOfSubsystems:
            if subsystem.getSystem() == None:
                flag += 1
            if subsystem.getSystem() != ListOfSubsystems[0].getSystem():
                flag += 1
            if type(subsystem) is not Subsystem:
                raise ValueError('All objects in ListOfSubsystems input argument list must be Subsystem objects')
 
        # Merge all other components first and then add species 
        model = self.mergeSubsystemModels(ListOfSubsystems).getModel()
        check(model,'retreiving model in shareSubsystems')
        mod_id = ''
        total_size = 0
        if flag:
            warnings.warn('Not all of the Subsystems being shared are in the same Compartment') if verbose else None
            for subsystem in ListOfSubsystems:
                mod = subsystem.getSBMLDocument().getModel()
                mod_id += mod.getId()
                total_size += mod.getCompartment(0).getSize()
        else: 
            total_size = self.getSystem().getSize()
            mod_id = ListOfSubsystems[0].getSystem().getSystemName()

        check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
        for subsystem in ListOfSubsystems:
            subsystem.shareSubsystem(ListOfSharedResources, mode)
        self.shareSpecies(ListOfSubsystems, ListOfSharedResources, mode)
        # check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
        # Updating model id
        check(model.setId('shared_model_of_' + mod_id),'setting new model id for shared model')
        return self.getSBMLDocument()

    def shareSubsystem(self, ListOfSharedResources, mode = 'virtual', **kwargs):
        self.shareSpecies([], ListOfSharedResources, mode)
        return self.getSBMLDocument()

    def combineSubsystems(self, ListOfSubsystems, mode = 'virtual', combineNames = True, **kwargs):
        '''
        Combines the ListOfSubsystems. 
	    Species with the same name together are combined, if combineNames is True. 
        The ListOfSharedResources of the System in which the Subsystem is placed 
        is used to share the Species in the list. Other Species are combined depending on 
        the combineNames (True or False)
        Returns the SBMLDocument object of this Subsystem which holds the combined model.
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        # Flatten out the ListOfSubsystems argument 
        ListOfListOfSubsystems = []
        if type(ListOfSubsystems) is not list:
            raise ValueError('ListOfSubsystems argument should be list of Subsystem objects')

        for subsystem in ListOfSubsystems:
            if type(subsystem) is list:
                for sub in subsystem:
                    ListOfListOfSubsystems.append(sub)
            elif type(subsystem) is Subsystem:
                ListOfListOfSubsystems.append(subsystem)
            else:
                raise ValueError('All elements of ListOfSubsystems argument should be Subsystem objects')
        
        ListOfSubsystems = []
        ListOfSubsystems = ListOfListOfSubsystems
        flag = 0
        for subsystem in ListOfSubsystems:
            if subsystem.getSystem() == None:
                flag += 1
            if subsystem.getSystem() != ListOfSubsystems[0].getSystem():
                flag += 1
            if type(subsystem) is not Subsystem:
                raise ValueError('All objects in ListOfSubsystems input argument list should be of Subsystem class')
        if not flag:
            sys = ListOfSubsystems[0].getSystem()
            ListOfResources = sys.getListOfSharedResources()
            total_size = sys.getSize()
        else:
            ListOfResources = []
            warnings.warn('Not all of the Subsystems being combined are in the same Compartment') if verbose else None
            total_size = 0
            for subsystem in ListOfSubsystems:
                total_size += subsystem.getSBMLDocument().getModel().getCompartment(0).getSize()
        
        # To fix annotations needed for biocircuits tools suite
        for subsystem in ListOfSubsystems:
            subsystem.fixAnnotations(**kwargs)

        model = self.mergeSubsystemModels(ListOfSubsystems, **kwargs).getModel()
        check(model,'retreiving model in combineSubsystems')
        mod_id = ''
 
        check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
 
        # Combine each subsystem, to remove duplicate named components
        for subsystem in ListOfSubsystems:
            sub_model = subsystem.getSBMLDocument().getModel()
            if sub_model is None:
                raise ValueError('Subsystem model not loaded correctly. Check that the SBML file has a valid SBML model.')
            check(sub_model,'retreiving subsystem model in combineSubsystems')
            for species in sub_model.getListOfSpecies():
                model.addSpecies(species)
            mod_id += '_' + sub_model.getId()
            subsystem.combineSubsystem(ListOfResources, mode)
        if combineNames == True:
            self.combineCompartments(ListOfSubsystems, **kwargs)
            self.combineSpecies(ListOfSubsystems,ListOfResources, mode, **kwargs)
            self.combineParameters(ListOfSubsystems, **kwargs)
            self.combineReactions(ListOfSubsystems, **kwargs)
            self.combineEvents(ListOfSubsystems, **kwargs)
            self.combineFunctionDefinitions(ListOfSubsystems, **kwargs)
            self.combineUnitDefinitions(ListOfSubsystems, **kwargs)
        # For biocircuits specific annotations:
        self.fixAnnotations(**kwargs)

        check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
        # Updating model id
        check(model.setId('combined_model_of_' + mod_id),'setting new model id for shared model')
        return self.getSBMLDocument()
  
    def combineSubsystem(self, ListOfResources, mode = 'virtual', **kwargs):
        '''
        Returns SBML document object of the current Susbsytem object with all duplicate species, reactions etc. combined together.
        Can be used to implement resource sharing within a given Subsystem object.
        '''
        self.combineCompartments([], **kwargs)
        self.combineSpecies([], ListOfResources, mode, **kwargs)        
        self.combineParameters([], **kwargs)
        self.combineReactions([], **kwargs)
        self.combineUnitDefinitions([], **kwargs)
        self.combineFunctionDefinitions([], **kwargs)
        self.combineEvents([], **kwargs)
        return self.getSBMLDocument()

    
    def connectSubsystems(self, ListOfSubsystems, connectionMap, mode = 'virtual', combineNames = True, amount_mode = 'additive', connected_species_amount = 0, **kwargs):
        '''
        The ListOfSubsystems are combined together as in combineSubsystems 
        method (depending on combineNames). Using the map given in connectionMap
        other species which are different, are also combined. The optional argument
        of amount_mode can be used to set if amounts of combined species will be a sum (additive mode) 
        or ('constant') mode will set the amount equal to that of the last optional argument, connected_species_amount, which the user provides. 
        Returns the connected SBMLDocument object of this Subsystem
        '''
        self.combineSubsystems(ListOfSubsystems, mode, combineNames, **kwargs)
        model = self.getSBMLDocument().getModel()
        check(model,'retreiving self model in connectSubsystem')
        simpleModel = SimpleModel(model, **kwargs)
        if amount_mode == 'additive':
            connected_species_amount = []
        elif amount_mode == 'constant':
            if type(connected_species_amount) is not list:
                if not isinstance(connected_species_amount, (float,int)):
                    raise ValueError('Connected species amount must be a list of float or int')
                connected_species_amount = [connected_species_amount]

        for species_name in connectionMap.keys():
            species1 = simpleModel.getSpeciesByName(species_name, **kwargs)
            species2 = simpleModel.getSpeciesByName(connectionMap[species_name], **kwargs)
            if amount_mode == 'additive':
                connected_species_amount.append(species1.getInitialAmount() + species2.getInitialAmount())
            if type(species1) is not list:
                species1 = [species1]
            if type(species2) is not list:
                species2 = [species2]
            for species1,species2 in zip(species1,species2):
                self.renameSName(species2.getName(), species_name)

        if len(connected_species_amount) != len(connectionMap.keys()):
            raise ValueError('The connected species amount list must have same length as the keys in connection map given')

        for species_name, amount in zip(connectionMap.keys(), connected_species_amount):
            species1 = simpleModel.getSpeciesByName(species_name, **kwargs)
            if type(species1) is not list:
                species1 = [species1]
            count = 0
            allids = self.getAllIds()
            trans = SetIdFromNames(allids)
            for species in species1:
                check(species.setInitialAmount(amount), 'setting connected species amount')
                oldid = species.getId()
                newid = trans.getValidIdForName(species_name) + '_connected_with_' + trans.getValidIdForName(connectionMap[species_name])
                self.renameSId(oldid, newid, True)
                if count >= 1:
                    model.removeSpecies(species.getId())
                count += 1
        # self.combineSpecies([], [], mode)
        check(model.setId('connected_subsystems_' + model.getId()),'setting new model id for shared model')
        return self.getSBMLDocument()

    def shareSpecies(self, ListOfSubsystems, ListOfResources, mode, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            if self.isSetSystem():
                total_size =  self.getSystem().getSize()
            else:
                total_size =  model.getCompartment(0).getSize()
 
            if not ListOfResources:
                for species in model.getListOfSpecies():
                    model.addSpecies(species)
                    # check(model.addSpecies(species), 'adding species in shareSpecies if case when listofresources is empty')
                    # if mode == 'volume':
                    #     comp_size = model.getElementBySId(species.getCompartment()).getSize()
                    #     amount = species.getInitialAmount()*comp_size
                    #     check(species.setInitialAmount(amount/total_size),'setting initial cumulative amount in shareSpecies if case in volume mode, species not shared')
            else:
                final_species_hash_map = {}
                for compartment in model.getListOfCompartments():
                    species_hash_map = {}
                    for species in model.getListOfSpecies():
                        mod = species.getModel()
                        comp = mod.getElementBySId(species.getCompartment())
                        if species_hash_map.get(species.getId()):
                            raise ValueError('Multiple species with same identifier found. This is an invalid SBML.')
                        if species.isSetName() and comp.getName() == compartment.getName() and species.getName() in ListOfResources:
                            species_hash_map[species.getId()] = species.getName()
                        elif not species.isSetName():
                            warnings.warn('Species {0} does not have a name attribute. It might be duplicated.'.format(species.getId())) if verbose else None
                            continue
                    for species_id, species_str in species_hash_map.items():
                        if final_species_hash_map.get(species_str):
                            final_species_hash_map[species_str].append(species_id)
                        else:
                            final_species_hash_map[species_str] = [species_id]

                for unique_species_str in final_species_hash_map:
                    if len(final_species_hash_map[unique_species_str]) > 1:
                        comp_dict = {}
                        uni_sp = model.getElementBySId(final_species_hash_map[unique_species_str][0])
                        for species_id in final_species_hash_map[unique_species_str]:
                            species = model.getElementBySId(species_id)
                            check(species,'retreiving species by id in shareSpecies if case')
                            if species.isSetUnits():
                                if species.getUnits() != uni_sp.getUnits():
                                    warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                                    break
                            if species.getConstant() != uni_sp.getConstant():
                                warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                                break
                            if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                                warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                                break
                            mod = species.getModel()
                            compartment = mod.getElementBySId(species.getCompartment())
                            species_comp = compartment.getName()
                            if comp_dict.get(species_comp):
                                comp_dict[species_comp].append(species)
                            else:
                                comp_dict[species_comp] = [species]
                        for species_comp in comp_dict:
                            if len(comp_dict[species_comp]) > 1:
                                # multiple compartments for a species
                                allids = self.getAllIds()
                                trans = SetIdFromNames(allids)
                                uni_sp = comp_dict[species_comp][0]
                                count = 0
                                total_size = 0
                                ssys_size = 0
                                cumulative_amount = 0
                                for species in comp_dict[species_comp]:
                                    # check(model.addSpecies(species),'adding species in shareSpecies if case')
                                    #remove duplicates
                                    spe_id = species.getId()
                                    mod = species.getModel()
                                    ssys_size = mod.getElementBySId(species.getCompartment()).getSize()
                                    cumulative_amount += species.getInitialAmount() * ssys_size
                                    total_size += ssys_size 
                                    oldid = spe_id
                                    check(oldid, 'retreiving oldid in shareSpecies if case')
                                    newid = trans.getValidIdForName(uni_sp.getId()) + '_shared'
                                    self.renameSId(oldid, newid)
                                    if count >= 1 :
                                        check(model.removeSpecies(newid), 'removing duplicate species in shareSpecies if case')
                                        warnings.warn('Removing duplicates of species {0} in the same compartment'.format(newid)) if verbose else None
                                        id_added_species = newid
                                    count += 1
                                if mode == 'volume':
                                    check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'setting initial cumulative amount in combineSpecies if case in volume mode')
        else:
            final_species_hash_map = {}
            flag = 0
            for subsystem in ListOfSubsystems:
                if subsystem.isSetSystem():
                    flag += 1
            if flag == len(ListOfSubsystems):
                system_set = True
            else:
                system_set = False
            if system_set:
                total_size =  ListOfSubsystems[0].getSystem().getSize()
            else:
                total_size = 0
                for subsystem in ListOfSubsystems:
                    total_size +=  subsystem.getSBMLDocument().getModel().getCompartment(0).getSize()

            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                if not ListOfResources:
                    for species in sub_model.getListOfSpecies():
                        check(model.addSpecies(species), 'adding species to the model when ListOfResources is empty in else case of shareSpecies')
                        if mode == 'volume':
                            ssys_size = sub_model.getElementBySId(species.getCompartment()).getSize()
                            cumulative_amount = (species.getInitialAmount())*ssys_size
                            spe = model.getSpecies(species.getId())
                            check(spe.setInitialAmount(cumulative_amount/total_size), 'setting initial amount to cumulative amount in else case of shareSpecies, ListOfResources is empty')
                else:
                    for compartment in sub_model.getListOfCompartments():
                        # Finding duplicate species by name and compartment
                        species_hash_map = {}
                        for species in sub_model.getListOfSpecies():
                            comp = sub_model.getElementBySId(species.getCompartment())
                            if not species.isSetName():
                                warnings.warn('Species {0} does not have a name attribute. It may be duplicated.'.format(species.getId())) if verbose else None
                                continue
                            elif species.getName() in ListOfResources and comp.getName() == compartment.getName():
                                # Maintain the dictionary for all species in the input subsystems by their name
                                species_hash_map[species.getName()] = species
                            else:
                                model.addSpecies(species)
                                if mode == 'volume':
                                    cumulative_amount = (species.getInitialAmount()) * (comp.getSize())
                                    spe = model.getSpecies(species.getId())
                                    check(spe.setInitialAmount(cumulative_amount/total_size), 'setting initial amount to species not shared in shareSpecies in volume mode, in else case')
                        for species_name in species_hash_map:
                            if final_species_hash_map.get(species_name):
                                #If the final hash map already has that species then append to
                                # the same instead of duplicating
                                final_species_hash_map[species_name].append(
                                    species_hash_map[species_name])
                            else:
                                # For all the species in the dictionary not already in the final
                                # hash map, save them to the final hash map dictionary.
                                final_species_hash_map[species_name] = [
                                    species_hash_map[species_name]]

 
            # Removing duplicate species in the same compartment
            for unique_species_name in final_species_hash_map:
                if len(final_species_hash_map[unique_species_name]) > 1: 
                    comp_dict = {}
                    uni_sp = final_species_hash_map[unique_species_name][0]
                    for species in final_species_hash_map[unique_species_name]:
                        if species.isSetUnits():
                            if species.getUnits() != uni_sp.getUnits():
                                warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                                break
                        if species.getConstant() != uni_sp.getConstant():
                            warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                            break
                        if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                            warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                            break
                        mod = species.getModel()
                        comp = mod.getElementBySId(species.getCompartment()) 
                        species_comp = comp.getName()
                        if comp_dict.get(species_comp):
                            comp_dict[species_comp].append(species)
                        else:
                            comp_dict[species_comp] = [species]
                    for species_comp in comp_dict:
                        if len(comp_dict[species_comp]) > 1:
                            allids = self.getAllIds()
                            trans = SetIdFromNames(allids)
                            uni_sp = comp_dict[species_comp][0]
                            count = 0
                            cumulative_amount = 0
                            ssys_size = 0
                            if not system_set:
                                total_size = 0
                            for species in comp_dict[species_comp]:
                                check(model.addSpecies(species),'add species in shareSpecies else case')
                                mod = species.getModel()
                                ssys_size = mod.getElementBySId(species.getCompartment()).getSize()
                                if not system_set:
                                    total_size += ssys_size
                                #remove duplicates now
                                cumulative_amount += (species.getInitialAmount()) * ssys_size
                                spe_id = species.getId()
                                oldid = spe_id
                                check(oldid, 'retreive oldid in combineSpecies else case')
                                newid = trans.getValidIdForName(uni_sp.getId()) + '_shared'
                                self.renameSId(oldid, newid)
                                if count >= 1:
                                    check(model.removeSpecies(newid),'remove duplicate species in shareSpecies' + newid)
                                    warnings.warn('Remove duplicate species {0} in the same compartment'.format(newid)) if verbose else None
                                else:
                                    id_added_species = newid
                                count += 1
                            if mode == 'volume':
                                check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'set initial amount to cumulative in volume mode in combineSpecies else case')
        return self.getSBMLDocument()

    def fixAnnotations(self, **kwargs):
        '''
            The following code is bioscrape specific (reading propensity types in reaction annotation)
            Will probably be all ignored if the SBML model is not generated by one of biocircuits tools 
            suite and hence there should not be any effect on other models.
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        for reaction in self.getSBMLDocument().getModel().getListOfReactions():
            #biocircuits tools suite specific code begin
            annotation_string = reaction.getAnnotationString()
            if 'PropensityType' in annotation_string:
                ind0 = annotation_string.find('<PropensityType>')
                ind1 = annotation_string.find('</PropensityType>')
                if ind0 == -1 or ind1 == -1:
                    reaction.unsetAnnotation()
                annotation_list = annotation_string[ind0:ind1].split(' ')
                key_vals = [(i.split('=')[0], i.split('=')[1]) for i in annotation_list if '=' in i]
                updated_annotation = '<PropensityType> '
                for (k, v) in key_vals:
                    if v in self.changeLog.keys():
                        v = self.changeLog[v]
                    updated_annotation += k + '=' + v + ' '
                updated_annotation += ' </PropensityType>'
                reaction.unsetAnnotation()
                reaction.setAnnotation(updated_annotation)
                if verbose:
                    warnings.warn('Annotated propensity updated to: ' + updated_annotation)
        return self.getSBMLDocument()


    def combineSpecies(self, ListOfSubsystems, ListOfResources, mode, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            if self.isSetSystem():
                total_size =  self.getSystem().getSize()
            else:
                total_size =  model.getCompartment(0).getSize()

            final_species_hash_map = {}
            for compartment in model.getListOfCompartments():
                species_hash_map = {}
                for species in model.getListOfSpecies():
                    comp = model.getElementBySId(species.getCompartment())
                    if species_hash_map.get(species.getId()):
                        raise ValueError('Multiple species with same identifier found. This is an invalid SBML.')
                    if species.isSetName() and comp.getName() == compartment.getName():
                        species_hash_map[species.getId()] = species.getName()
                    elif not species.isSetName():
                        warnings.warn('Species {0} does not have a name attribute. It might be duplicated.'.format(species.getId())) if verbose else None
                        continue
                for species_id, species_str in species_hash_map.items():
                    if final_species_hash_map.get(species_str):
                        final_species_hash_map[species_str].append(species_id)
                    else:
                        final_species_hash_map[species_str] = [species_id]

            for unique_species_str in final_species_hash_map:
                if len(final_species_hash_map[unique_species_str]) > 1:
                    comp_dict = {}
                    uni_sp = model.getElementBySId(final_species_hash_map[unique_species_str][0])
                    for species_id in final_species_hash_map[unique_species_str]:
                        species = model.getElementBySId(species_id)
                        mod = species.getModel()
                        comp = mod.getElementBySId(species.getCompartment())
                        check(species,'retreiving species by id in combineSubsystem virtual')
                        if species.isSetUnits():
                            if species.getUnits() != uni_sp.getUnits():
                                warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                                break
                        if species.getConstant() != uni_sp.getConstant():
                            warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                            break
                        if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                            warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                            break
                        species_comp = comp.getName()
                        if comp_dict.get(species_comp):
                            comp_dict[species_comp].append(species)
                        else:
                            comp_dict[species_comp] = [species]
                    for species_comp in comp_dict:
                        if len(comp_dict[species_comp]) > 1:
                            # multiple compartments for a species
                            allids = self.getAllIds()
                            trans = SetIdFromNames(allids)
                            uni_sp = comp_dict[species_comp][0]
                            count = 0
                            ssys_size = 0
                            total_size = 0
                            cumulative_amount = 0
                            for species in comp_dict[species_comp]:
                                spe_id = species.getId()
                                #remove duplicates
                                mod = species.getModel()
                                ssys_size = mod.getElementBySId(species.getCompartment()).getSize()
                                total_size += ssys_size 
                                cumulative_amount += species.getInitialAmount() * ssys_size
                                oldid = spe_id
                                check(oldid, 'retreiving oldid in combineSpecies if case')
                                if species.getName() in ListOfResources:
                                    newid = trans.getValidIdForName(uni_sp.getId()) + '_shared'
                                else:
                                    newid = trans.getValidIdForName(uni_sp.getId()) + '_combined'

                                self.renameSId(oldid, newid)
                                if count >= 1 :
                                    check(model.removeSpecies(newid), 'removing duplicate species in combineSpecies if case')
                                    warnings.warn('Removing duplicates of species {0} in the same compartment'.format(newid)) if verbose else None
                                    id_added_species = newid
                                count += 1
                            if mode == 'volume':
                                check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'setting initial cumulative amount in combineSpecies if case in volume mode')

        else:
            final_species_hash_map = {}
            flag = 0
            for subsystem in ListOfSubsystems:
                if subsystem.isSetSystem():
                    flag += 1
            if flag == len(ListOfSubsystems):
                system_set = True
            else:
                system_set = False
            if system_set:
                total_size =  ListOfSubsystems[0].getSystem().getSize()
            else:
                total_size = 0
                for subsystem in ListOfSubsystems:
                    total_size +=  subsystem.getSBMLDocument().getModel().getCompartment(0).getSize()

            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                for compartment in sub_model.getListOfCompartments():
                    # Finding duplicate species by name and compartment
                    species_hash_map = {}
                    for species in sub_model.getListOfSpecies():
                        comp = sub_model.getElementBySId(species.getCompartment())
                        if not species.isSetName():
                            warnings.warn('Species {0} does not have a name attribute. It may be duplicated.'.format(species.getId())) if verbose else None
                            continue
                        elif comp.getName() == compartment.getName():
                            # Maintain the dictionary for all species in the input subsystems by their name
                            species_hash_map[species.getName()] = species
                        else:
                            # model.addSpecies(species)
                            if mode =='volume': 
                                cumulative_amount = (species.getInitialAmount()) * (comp.getSize())
                                check(species.setInitialAmount(cumulative_amount/total_size), 'setting initial amount to species in volume mode, combinespecies if case')
                    for species_name in species_hash_map:
                        if final_species_hash_map.get(species_name):
                            #If the final hash map already has that species then append to
                            # the same instead of duplicating
                            final_species_hash_map[species_name].append(
                                species_hash_map[species_name])
                        else:
                            # For all the species in the dictionary not already in the final
                            # hash map, save them to the final hash map dictionary.
                            final_species_hash_map[species_name] = [
                                species_hash_map[species_name]]
            # Removing duplicate species in the same compartment
            for unique_species_name in final_species_hash_map:
                if len(final_species_hash_map[unique_species_name]) > 1: 
                    comp_dict = {}
                    uni_sp = final_species_hash_map[unique_species_name][0]
                    for species in final_species_hash_map[unique_species_name]:
                        mod = species.getModel()
                        comp = mod.getElementBySId(species.getCompartment())
                        if species.isSetUnits():
                            if species.getUnits() != uni_sp.getUnits():
                                warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                                break
                        if species.getConstant() != uni_sp.getConstant():
                            warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                            break
                        if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                            warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId())) if verbose else None
                            break
                        species_comp = comp.getName()
                        if comp_dict.get(species_comp):
                            comp_dict[species_comp].append(species)
                        else:
                            comp_dict[species_comp] = [species]

                    for species_comp in comp_dict:
                        if len(comp_dict[species_comp]) > 1:
                            allids = self.getAllIds()
                            trans = SetIdFromNames(allids)
                            uni_sp = comp_dict[species_comp][0]
                            count = 0
                            cumulative_amount = 0
                            ssys_size = 0 
                            for species in comp_dict[species_comp]:
                                model.addSpecies(species)
                                #remove duplicates now
                                spe_id = species.getId()
                                mod = species.getModel()
                                ssys_size = mod.getElementBySId(species.getCompartment()).getSize()
                                if not system_set:
                                    total_size += ssys_size
                                cumulative_amount += (species.getInitialAmount()) * ssys_size
                                oldid = spe_id
                                check(oldid, 'retreiving oldid in combineSpecies else case')
                                if species.getName() in ListOfResources:
                                    newid = trans.getValidIdForName(uni_sp.getId()) + '_shared'
                                else:
                                    newid = trans.getValidIdForName(uni_sp.getId()) + '_combined'
                                self.renameSId(oldid, newid)
                                if count >= 1:
                                    check(model.removeSpecies(newid),'remove duplicate species - ' + newid)
                                    warnings.warn('Removing duplicate species {0} in the same compartment'.format(newid)) if verbose else None
                                else:
                                    id_added_species = newid
                                count += 1
                            if mode == 'volume':
                                check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'setting initial amount to cumulative in volume mode in combineSpecies else case')
                else:
                    # add cumulative amount for volume mode here (only needs to be done when combining inside a system)
                    for species in final_species_hash_map[unique_species_name]:
                        if mode == 'volume' and system_set:
                            spe = model.getSpecies(species.getId())
                            cumulative_amount = (species.getInitialAmount()) * (species.getModel().getCompartment(0).getSize())
                            check(spe.setInitialAmount(cumulative_amount/total_size), 'setting amount to species in combineSpecies, volume mode, else case, species that are not combined')
        return self.getSBMLDocument()

    def combineParameters(self, ListOfSubsystems, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            parameter_hash_map = {}
            final_parameter_hash_map = {}
            for parameter in model.getListOfParameters():
                if parameter_hash_map.get(parameter.getId()):
                    raise ValueError('Multiple parameters with same identifier found. This is an invalid SBML.')
                if not parameter.isSetName():
                    warnings.warn('Parameter with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(parameter.getId())) if verbose else None
                    continue 
                parameter_hash_map[parameter.getId()] = parameter.getName()
            for parameter_id, parameter_str in parameter_hash_map.items():
                if final_parameter_hash_map.get(parameter_str):
                    final_parameter_hash_map[parameter_str].append(parameter_id)
                else:
                    final_parameter_hash_map[parameter_str] = [parameter_id]
            for unique_parameter_str in final_parameter_hash_map:
                if len(final_parameter_hash_map[unique_parameter_str]) > 1:
                    uni_param = model.getElementBySId(final_parameter_hash_map[unique_parameter_str][0])
                    count = 0
                    for sp_id in final_parameter_hash_map[unique_parameter_str]:
                        i = model.getElementBySId(sp_id)
                        if i.isSetUnits():
                            if i.getUnits() != uni_param.getUnits():
                                warnings.warn('Parameters with same name have different units. They will not be combined. For {0} parameter id.'.format(i.getId())) if verbose else None
                                break
                        if i.getConstant() != uni_param.getConstant():
                            warnings.warn('Parameters with same name have different constant attribute. They will not be combined. For {0} parameter id.'.format(i.getId())) if verbose else None
                            break
                        model.addParameter(i)
                        oldid = i.getId()
                        check(oldid, 'retreiving oldid in combineParameters')
                        allids = self.getAllIds()
                        trans = SetIdFromNames(allids)
                        newid = trans.getValidIdForName(i.getName()) + '_combined'
                        self.renameSId(oldid, newid)
                        if count >= 1:
                            check(model.removeParameter(newid),'removing parameter in combineParameters')
                            warnings.warn('Removing duplicate parameter {0} from the combined model'.format(i.getName())) if verbose else None
                        count += 1  
        else:  
            final_parameter_hash_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                parameter_hash_map = {}
                for parameter in sub_model.getListOfParameters():
                    # Maintain the dictionary for all parameter in the subsystems by their name and parameter they are in
                    if not parameter.isSetName():
                        warnings.warn('Parameter with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(parameter.getId())) if verbose else None
                        continue 
                    parameter_hash_map[parameter.getName()] = parameter 
                for parameter_name in parameter_hash_map:
                    if final_parameter_hash_map.get(parameter_name):
                        #If the final hash map already has that parameter then append to
                        # the same instead of duplicating
                        final_parameter_hash_map[parameter_name].append(
                            parameter_hash_map[parameter_name])
                    else:
                        # For all the parameter in the dictionary not already in the final
                        # hash map, save them to the final hash map dictionary.
                        final_parameter_hash_map[parameter_name] = [
                            parameter_hash_map[parameter_name]]
        
            # Removing duplicate parameters and adding only one
            for param_str in final_parameter_hash_map:
                if len(final_parameter_hash_map[param_str]) > 1:
                    uni_param = final_parameter_hash_map[param_str][0]
                    allids = self.getAllIds()
                    trans = SetIdFromNames(allids)
                    newid = trans.getValidIdForName(uni_param.getName()+ '_combined')
                    count = 0
                    for i in final_parameter_hash_map[param_str]:
                        model.addParameter(i)
                        oldid = i.getId()
                        check(oldid, 'retreiving oldid in combineParameters')
                        if i.isSetValue():
                            if i.getValue() != uni_param.getValue():
                                warnings.warn('Parameters found with same name but different values. They will not be combined together.') if verbose else None
                                break 
                        if i.isSetUnits():
                            if i.getUnits() != uni_param.getUnits():
                                warnings.warn('Parameters found with same name but different units. They will not be combined together.') if verbose else None
                                break 
                        # Constant attribute is mandatory for valid SBML parameter
                        if i.getConstant() != uni_param.getConstant():
                            warnings.warn('Parameters found with same name but different units. They will not be combined together.') if verbose else None
                            break 
                        # newid = i.getName() + '_combined'
                        self.renameSId(oldid, newid)
                        if count >= 1:
                            check(model.removeParameter(newid), 'removing parameter in combineParameters')
                            warnings.warn('Removing duplicate parameter {0} from the combined model'.format(i.getName())) if verbose else None
                        count += 1
        return self.getSBMLDocument()   

    def combineCompartments(self, ListOfSubsystems, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            compartment_hash_map = {}
            final_compartment_hash_map = {}
            for compartment in model.getListOfCompartments():
                if compartment_hash_map.get(compartment.getId()):
                    raise ValueError('Multiple compartments with same identifier found. This is an invalid SBML.')
                if not compartment.isSetName():
                    warnings.warn('Compartment with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(compartment.getId())) if verbose else None
                    continue 
                compartment_hash_map[compartment.getId()] = compartment.getName()
            for compartment_id, compartment_str in compartment_hash_map.items():
                if final_compartment_hash_map.get(compartment_str):
                    final_compartment_hash_map[compartment_str].append(compartment_id)
                else:
                    final_compartment_hash_map[compartment_str] = [compartment_id]
            for unique_compartment_str in final_compartment_hash_map:
                if len(final_compartment_hash_map[unique_compartment_str]) > 1:
                    uni_comp = model.getElementBySId(final_compartment_hash_map[unique_compartment_str][0])
                    count = 0
                    for sp_id in final_compartment_hash_map[unique_compartment_str]:
                        i = model.getElementBySId(sp_id)
                        oldid = i.getId()
                        check(oldid, 'retreiving oldid in combineCompartments')
                        allids = self.getAllIds()
                        trans = SetIdFromNames(allids)
                        newid = trans.getValidIdForName(unique_compartment_str) + '_combined'
                        model.addCompartment(i)
                        if count >= 1:
                            self.renameSId(oldid, newid)
                            check(model.removeCompartment(newid),'removing compartment in combineCompartments')
                        count += 1  
                    self.renameSId(uni_comp.getId(), newid)
        else:  
            final_compartment_hash_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                compartment_hash_map = {}
                for compartment in sub_model.getListOfCompartments():
                    # Maintain the dictionary for all compartment in the subsystems by their name and compartment they are in
                    if not compartment.isSetName():
                        warnings.warn('Compartment with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(compartment.getId())) if verbose else None
                        continue
                    compartment_hash_map[compartment.getName()] = compartment
                for compartment_name in compartment_hash_map:
                    if final_compartment_hash_map.get(compartment_name):
                        #If the final hash map already has that compartment then append to
                        # the same instead of duplicating
                        final_compartment_hash_map[compartment_name].append(
                            compartment_hash_map[compartment_name])
                    else:
                        # For all the compartment in the dictionary not already in the final
                        # hash map, save them to the final hash map dictionary.
                        final_compartment_hash_map[compartment_name] = [
                            compartment_hash_map[compartment_name]]
        
            # Removing duplicate compartments and adding only one
            for comp_str in final_compartment_hash_map:
                if len(final_compartment_hash_map[comp_str]) > 1:
                    uni_comp = final_compartment_hash_map[comp_str][0]
                    count = 0
                    for ind in range(0,len(final_compartment_hash_map[comp_str])):
                        i = final_compartment_hash_map[comp_str][ind]
                        if i.getSize() != uni_comp.getSize():
                            warnings.warn('Compartments found with same name but different sizes. They will not be combined together.') if verbose else None
                            break 
                        model.addCompartment(i)
                        allids = self.getAllIds()
                        trans = SetIdFromNames(allids)
                        newid = trans.getValidIdForName(uni_comp.getId()+'_combined')
                        if count >= 1:
                            self.renameSId(i.getId(), newid)
                            # check(model.removeCompartment(newid),'removing compartment in combineCompartments')
                        count += 1
                    self.renameSId(uni_comp.getId(), newid)
        compartment_id = model.getCompartment(0).getId()
        compartment_name = model.getCompartment(0).getName()
        count = 0
        for compartment in model.getListOfCompartments():
            if compartment.getId() == compartment_id and count >= 1:
                warnings.warn('Multiple compartments with same identifier found. Removing...') if verbose else None
                model.removeCompartment(compartment.getId())
            count += 1
        return self.getSBMLDocument()
    
    def combineReactions(self, ListOfSubsystems, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            sub_model = self.getSBMLDocument().getModel()
            # Finding duplicate reactions by the reaction string, and id's of species they refer to
            reaction_map = {}
            final_reaction_map = {}
            for reaction in sub_model.getListOfReactions():
                rc1_list = reaction.getListOfReactants()
                pt1_list = reaction.getListOfProducts()
                rStr = ''
                for i in range(len(rc1_list)):
                    sref = rc1_list[i]
                    species = sub_model.getElementBySId(sref.getSpecies())
                    if species.isSetName():
                        rStr += species.getName()
                    else:
                        warnings.warn('Species {0} does not have a name attribute. Reactions might be duplicated.'.format(species.getId())) if verbose else None
                        break
                    if i < (len(rc1_list) - 1):
                        rStr += ' + '
                if reaction.getReversible():
                    rStr += ' <-> '
                else:
                    rStr += ' --> '
                for i in range(len(pt1_list)):
                    sref = pt1_list[i]
                    species = sub_model.getElementBySId(sref.getSpecies())
                    if species.isSetName():
                        rStr += species.getName()
                    else:
                        warnings.warn('Species {0} does not have a name attribute. Reactions might be duplicated.'.format(species.getId())) if verbose else None
                        break
                    if i < (len(pt1_list) - 1):
                        rStr += ' + '

                if reaction_map.get(reaction.getId()):
                    raise ValueError('Multiple reactions with same identifier {0} found. Invalid SBML.'.format(reaction.getId()))

                if reaction.isSetName():
                    reaction_map[reaction.getId()] = rStr + reaction.getName()
                else:
                    reaction_map[reaction.getId()] = rStr 

            for rxn_id, rStr in reaction_map.items():
                if final_reaction_map.get(rStr):
                    final_reaction_map[rStr].append(rxn_id)
                else:
                    final_reaction_map[rStr] = [rxn_id]

            # Removing duplicate reactions and adding only one
            allids = self.getAllIds()
            trans = SetIdFromNames(allids)
            for rxn_str in final_reaction_map:
                if len(final_reaction_map[rxn_str]) > 1:
                    uni_rxn = sub_model.getElementBySId(final_reaction_map[rxn_str][0])
                    for ind in range(0,len(final_reaction_map[rxn_str])):
                        i = sub_model.getElementBySId(final_reaction_map[rxn_str][ind])
                        check(i,'retreiving species by id in removing duplicate reactions')
                        if ind > 0:
                            self.renameSId(i.getId(),trans.getValidIdForName(uni_rxn.getId()+'_combined'))
                            status = sub_model.removeReaction(i.getId())
                            if status != None:
                                warnings.warn('Removing all duplicates of the reaction {0} in the combined model. Check the reaction rate to ensure model is consistent.'.format(rxn_str)) if verbose else None
                    self.renameSId(uni_rxn.getId(),trans.getValidIdForName(uni_rxn.getId()+'_combined'))

        else:
            final_reaction_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                # Finding duplicate reactions by the reaction string, and id's of species they refer to
                reaction_map = {}
                for reaction in sub_model.getListOfReactions():
                    rc1_list = reaction.getListOfReactants()
                    pt1_list = reaction.getListOfProducts()
                    rStr = ''
                    for i in range(len(rc1_list)):
                        sref = rc1_list[i]
                        species = sub_model.getElementBySId(sref.getSpecies())
                        if species.isSetName():
                            rStr += species.getName()
                        else:
                            warnings.warn('Species {0} does not have a name attribute. Reactions may be duplicated.'.format(species.getId())) if verbose else None
                            break

                        if i < (len(rc1_list) - 1):
                            rStr += ' + '
                    if reaction.getReversible():
                        rStr += ' <-> '
                    else:
                        rStr += ' --> '
                    for i in range(len(pt1_list)):
                        sref = pt1_list[i]
                        species = sub_model.getElementBySId(sref.getSpecies())
                        if species.isSetName():
                            rStr += species.getName()
                        else:
                            warnings.warn('Species {0} does not have a name attribute. Reactions may be duplicated.'.format(species.getId())) if verbose else None
                            break

                        if i < (len(pt1_list) - 1):
                            rStr += ' + '

                    if reaction.isSetName():
                        reaction_map[rStr + reaction.getName()] = reaction
                    else:
                        reaction_map[rStr] = reaction

                for rStr in reaction_map:
                    if final_reaction_map.get(rStr):
                        final_reaction_map[rStr].append(reaction_map[rStr])
                    else:
                        final_reaction_map[rStr] = [reaction_map[rStr]]
            # Removing duplicate reactions and adding only one
            allids = self.getAllIds()
            trans = SetIdFromNames(allids)
            for rxn_str in final_reaction_map:
                if len(final_reaction_map[rxn_str]) > 1:
                    uni_rxn = final_reaction_map[rxn_str][0]
                    for ind in range(0,len(final_reaction_map[rxn_str])):
                        i = final_reaction_map[rxn_str][ind]
                        if ind > 0:
                            status = model.removeReaction(i.getId())
                            self.renameSId(i.getId(), trans.getValidIdForName(uni_rxn.getId() + '_combined'))
                            if status != None:
                                warnings.warn('Removing all duplicates of the reaction {0} in the combined model. Check the reaction rate to ensure model is consistent.'.format(rxn_str)) if verbose else None
                    self.renameSId(uni_rxn.getId(), trans.getValidIdForName(uni_rxn.getId() + '_combined'))
        
         
        return self.getSBMLDocument()

    def combineUnitDefinitions(self, ListOfSubsystems, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            unit_definition_hash_map = {}
            final_unit_definition_hash_map = {}
            for unit_definition in model.getListOfUnitDefinitions():
                if unit_definition_hash_map.get(unit_definition.getId()):
                    raise ValueError('Multiple unit_definitions with same identifier found. This is an invalid SBML.')
                if not unit_definition.isSetName():
                    warnings.warn('UnitDefinition with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(unit_definition.getId())) if verbose else None
                    continue 
                unit_definition_hash_map[unit_definition.getId()] = unit_definition.getName()
            for unit_definition_id, unit_definition_str in unit_definition_hash_map.items():
                if final_unit_definition_hash_map.get(unit_definition_str):
                    final_unit_definition_hash_map[unit_definition_str].append(unit_definition_id)
                else:
                    final_unit_definition_hash_map[unit_definition_str] = [unit_definition_id]
            allids = self.getAllIds()
            trans = SetIdFromNames(allids)
            for unique_unit_definition_str in final_unit_definition_hash_map:
                if len(final_unit_definition_hash_map[unique_unit_definition_str]) > 1:
                    uni_uni_def = model.getElementBySId(final_unit_definition_hash_map[unique_unit_definition_str][0])
                    count = 0
                    for sp_id in final_unit_definition_hash_map[unique_unit_definition_str]:
                        i = model.getElementBySId(sp_id)
                        if count >= 1:
                            self.renameSId(i.getId(), trans.getValidIdForName(uni_uni_def.getId()+'_combined'))
                            check(model.removeUnitDefinition(i.getId()),'removing unit_definition in combineUnitDefinitions')
                            warnings.warn('Removing duplicate UnitDefinition of identifier {0}. Check the definition to ensure consistency.'.format(sp_id)) if verbose else None
                        count += 1  
                    self.renameSId(uni_uni_def.getId(), trans.getValidIdForName(uni_uni_def.getId()+'_combined'))
        else:  
            final_unit_definition_hash_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                unit_definition_hash_map = {}
                for unit_definition in sub_model.getListOfUnitDefinitions():
                    # Maintain the dictionary for all unit_definition in the subsystems by their name and unit_definition they are in
                    if not unit_definition.isSetName():
                        warnings.warn('UnitDefinition with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(unit_definition.getId())) if verbose else None
                        continue
                    unit_definition_hash_map[unit_definition.getName()] = unit_definition
                for unit_definition_name in unit_definition_hash_map:
                    if final_unit_definition_hash_map.get(unit_definition_name):
                        #If the final hash map already has that unit_definition then append to
                        # the same instead of duplicating
                        final_unit_definition_hash_map[unit_definition_name].append(
                            unit_definition_hash_map[unit_definition_name])
                    else:
                        # For all the unit_definition in the dictionary not already in the final
                        # hash map, save them to the final hash map dictionary.
                        final_unit_definition_hash_map[unit_definition_name] = [
                            unit_definition_hash_map[unit_definition_name]]
        
            # Removing duplicate unit_definitions and adding only one
            for uni_def_str in final_unit_definition_hash_map:
                if len(final_unit_definition_hash_map[uni_def_str]) > 1:
                    uni_uni_def = final_unit_definition_hash_map[uni_def_str][0]
                    for ind in range(0,len(final_unit_definition_hash_map[uni_def_str])):
                        i = final_unit_definition_hash_map[uni_def_str][ind]
                        model.addUnitDefinition(i)
                        allids = self.getAllIds()
                        trans = SetIdFromNames(allids)
                        if ind > 0:
                            self.renameSId(i.getId(), trans.getValidIdForName(uni_uni_def.getId()+'_combined'))
                            status = model.removeUnitDefinition(uni_uni_def.getId() + '_combined')
                            if status != None:
                                warnings.warn('Removing duplicate unit_definition {0} in the combined model. Check other attributes to ensure consistency.'.format(uni_def_str)) if verbose else None
                    self.renameSId(uni_uni_def.getId(), trans.getValidIdForName(uni_uni_def.getId()+'_combined'))
        return self.getSBMLDocument()
   
    def combineEvents(self, ListOfSubsystems, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            event_hash_map = {}
            final_event_hash_map = {}
            for event in model.getListOfEvents():
                if event_hash_map.get(event.getId()):
                    raise ValueError('Multiple events with same identifier found. This is an invalid SBML.')
                if not event.isSetName():
                    warnings.warn('Event with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(event.getId())) if verbose else None
                    continue 
                event_hash_map[event.getId()] = event.getName()
            for event_id, event_str in event_hash_map.items():
                if final_event_hash_map.get(event_str):
                    final_event_hash_map[event_str].append(event_id)
                else:
                    final_event_hash_map[event_str] = [event_id]
            allids = self.getAllIds()
            trans = SetIdFromNames(allids)
            for unique_event_str in final_event_hash_map:
                if len(final_event_hash_map[unique_event_str]) > 1:
                    uni_eve = model.getElementBySId(final_event_hash_map[unique_event_str][0])
                    count = 0
                    for sp_id in final_event_hash_map[unique_event_str]:
                        i = model.getElementBySId(sp_id)
                        if count >= 1:
                            self.renameSId(i.getId(), trans.getValidIdForName(uni_eve.getId()+'_combined'))
                            check(model.removeEvent(i.getId()),'removing event in combineEvents')
                            warnings.warn('Removing duplicate event {0} in the combined model. Check other attributes to ensure consistency.'.format(unique_event_str)) if verbose else None
                        count += 1  
                    self.renameSId(uni_eve.getId(), trans.getValidIdForName(uni_eve.getId()+'_combined'))
        else:  
            final_event_hash_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                event_hash_map = {}
                for event in sub_model.getListOfEvents():
                    # Maintain the dictionary for all event in the subsystems by their name and event they are in
                    if not event.isSetName():
                        warnings.warn('Event with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(event.getId())) if verbose else None
                        continue
                    event_hash_map[event.getName()] = event
                for event_name in event_hash_map:
                    if final_event_hash_map.get(event_name):
                        #If the final hash map already has that event then append to
                        # the same instead of duplicating
                        final_event_hash_map[event_name].append(
                            event_hash_map[event_name])
                    else:
                        # For all the event in the dictionary not already in the final
                        # hash map, save them to the final hash map dictionary.
                        final_event_hash_map[event_name] = [
                            event_hash_map[event_name]]
        
            # Removing duplicate events and adding only one
            for eve_str in final_event_hash_map:
                if len(final_event_hash_map[eve_str]) > 1:
                    uni_eve = final_event_hash_map[eve_str][0]
                    for ind in range(0,len(final_event_hash_map[eve_str])):
                        i = final_event_hash_map[eve_str][ind]
                        model.addEvent(i)
                        allids = self.getAllIds()
                        trans = SetIdFromNames(allids)
                        if ind > 0:
                            self.renameSId(i.getId(), trans.getValidIdForName(uni_eve.getId()+'_combined'))
                            status = model.removeEvent(uni_eve.getId() + '_combined')
                            if status != None:
                                warnings.warn('Removing all duplicates of the event {0} in the combined model. Check other attributes to ensure consistency.'.format(eve_str)) if verbose else None
                    self.renameSId(uni_eve.getId(), trans.getValidIdForName(uni_eve.getId()+'_combined'))

        return self.getSBMLDocument()
    
    def combineFunctionDefinitions(self, ListOfSubsystems, **kwargs):
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            function_definition_hash_map = {}
            final_function_definition_hash_map = {}
            for function_definition in model.getListOfFunctionDefinitions():
                if function_definition_hash_map.get(function_definition.getId()):
                    raise ValueError('Multiple function_definitions with same identifier found. This is an invalid SBML.')
                if not function_definition.isSetName():
                    warnings.warn('FunctionDefinition with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(function_definition.getId())) if verbose else None
                    continue 
                function_definition_hash_map[function_definition.getId()] = function_definition.getName()
            for function_definition_id, function_definition_str in function_definition_hash_map.items():
                if final_function_definition_hash_map.get(function_definition_str):
                    final_function_definition_hash_map[function_definition_str].append(function_definition_id)
                else:
                    final_function_definition_hash_map[function_definition_str] = [function_definition_id]
            allids = self.getAllIds()
            trans = SetIdFromNames(allids)
            for unique_function_definition_str in final_function_definition_hash_map:
                if len(final_function_definition_hash_map[unique_function_definition_str]) > 1:
                    count = 0
                    uni_func_def = model.getElementBySId(final_function_definition_hash_map[unique_function_definition_str][0])
                    for sp_id in final_function_definition_hash_map[unique_function_definition_str]:
                        i = model.getElementBySId(sp_id)
                        if count >= 1:
                            self.renameSId(i.getId(), trans.getValidIdForName(uni_func_def.getId()+'_combined'))
                            check(model.removeFunctionDefinition(i.getId()),'removing function_definition in combineFunctionDefinitions')
                            warnings.warn('Removing all duplicates of the function definition {0} in the combined model. Check other attributes to ensure consistency.'.format(unique_function_definition_str)) if verbose else None
                        count += 1  
                    self.renameSId(uni_func_def.getId(), trans.getValidIdForName(uni_func_def.getId()+'_combined'))
        else:  
            final_function_definition_hash_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                function_definition_hash_map = {}
                for function_definition in sub_model.getListOfFunctionDefinitions():
                    # Maintain the dictionary for all function_definition in the subsystems by their name and function_definition they are in
                    if not function_definition.isSetName():
                        warnings.warn('FunctionDefinition with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(function_definition.getId())) if verbose else None
                        continue
                    function_definition_hash_map[function_definition.getName()] = function_definition
                for function_definition_name in function_definition_hash_map:
                    if final_function_definition_hash_map.get(function_definition_name):
                        #If the final hash map already has that function_definition then append to
                        # the same instead of duplicating
                        final_function_definition_hash_map[function_definition_name].append(
                            function_definition_hash_map[function_definition_name])
                    else:
                        # For all the function_definition in the dictionary not already in the final
                        # hash map, save them to the final hash map dictionary.
                        final_function_definition_hash_map[function_definition_name] = [
                            function_definition_hash_map[function_definition_name]]
        
            # Removing duplicate function_definitions and adding only one
            for func_def_str in final_function_definition_hash_map:
                if len(final_function_definition_hash_map[func_def_str]) > 1:
                    uni_func_def = final_function_definition_hash_map[func_def_str][0]
                    for ind in range(0,len(final_function_definition_hash_map[func_def_str])):
                        i = final_function_definition_hash_map[func_def_str][ind]
                        model.addFunctionDefinition(i)
                        allids = self.getAllIds()
                        trans = SetIdFromNames(allids)
                        if ind > 0:
                            self.renameSId(i.getId(), trans.getValidIdForName(uni_func_def.getId()+'_combined'))
                            status = model.removeFunctionDefinition(uni_func_def.getId() + '_combined')
                            if status != None:
                                warnings.warn('Removing all duplicates of the function_definition {0} in the combined model. Check other attributes to ensure consistency.'.format(func_def_str)) if verbose else None
                    self.renameSId(uni_func_def.getId(), trans.getValidIdForName(uni_func_def.getId()+'_combined'))
        return self.getSBMLDocument()
   

    def getCompartmentsByName(self, name, **kwargs):
        ''' 
        Returns a list of compartments in the Subsystem with the given name
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        if type(name) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getSBMLDocument().getModel()
        check(model,'retreived model object')
        compartment_found =[]
        for compartment in model.getListOfCompartments():
            if compartment.isSetName():
                if compartment.getName() == name:
                    compartment_found.append(compartment)
            else:
                warnings.warn('Compartment {0} does not have a name attribute. It will not be returned in the list returned in this getCompartmentsByName call.'.format(compartment.getId())) if verbose else None
        if len(compartment_found) == 1:
            return compartment_found[0] 
        elif not compartment_found:
            raise ValueError('The compartment ' + name + ' not found.')
        else:
            warnings.warn('Multiple compartments with name ' + name + ' found. Returning a list') if verbose else None
            return compartment_found
 
    def setSpeciesAmount(self, inputSpecies, amount, compartment = ''):
        '''
        Sets amount of the species with the same name as inputSpecies argument equal to the amount argument
        Arguments may both be lists of same length.
        Returns the updated SBMLDocument object of this Subsystem.
        '''
        if compartment == '':
            if type(inputSpecies) is list:
                for inp_sp,amt in zip(inputSpecies,amount):
                    if type(inp_sp) is not str:
                        raise ValueError('All items of inputSpecies must be strings.')
                    sp = self.getSpeciesByName(inp_sp)
                    if type(sp) is list:
                        for s_i in sp:
                            if not isinstance(amt, (float,int)):
                                raise ValueError('The amount should be either a float or an int')
                            check(s_i.setInitialAmount(amt),'setting initial amount to 0 in connectSubsystem')
                    else:
                        if not isinstance(amt, (float,int)):
                            raise ValueError('The amount should be either a float or an int')
                        check(sp.setInitialAmount(amt),'setting initial amount')
            else:
                amt = amount
                if type(inputSpecies) is not str:
                    raise ValueError('inputSpecies argument must be a string or a list of strings.')
                sp = self.getSpeciesByName(inputSpecies)
                if type(sp) is list:
                    for s_i in sp:
                        if not isinstance(amt, (float,int)):
                            raise ValueError('The amount should be either a float or an int')
                        check(s_i.setInitialAmount(amount),'setting initial amount')
                else:
                    if not isinstance(amt, (float,int)):
                        raise ValueError('The amount should be either a float or an int')
                    check(sp.setInitialAmount(amount),'setting initial amount')
        else:
            model = self.getSBMLDocument().getModel()
            comp = self.getCompartmentsByName(compartment)
            if type(comp) is not list: 
                compartment = comp.getId()
                if type(inputSpecies) is str:
                    if not isinstance(amount, (int, float)) or type(compartment) is not str:
                        raise ValueError('Amount argument must be int or float and compartment argument must be string')
                    species = self.getSpeciesByName(inputSpecies)
                    if type(species) is not list:
                        if species.getCompartment() == compartment:
                            check(species.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                    elif type(species) is list:
                        for sp in species:
                            if sp.getCompartment() == compartment:
                                check(sp.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                
                elif type(inputSpecies) is list:
                    if len(inputSpecies) != len(amount):
                        raise ValueError('Length of species name list, amount list, and compartment must be equal')
                    for species in model.getListOfSpecies():
                        for sp,am in zip(inputSpecies,amount):
                            if type(sp) is not str or not isinstance(am, (float,int)) or type(compartment) is not str:
                                raise ValueError('inputSpecies list must have all string arguments, compartment must have all string arguments, and amount list must have all float or int')
                            if species.getName() == sp and species.getCompartment() == compartment:
                                check(sp.setInitialAmount(am),'setting initial amount in setSpeciesAmount list of species case with compartment')
            elif type(comp) is list:
                for c in comp:
                    compartment = c.getId()
                    if type(inputSpecies) is str:
                        if not isinstance(amount, (int, float)) or type(compartment) is not str:
                            raise ValueError('Amount argument must be int or float and compartment argument must be string')
                        species = self.getSpeciesByName(inputSpecies)
                        if type(species) is not list:
                            if species.getCompartment() == compartment:
                                check(species.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                        elif type(species) is list:
                            for sp in species:
                                if sp.getCompartment() == compartment:
                                    check(species.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                    
                    elif type(inputSpecies) is list:
                        if len(inputSpecies) != len(amount):
                            raise ValueError('Length of species name list, amount list, and compartment must be equal')
                        for species in model.getListOfSpecies():
                            for sp,am in zip(inputSpecies,amount):
                                if type(sp) is not str or not isinstance(am, (float,int)) or type(compartment) is not str:
                                    raise ValueError('inputSpecies list must have all string arguments, compartment must have all string arguments, and amount list must have all float or int')
                                if species.getName() == sp and species.getCompartment() == compartment:
                                    check(sp.setInitialAmount(am),'setting initial amount in setSpeciesAmount list of species case with compartment')
            else:
                raise ValueError('inputSpecies argument must be a string or a list of strings')
        return True

    # Fast attribute in reactions is now obsolete in SBML L3V2
    # def getFastReactions(self):
    #     '''
    #     Returns the reactions in the Subsystem with the attribute fast set as True
    #     '''
    #     allReactions = self.getSBMLDocument().getModel().getListOfReactions()
    #     fastReactions = []
    #     for reaction in allReactions:
    #         if reaction.isSetFast():
    #             if reaction.getFast() == True:
    #                 fastReactions.append(reaction)
    #     return fastReactions
    
    # def setFastReactions(self, indexList):
    #     ''' 
    #     The indexList is used to set the corresponding reactions as fast
    #     by setting their fast attribute to True. For example, 
    #     indexList = [0 5], sets the 1st and 4th reaction in the Subsystem model as fast
    #     Returns the updated SBMLDocument of this Subsystem
    #     '''
    #     model = self.getSBMLDocument().getModel()
    #     if type(indexList) is int:
    #         model.getReaction(indexList).setFast(True)
    #         return
    #     for index in indexList:
    #         model.getReaction(index-1).setFast(True)
    #     return self.getSBMLDocument()
        
    def writeSBML(self, filename):
        '''
        Writes current Subsystem to a SBML file (given by filename)
        '''
        return libsbml.writeSBML(self.getSBMLDocument(), filename)

    def getReversibleReactions(self):
        '''
        Returns the reactions in the Subsystem with the reversible attribute 
        set as True
        '''
        allReactions = self.getSBMLDocument().getModel().getListOfReactions()
        reversibleReactions = []
        for reaction in allReactions:
            if reaction.isSetReversible():
                if reaction.getReversible():
                    reversibleReactions.append(reaction)
        return reversibleReactions

    def setReversibleReactions(self, indexList, rateFormulaList = None): 
        ''' 
        The indexList is used to set the corresponding reactions as reversible
        by setting the reversible attribute of the reaction as True. 
        The rateFormulaList is a list of strings with math formula 
        for the new rates of the corresponding reactions that are 
        being set as reversible. Returns the new Subsystem object with changes made
        Returns the updated SBMLDocument object of this Subsystem
        '''
        if not indexList:
            print('The list of index for reactions is empty.')
            return

        newSubsystem = self.getSystem().createNewSubsystem()
        model_orig = self.getSBMLDocument().getModel()
        newSubsystem.getSBMLDocument().setModel(model_orig)
        model = newSubsystem.getSBMLDocument().getModel()
        if type(indexList) is int:
            rxn = model.getReaction(indexList)
            rxn.setReversible(True)
            if rateFormulaList:
                rxn.unsetKineticLaw()
                rxn_obj = SimpleReaction(rxn)
                formulaString = rateFormulaList
                math_ast = rxn_obj.createMath(formulaString)
                kinetic_law = rxn_obj.createRate(math_ast)
                rxn.setKineticLaw(kinetic_law)
            return newSubsystem.getSBMLDocument()

        for i in range(len(indexList)):
            index = indexList[i]
            rxn = model.getReaction(index)
            rxn.setReversible(True)
            if rateFormulaList:
                rxn.unsetKineticLaw()
                rxn_obj = SimpleReaction(rxn)
                formulaString = rateFormulaList[i]
                math_ast = rxn_obj.createMath(formulaString)
                kinetic_law = rxn_obj.createRate(math_ast)
                rxn.setKineticLaw(kinetic_law)
        return newSubsystem.getSBMLDocument()


    def unsetReversibleReactions(self, indexList, rateFormulaList = None):
        ''' The indexList is used to unset the corresponding reactions' reversible
        attribute by setting it as False. 
        The rateFormulaList is a list of strings with math formula 
        for the new rates of the corresponding reactions that are 
        being set as reversible. Returns the new Subsystem object with changes made
        Returns the updated SBMLDocument of this Subsystem
        '''
        if not indexList:
            print('The list of index for reactions is empty.')
            return
        newSubsystem = self.getSystem().createNewSubsystem()
        model_orig = self.getSBMLDocument().getModel()
        newSubsystem.getSBMLDocument().setModel(model_orig)
        model = newSubsystem.getSBMLDocument().getModel()
        if type(indexList) is int:
            rxn = model.getReaction(indexList)
            rxn.setReversible(False)
            if rateFormulaList:
                rxn.unsetKineticLaw()
                rxn_obj = SimpleReaction(rxn)
                formulaString = rateFormulaList
                math_ast = rxn_obj.createMath(formulaString)
                kinetic_law = rxn_obj.createRate(math_ast)
                rxn.setKineticLaw(kinetic_law)
            return newSubsystem

        for i in range(len(indexList)):
            index = indexList[i]
            rxn = model.getReaction(index)
            rxn.setReversible(False)
            if rateFormulaList:
                rxn.unsetKineticLaw()
                rxn_obj = SimpleReaction(rxn)
                formulaString = rateFormulaList[i]
                math_ast = rxn_obj.createMath(formulaString)
                kinetic_law = rxn_obj.createRate(math_ast)
                rxn.setKineticLaw(kinetic_law)
        return newSubsystem


    def simulateWithRoadRunner(self, initialTime, timepoints):
        ''' 
        To simulate a Subsystem without generating the plot. 
        Returns the data for all species which can be used to find out species indexes.
        NOTE : Needs RoadRunner package installed to simulate. 
        TODO : Finish implementation
        '''
        raise NotImplementedError

    def simulateWithBioscrape(self, timepoints, stochastic = False, **kwargs):
        ''' 
        To simulate a Subsystem without generating the plot. 
        Returns the data for all species and bioscrape model object which can be used to find out species indexes.
        NOTE : Needs bioscrape package installed to simulate. 
        '''
        try:
            import bioscrape
        except:
            raise ValueError('Package not installed : bioscrape, simulation options with bioscrape will not work.') 
        filename = 'temp.xml'
        libsbml.writeSBML(self.getSBMLDocument(), filename) 
        m = bioscrape.sbmlutil.import_sbml(filename, **kwargs)
        m.write_bioscrape_xml('temp_bs.xml')
        result = bioscrape.simulator.py_simulate_model(timepoints, Model = m, stochastic = stochastic)
        return result, m

    def plotWithBioscrape(self, ListOfSpeciesToPlot, timepoints, **kwargs):
        ''' 
        To plot a Subsystem model using bioscrape.
        NOTE : Needs bioscrape package installed to plot the Subsystem
        '''
        filename = 'temp.xml'
        libsbml.writeSBML(self.getSBMLDocument(), filename) 
        plotSbmlWithBioscrape(filename, timepoints[0], timepoints, ListOfSpeciesToPlot, **kwargs)
    
    def simulateVariableInputs(self,  ListOfInputs, ListOfListOfAmounts, ListOfSpeciesToPlot, timepoints, **kwargs):

        ''''
        Simulates the Subsystem model with the input species amounts varying 
        Mode : continue - Continues simulation from the simulation data of the previous simulation of the variable value 
        Mode : reset - Resets the data for each simulation before starting a new one with next variable value
        Compartment name : (Optional) Specify the compartment name of the input species 
        Uses bioscrape to simulate and plots the result
        Returns data, time vectors post simulation
        NOTE : Needs bioscrape package installed to simulate.
        '''
        verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
        # Default values
        Simulator = 'roadrunner'
        mode = 'reset'
        compartmentInput = ''
        compartmentSpecies = ''
        plotShow = 'single'
        compartmentSpecies = ''
        xlabel = 'Time'
        ylabel = 'Concentration'
        title = 'Varying ' + str(ListOfInputs) + ' over ' + str(ListOfListOfAmounts) + ' and plotting ' + str(ListOfSpeciesToPlot)
        lineWidth = 2
        sizeOfXLabels = 16
        sizeOfYLabels = 16
        legendFontSize = 12

        for key, value in kwargs.items():
            if key == 'mode':
                mode = value
            if key == 'compartmentInput':
                compartmentInput = value
            if key == 'compartmentSpecies':
                compartmentSpecies = value
            if key == 'plotShow':
                plotShow = value
            if key == 'xlabel':
                xlabel = value
            if key == 'ylabel':
                ylabel = value
            if key == 'title':
                title = value
            if key == 'lineWidth':
                lineWidth = value
            if key == 'sizeOfXLabels':
                sizeOfXLabels = value
            if key == 'sizeOfYLabels':
                sizeOfYLabels = value
            if key == 'legendFontSize':
                legendFontSize = value
            if key == 'Simulator':
                Simulator = value

        model = self.getSBMLDocument().getModel()
        simpleModel = SimpleModel(model)
        species_list = []
        final_result = {}
        total_time = {}
        if type(ListOfSpeciesToPlot) is str:
            ListOfSpeciesToPlot = [ListOfSpeciesToPlot]
        SpeciesToPlot = ListOfSpeciesToPlot[:]
        for i in range(len(ListOfSpeciesToPlot)):
            species_name = ListOfSpeciesToPlot[i]
            species = simpleModel.getSpeciesByName(species_name)
            if type(compartmentSpecies) is list:
                compartment = compartmentSpecies[i]
            elif type(compartmentSpecies) is str and compartmentSpecies != '':
                compartment = compartmentSpecies
            else:
                compartment = ''
            if type(species) is list:
                warnings.warn('There are multiple species with the name ' + species_name + 'Suffixed species will be plotted ') if verbose else None
                for species_i in species:
                    if model.getElementBySId(species_i.getCompartment()).getName() != compartment and compartment != '':
                       continue 
                    elif model.getElementBySId(species_i.getCompartment()).getName() == compartment and compartment != '':
                        species_list.append(species_i.getId())
                    else:
                        species_list.append(species_i.getId())
                    final_result[species_i.getId()] = []
                    if mode == 'continue':
                        total_time[species_i.getId()] = []
                    else:
                        total_time = timepoints
                key_ind = ListOfSpeciesToPlot.index(species_name)
                insert_new = []
                for j in range(len(species)-1):
                    insert_new.append(species_name + str(j+1))
                SpeciesToPlot[key_ind+1:key_ind+1] = insert_new 
            else:
                if model.getElementBySId(species.getCompartment()).getName() != compartment and compartment != '':
                    continue
                elif model.getElementBySId(species.getCompartment()).getName() == compartment and compartment != '':
                    species_list.append(species.getId())
                else:
                    species_list.append(species.getId())
                final_result[species.getId()] = []
                if mode == 'continue':
                    total_time[species.getId()] = []
                else:
                    total_time = timepoints
        initialTime = timepoints[0]
        t_end = timepoints[-1]
        points = len(timepoints)
        if (len(ListOfInputs) == 1) or (type(ListOfInputs) is str):
            t = initialTime
            if type(ListOfInputs) is list:
                input = ListOfInputs[0]
            elif type(ListOfInputs) is str:
                input = ListOfInputs
            else:
                raise ValueError('The input species argument should either be a list or a string')

            if compartmentInput != '':
                species_inp = simpleModel.getSpeciesByName(input, compartmentInput)
            else:
                species_inp = simpleModel.getSpeciesByName(input)
            if type(species_inp) is list:
                raise ValueError('Multiple input species found in the model for the input name given.')
            for amount in ListOfListOfAmounts:
                if type(amount) is list:
                    raise ValueError('For single input, the amounts should not be a list of list type')
            for j in range(len(ListOfListOfAmounts)):
                # Start simulating and create data
                amount = ListOfListOfAmounts[j]
                check(species_inp.setInitialAmount(amount), 'setting initial amount to input species')
                timep = np.linspace(t,t+t_end,points)
                data, m = self.simulateWithBioscrape(timep)
                for species_id in species_list:
                    sp_data = data[species_id]
                    t = timep[-1]
                    final_result[species_id].extend(sp_data)
                    if mode == 'continue':
                        total_time[species_id].extend(timep)
                if mode == 'continue':
                    for species in model.getListOfSpecies():
                        species.setInitialAmount(data[species.getId()][-1])

        elif type(ListOfInputs) is list:
            t = initialTime
            ListOfSpecies = []
            for i in range(len(ListOfListOfAmounts)):
                if (type(ListOfListOfAmounts[i]) is not list):
                    raise ValueError('For multiple inputs, all items of ListOfListOfAmounts argument should be list type')
            if type(compartmentInput) is list:
                if len(ListOfInputs) != len(compartmentInput):
                    raise ValueError('The length of compartmentInput argument when it is a list must be equal to the length of ListOfInputs argument')
            for i in range(len(ListOfInputs)):
                input = ListOfInputs[i]
                if compartmentInput != '':
                    compartment = compartmentInput[i]
                    species_inp = simpleModel.getSpeciesByName(input, compartment)
                else:
                    species_inp = simpleModel.getSpeciesByName(input)
                if type(species_inp) is list:
                    raise ValueError('Multiple input species found in the model.')
                ListOfSpecies.append(species_inp)
            for j in range(len(ListOfListOfAmounts)):
                if len(ListOfListOfAmounts[j]) != len(ListOfInputs):
                    raise ValueError('For multiple inputs, the length of each item in ListOfListOfAmounts must be same as the length of ListOfInputs')
                for amount, species in zip(ListOfListOfAmounts[j], ListOfSpecies):
                # Start simulating and create data
                    check(species.setInitialAmount(amount), 'setting initial amount to input species')
                timep = np.linspace(t,t+t_end,points)
                data, m = self.simulateWithBioscrape(timep)
                for species_id in species_list:
                    sp_data = data[species_id]
                    t = timep[-1]
                    final_result[species_id].extend(sp_data)
                    if mode == 'continue':
                        total_time[species_id].extend(timep)
                if mode == 'continue':
                    for species in model.getListOfSpecies():
                        species.setInitialAmount(data[species.getId()][-1])
        else:
            raise SyntaxError('ListOfInputs argument must be a list of strings or a string')

        pl = []
        for s in range(len(species_list)):
            finalData = []
            finalTime = []
            species_id = species_list[s]
            species = model.getSpecies(species_id)
            species_name = species.getName()
            if mode == 'continue':
                for i,j in zip(final_result[species_id], total_time[species_id]):
                    finalData.append(i)
                    finalTime.append(j)
            else:
                for i in final_result[species_id]:
                    finalData.append(i)
                finalTime = total_time

            if plotShow == 'single':
                for i in range(len(ListOfListOfAmounts)):
                    if mode == 'continue':
                        legend_str = species_name + ' for ' + str(ListOfListOfAmounts[i]) + ' ' + ylabel +  ' of ' + str(ListOfInputs)
                        p1, = plt.plot(finalTime, finalData, label = legend_str, linewidth = lineWidth)
                        # p1, = plt.plot(total_time[species_id], final_result[species_id], label = legend_str, linewidth = lineWidth)
                        pl.append(p1)
                    else:
                        t0 = i*len(finalTime)
                        tn = (i+1)*len(finalTime)
                        legend_str = species_name + ' for ' + str(ListOfListOfAmounts[i]) + ' ' + ylabel + ' of ' + str(ListOfInputs)
                        p1, = plt.plot(finalTime, finalData[t0:tn], label = legend_str, linewidth = lineWidth)
                        pl.append(p1)
            elif plotShow == 'matrix':
                for i in range(len(ListOfListOfAmounts)):
                    plt.subplot(np.ceil(len(ListOfListOfAmounts)/3),3,i+1)
                    if mode == 'continue':
                        legend_str = species_name + ' for ' + str(ListOfListOfAmounts[i]) + ' ' + ylabel +  ' of ' + str(ListOfInputs)
                        p1, = plt.plot(finalTime, finalData, label = legend_str, linewidth = lineWidth)
                        plt.legend(prop = {'size':legendFontSize})
                        mpl.rc('xtick', labelsize= sizeOfXLabels) 
                        mpl.rc('ytick', labelsize = sizeOfYLabels)
                        plt.xlabel(xlabel)
                        plt.ylabel(ylabel)
                        plt.title(title)
                    else:
                        t0 = i*len(finalTime)
                        tn = (i+1)*len(finalTime)
                        legend_str = species_name + ' for \n ' + str(ListOfListOfAmounts[i]) + ' ' + ylabel + ' of \n ' + str(ListOfInputs)
                        p1, = plt.plot(finalTime, finalData[t0:tn], label = legend_str, linewidth = lineWidth)
                        plt.legend(prop = {'size':legendFontSize})
                        mpl.rc('xtick', labelsize= sizeOfXLabels) 
                        mpl.rc('ytick', labelsize = sizeOfYLabels)
                        plt.xlabel(xlabel)
                        plt.ylabel(ylabel)
                        plt.title(title)
                plt.subplot_tool()
                plt.show()
        if plotShow == 'single':
            plt.legend(prop = {'size':legendFontSize})
            mpl.rc('xtick', labelsize= sizeOfXLabels) 
            mpl.rc('ytick', labelsize=sizeOfYLabels)
            plt.xlabel(xlabel)
            plt.ylabel(ylabel)
            plt.title(title)
            plt.show()
        return finalData, finalTime, plt

def plotSbmlWithBioscrape(ListOfFiles, initialTime, timepoints, ListOfListOfSpeciesToPlot, 
                        compartmentSpecies = '', xlabel = 'Time', ylabel = 'Concentration (AU)', 
                        lineWidth = 2, sizeOfXLabels = 14, sizeOfYLabels = 14, **kwargs):
    ''' 
    Plots the amounts of ListOfSpeciesToPlot in the given SBML files 
    starting at initialTime and for the timepoints given. 
    The other arguments for axes labels and sizes are optional.
    If a list of files is given, then corresponding list of list of species is 
    used to plot the corresponding list of species for each SBML model. 
    The same initialTime, timepoints and other arguments are used for all SBML files 
    NOTE : Needs bioscrape package installed to simulate SBML model.
    '''
    try:
        import bioscrape
    except:
        raise ValueError('Package not installed : bioscrape, simulation options with bioscrape will not work.') 
    verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
    mpl.rc('xtick', labelsize=sizeOfXLabels) 
    mpl.rc('ytick', labelsize=sizeOfYLabels)
    if type(ListOfFiles) is str:
        filename = ListOfFiles
        ListOfSpeciesToPlot = ListOfListOfSpeciesToPlot[:]
        doc = getFromXML(filename)
        model = doc.getModel()
        mod_obj = Subsystem(model.getSBMLDocument())
        m = bioscrape.sbmlutil.import_sbml(filename)
        species_ind = []
        SpeciesToPlot = ListOfSpeciesToPlot[:]
        for i in range(len(ListOfSpeciesToPlot)):
            species_name = ListOfSpeciesToPlot[i]
            species = mod_obj.getSpeciesByName(species_name)
            if type(species) is list:
                warnings.warn('There are multiple species with the name ' + species_name + ' in plot function. Suffixed species will be plotted ') if verbose else None
                for species_i in species:
                    if compartmentSpecies != '' and model.getElementBySId(species_i.getCompartment()).getName() != compartmentSpecies:
                        continue
                    elif compartmentSpecies != '' and model.getElementBySId(species_i.getCompartment()).getName() == compartmentSpecies:
                        species_ind.append(m.get_species_index(species_i.getId()))
                    else:
                        species_ind.append(m.get_species_index(species_i.getId()))
                key_ind = ListOfSpeciesToPlot.index(species_name)
                insert_new = []
                for j in range(len(species)-1):
                    insert_new.append(species_name + str(j+1))
                SpeciesToPlot[key_ind+1:key_ind+1] = insert_new 
            else:
                if compartmentSpecies != '' and model.getElementBySId(species.getCompartment()).getName() != compartmentSpecies:
                    continue
                elif compartmentSpecies != '' and model.getElementBySId(species.getCompartment()).getName() == compartmentSpecies:
                    species_ind.append(m.get_species_index(species.getId()))
                else:
                    species_ind.append(m.get_species_index(species.getId()))
 
        result = bioscrape.simulator.py_simulate_model(timepoints, Model = m, **kwargs)
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        for i in range(len(species_ind)):
            plt.plot(timepoints, result[:, species_ind[i]], linewidth = lineWidth)
        plt.legend(SpeciesToPlot)
        plt.show()
        return

    # If a list of files is given
    
    species_ind = []
    speciesLegend = []
    for i in range(len(ListOfFiles)):
        filename = ListOfFiles[i]
        ListOfSpeciesToPlot = ListOfListOfSpeciesToPlot[i]
        doc = getFromXML(filename)
        model = doc.getModel()
        mod_obj = SimpleModel(model)
        m = bioscrape.sbmlutil.import_sbml(filename)
        SpeciesToPlot = ListOfSpeciesToPlot[:]
        for i in range(len(ListOfSpeciesToPlot)):
            species_name = ListOfSpeciesToPlot[i]
            speciesLegend.append(species_name)
            species = mod_obj.getSpeciesByName(species_name)
            if type(species) is list:
                warnings.warn('There are multiple species with the name ' + species_name + ' in plot function. Suffixed species will be plotted ') if verbose else None
                for species_i in species:
                    if compartmentSpecies != '' and model.getElementBySId(species_i.getCompartment()).getName() != compartmentSpecies:
                        continue
                    elif compartmentSpecies != '' and model.getElementBySId(species_i.getCompartment()).getName() == compartmentSpecies:
                        species_ind.append(m.get_species_index(species_i.getId()))
                    else:
                        species_ind.append(m.get_species_index(species_i.getId()))

                key_ind = ListOfSpeciesToPlot.index(species_name)
                insert_new = []
                for i in range(len(species)-1):
                    insert_new.append(species_name + str(i+1))
                    speciesLegend.append(species_name + str(i+1))
                SpeciesToPlot[key_ind+1:key_ind+1] = insert_new 
            else:
                if compartmentSpecies != '' and model.getElementBySId(species.getCompartment()).getName() != compartmentSpecies:
                    continue
                elif compartmentSpecies != '' and model.getElementBySId(species.getCompartment()).getName() == compartmentSpecies:
                    species_ind.append(m.get_species_index(species.getId()))
                else:
                    species_ind.append(m.get_species_index(species.getId()))
 
        result = bioscrape.simulator.py_simulate_model(timepoints, Model = m, **kwargs)
        for i in range(len(species_ind)):
            plt.plot(timepoints, result[:, species_ind[i]], linewidth = lineWidth)
        species_ind = []
    plt.legend(speciesLegend) # add the extra species to this list
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.show()

def createNewSubsystem(level = latestLevel, version = latestVersion):
    '''
    Creates a new empty Subsystem object with a SBMLDocument 
    of given level and version.
    Returns the Subsystem object
    '''
    if type(level) is not int or type(version) is not int:
        raise ValueError('The optional arguments for level and version must be integers')
    newDocument = createSbmlDoc(level,version)
    subsystem = Subsystem(newDocument)
    return subsystem

def createSubsystem(filename, subsystemName = '', **kwargs):
    ''' 
    Creates a new Subsystem object inside the System
    with the SubsystemName suffixed to all elements of the given SBML filename
    Returns the created Subsystem object.
    '''
    # 1. Read the SBML model
    # 2. Create an object of the Subsystem class with the SBMLDocument read in Step 1
    verbose = kwargs.get('verbose') if 'verbose' in kwargs else None
    membrane = kwargs.get('membrane') if 'membrane' in kwargs else None
    sbmlDoc = getFromXML(filename)
    model = sbmlDoc.getModel()
    if model.isSetName():
        subsystemName += model.getName()
    else:
        subsystemName += model.getId()
    if membrane:
        subsystemName = ''
    subsystem = Subsystem(sbmlDoc)
    if subsystem.getSBMLDocument().getLevel() != latestLevel or subsystem.getSBMLDocument().getVersion() != latestVersion:
        warnings.warn('Subsystem SBML model is not the latest. Converting to the latest SBML level and version') if verbose else None
        subsystem.convertSubsystemLevelAndVersion(latestLevel,latestVersion)
    if subsystemName != '':
        subsystem.suffixAllElementIds(subsystemName)
    if model.getNumCompartments() == 0:
        warnings.warn('No compartments in the Subsystem model, the System compartment will be used. Compartment Size will be set to zero for this Subsystem.') if verbose else None
    elif model.getNumCompartments() > 1:
        print('The subsystem from ' + filename + ' has multiple compartments')
        warnings.warn('More than 1 compartments found in the Subsystem model. Check resulting models for consistency.') if verbose else None
    if not model.getCompartment(0).isSetSize():
        warnings.warn('Compartment Size attribute is not set. Setting to one.') if verbose else None
        model.getCompartment(0).setSize(1)
    return subsystem 

