import libsbml 
import time
from modules.SimpleReaction import *
from modules.SimpleModel import *
from modules.setIdFromNames import *
from modules.utilityFunctions import *

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

    def renameSName(self, ListOfOldNames, new_name):
        '''
        Search the SBMLDocument in this Subsystem for the ListOfOldNames and rename all such 
        components by the new_name. Returns the updated SBMLDocument object of this Subsystem.
        '''
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
                warnings.warn('Multiple species found with the name' + old_name + '. Replacing all.')
                for sp in species:
                    check(sp.setName(new_name), 'setting the new name from rename to the list of species')
            else:
                check(species.setName(new_name), 'setting new name from rename function call')
        return self.getSBMLDocument()

    def convertSubsystemLevelAndVersion(self, newLevel, newVersion):
        '''
        Converts the SBMLDocument of this Subsytem to the newLevel and newVersion
        Returns the SBMLDocument object of the Subsystem with updated level and version.
        '''
        document = self.getSBMLDocument()
        check(document,'retreiving document object for subsystem in convert function')
        if type(newLevel) is not int or type(newVersion) is not int:
            raise ValueError('The arguments newLevel and newVersion must be integers')

        if newLevel == document.getLevel() and newVersion == document.getVersion():
            warnings.warn('The current SBMLDocument level and version are the same as the new level and version given')
            return

        config = ConversionProperties()
        if config != None:
            config.addOption('setLevelAndVersion')
        else:
            raise ValueError('Failed to call ConversionProperties')
        # Now, need to set the target level and version (to which to convert the document)
        # Use the setTargetNamespaces() object of the ConversionsProperties as follows.
        # First, need to create a new SBMLNamespaces object with the desired (target) level and version
        sbmlns = SBMLNamespaces(newLevel,newVersion)
        check(sbmlns, 'creating new sbml namespaces')
        # check(config.setTargetNamespaces(sbmlns),'setting target namespaces')
        config.setTargetNamespaces(sbmlns)
        # Use the SBMLDocument.convert(ConversionsProperties) syntax to convert
        check(document.convert(config),'converting document level and version')
        if newLevel == 3 and newVersion == 1:
            conv_status = document.checkL3v1Compatibility()
        elif newLevel == 2 and newVersion == 4:
            conv_status = document.checkL2v3Compatibility()
        elif newLevel == 2 and newVersion == 3:
            conv_status = document.checkL2v3Compatibility()
        elif newLevel == 2 and newVersion == 2:
            conv_status = document.checkL2v2Compatibility()
        elif newLevel == 2 and newVersion == 1:
            conv_status = document.checkL2v1Compatibility()
        if conv_status != 0:
            raise ValueError('SBML Level/Version conversion failed')
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
        return document 

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
    
    def suffixAllElementIds(self, name):
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
            if document.getElementBySId(oldid) != None:
                if name != '':
                    self.renameSId(oldid, oldid + '_' + name)

        ## Use if want to suffix all Name arguments too
        # elements = document.getListOfAllElements()
        # for element in elements:
        #     if element.isSetName():
        #         oldname = element.getName()
        #         newname = oldname + '_' + name
        #         element.setName(newname)

        return document

    def setCompartments(self, newCompartments):
        '''
    	The newCompartments list is set as the new ListOfCompartments 
        in theSBMLDocument of this Subsystem
        Returns the updated SBMLDocument 
        '''
        document = self.getSBMLDocument()
        check(document,'retreiving document from subsystem in setSubsystemCompartments')
        compartments = document.getModel().getListOfCompartments()
        check(compartments,'retreiving list of compartments in setSubsystemCompartments')
        if type(newCompartments) is not list:
            if type(newCompartments) is str:
                newcomp = newCompartments
                newCompartments = []
                newCompartments.append(newcomp)
            else:
                raise ValueError('The newCompartments argument should be a list of strings or a single string')

        if len(compartments) != len(newCompartments):
            warnings.warn('The number of compartments given is not the same as the number of compartments in the model.') 
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
        if status != LIBSBML_OPERATION_SUCCESS:
            print('Unable to set identifier on the Model object')
            sys.exit(1)
        check(model.setTimeUnits(timeUnits), 'set model-wide time units')
        check(model.setExtentUnits(extentUnits), 'set model units of extent')
        check(model.setSubstanceUnits(substanceUnits),
              'set model substance units')
        return model

    def mergeSubsystemModels(self, ListOfSubsystems):
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
        check(document,'retreiving document in mergeSubsystem')
        model_base = ListOfSubsystems[0].getSBMLDocument().getModel()
        check(model_base,'retreiving model in mergeSubsystems')
        model = self.createNewModel('merged_model',model_base.getTimeUnits(), model_base.getExtentUnits(), model_base.getSubstanceUnits())
        check(document.setModel(model),'setting model for document in mergeSubsystem')
        for subsystem in ListOfSubsystems:
            if type(subsystem) is not Subsystem:
                raise ValueError('All items of the ListOfSubsystems argument should be of Subsystem class')
            mod = subsystem.getSBMLDocument().getModel()
            check(mod,'retreiving model in mergeSubsystem')
            # Obsolete in SBML Level 3 
            # if mod.getNumCompartmentTypes() != 0:
            #     for each_compartmentType in mod.getListOfCompartmentType():
            #         model.addCompartmentType(each_compartmentType)
            if mod.getNumConstraints() != 0:
                for each_constraint in mod.getListOfConstraints():
                    model.addConstraint(each_constraint)
            if mod.getNumInitialAssignments() != 0:
                for each_initialAssignment in mod.getListOfInitialAssignments():
                    model.addInitialAssignment(each_initialAssignment)
            if mod.getNumFunctionDefinitions() != 0:
                for each_functionDefinition in mod.getListOfFunctionDefinitions():
                    model.addFunctionDefinition(each_functionDefinition)
            if mod.getNumRules() != 0:
                for each_rule in mod.getListOfRules():
                    model.addRule(each_rule)
            if mod.getNumEvents() != 0:
                for each_event in mod.getListOfEvents():
                    model.addEvent(each_event)
            if mod.getNumCompartments() != 0:
                for each_compartment in mod.getListOfCompartments():
                    model.addCompartment(each_compartment)
            if mod.getNumParameters() != 0:
                for each_parameter in mod.getListOfParameters():
                    model.addParameter(each_parameter)
            if mod.getNumUnitDefinitions() != 0:
                for each_unit in mod.getListOfUnitDefinitions():
                    model.addUnitDefinition(each_unit)
            if mod.getNumReactions() != 0:
                for each_reaction in mod.getListOfReactions():
                    model.addReaction(each_reaction)
            model.setAreaUnits(mod.getAreaUnits())
            model.setExtentUnits(mod.getExtentUnits())
            model.setLengthUnits(mod.getLengthUnits())
            model.setSubstanceUnits(mod.getSubstanceUnits())
            model.setTimeUnits(mod.getTimeUnits())
            model.setVolumeUnits(mod.getVolumeUnits())
        return self.getSBMLDocument()
   
    def shareSubsystems(self, ListOfSubsystems, ListOfSharedResources, mode = 'virtual', combineCall = False):
        '''
        Merges the ListOfSubsystems together along with all the Species. 
        The Species in ListOfSharedResources are combined together 
        and so are shared by all Subsystems among the ListOfSubsystems.
        Returns the combined SBMLDocument object of this Subsystem which stores the combined model
        The combineCall is an optional argument for internal use in the code.  
        '''
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
        self.mergeSubsystemModels(ListOfSubsystems)
        model = self.getSBMLDocument().getModel()
        check(model,'retreiving model in shareSubsystems')
        mod_id = ''
        # combineCall is used to check whether the subsystems are being combined (coming from combineSubsystems(...))
        # or not. This changes the compartment size. For shared - the size is set as the total size of the System inside which the Subsystems are present.
        # whereas for a combineSubsystems call, the total size of the combined model is equal to the sum of the sizes of the compartments in the subsystems that are being combined.
 
        total_size = 0
        if flag:
            warnings.warn('Not all of the Subsystems being shared are in the same Compartment')
            for subsystem in ListOfSubsystems:
                mod = subsystem.getSBMLDocument().getModel()
                mod_id += mod.getId()
                total_size += mod.getCompartment(0).getSize()
        elif not combineCall: 
            total_size = self.getSystem().getSize()
        else:
            total_size = ListOfSubsystems[0].getSystem().getSize()

        check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
        for subsystem in ListOfSubsystems:
            subsystem.shareSubsystem(ListOfSharedResources, mode, combineCall)
        self.shareSpecies(ListOfSubsystems, ListOfSharedResources, mode, combineCall)
        check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
        # Updating model id
        check(model.setId('shared_subsystems_' + mod_id),'setting new model id for shared model')
        return self.getSBMLDocument()

    def shareSubsystem(self, ListOfSharedResources, mode = 'virtual', combineCall = False):
        self.shareSpecies([], ListOfSharedResources, mode)        
        return self.getSBMLDocument()

    def combineSubsystems(self, ListOfSubsystems, mode = 'virtual', combineNames = True):
        '''
        Combines the ListOfSubsystems. 
	    Species with the same name together are combined, if combineNames is True. 
        The ListOfSharedResources of the System in which the Subsystem is placed 
        is used to share the Species in the list. Other Species are combined depending on 
        the combineNames (True or False)
        Returns the SBMLDocument object of this Subsystem which holds the combined model.
        '''
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
            warnings.warn('Not all of the Subsystems being combined are in the same Compartment')
            total_size = 0
            for subsystem in ListOfSubsystems:
                total_size += subsystem.getSBMLDocument().getModel().getCompartment(0).getSize()

        if not flag:
            # Get the sharedSubsystem object to combine the species in ListOfSharedResources before combining all other species
            self.shareSubsystems(ListOfSubsystems, ListOfResources, mode, True)
        model = self.getSBMLDocument().getModel()
        check(model,'retreiving model in combineSubsystems')
        mod_id = ''
 
        check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
 
        # Combine each subsystem, to remove duplicate named components
        for subsystem in ListOfSubsystems:
            sub_model = subsystem.getSBMLDocument().getModel()
            check(sub_model,'retreiving subsystem model in combineSubsystems')
            mod_id += '_' + sub_model.getId()
            subsystem.combineSubsystem(ListOfResources, mode)
        if combineNames == True:
            self.combineSpecies(ListOfSubsystems,ListOfResources, mode)
            self.combineReactions(ListOfSubsystems)
            self.combineCompartments(ListOfSubsystems)
            self.combineParameters(ListOfSubsystems)
            self.combineEvents(ListOfSubsystems)
            self.combineFunctionDefinitions(ListOfSubsystems)
            self.combineUnitDefinitions(ListOfSubsystems)

        check(model.getCompartment(0).setSize(total_size), 'setting compartment size in model')
        # Updating model id
        check(model.setId('combined_subsystems_' + mod_id),'setting new model id for shared model')
        return self.getSBMLDocument()
  
    def combineSubsystem(self, ListOfResources, mode = 'virtual'):
        self.combineSpecies([], ListOfResources, mode)        
        self.combineCompartments([])
        self.combineParameters([])
        self.combineReactions([])
        self.combineUnitDefinitions([])
        self.combineFunctionDefinitions([])
        self.combineEvents([])
        return self.getSBMLDocument()

    
    def connectSubsystems(self, ListOfSubsystems, connectionMap, mode = 'virtual', combineNames = True, amount_mode = 'additive', connected_species_amount = 0):
        '''
        The ListOfSubsystems are combined together as in combineSubsystems 
        method (depending on combineNames). Using the map given in connectionMap
        other species which are different, are also combined. The optional argument
        of amount_mode can be used to set if amounts of combined species will be a sum (additive mode) 
        or ('constant') mode will set the amount equal to that of the last optional argument, connected_species_amount, which the user provides. 
        Returns the connected SBMLDocument object of this Subsystem
        '''
        self.combineSubsystems(ListOfSubsystems, mode, combineNames)
        model = self.getSBMLDocument().getModel()
        check(model,'retreiving self model in connectSubsystem')
        simpleModel = SimpleModel(model)
        if amount_mode == 'additive':
            connected_species_amount = []
        elif amount_mode == 'constant':
            if type(connected_species_amount) is not list:
                if not isinstance(connected_species_amount, (float,int)):
                    raise ValueError('Connected species amount must be a list of float or int')
                connected_species_amount = [connected_species_amount]

        for species_name in connectionMap.keys():
            species1 = simpleModel.getSpeciesByName(species_name)
            species2 = simpleModel.getSpeciesByName(connectionMap[species_name])
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
            species1 = simpleModel.getSpeciesByName(species_name)
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

    def shareSpecies(self, ListOfSubsystems, ListOfResources, mode, combineCall = False):
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            if not ListOfResources:
                for species in model.getListOfSpecies():
                    check(model.addSpecies(species), 'adding species in shareSpecies if case when listofresources is empty')
            else:
                final_species_hash_map = {}
                for compartment in model.getListOfCompartments():
                    species_hash_map = {}
                    for species in model.getListOfSpecies():
                        if species_hash_map.get(species.getId()):
                            raise ValueError('Multiple species with same identifier found. This is an invalid SBML.')
                        if species.isSetName() and species.getCompartment() == compartment.getId() and species.getName() in ListOfResources:
                            species_hash_map[species.getId()] = species.getName()
                        # elif species.isSetName():
                        #     check(model.addSpecies(species), 'adding species that are not in ListOfResources in shareSpecies if case')
                        elif not species.isSetName():
                            warnings.warn('Species {0} does not have a name attribute. It might be duplicated.'.format(species.getId()))
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
                                    warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId()))
                                    break
                            if species.getConstant() != uni_sp.getConstant():
                                warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                                break
                            if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                                warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                                break
                            species_comp = species.getCompartment()
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
                                        warnings.warn('Removing duplicates of species {0} in the same compartment'.format(newid))
                                        id_added_species = newid
                                    count += 1
                                if mode == 'volume':
                                    check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'setting initial cumulative amount in combineSpecies if case in volume mode')
        else:
            final_species_hash_map = {}
            total_size = model.getCompartment(0).getSize()
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                if not ListOfResources:
                    for species in model.getListOfSpecies():
                        ssys_size = sub_model.getElementBySId(species.getCompartment()).getSize()
                        cumulative_amount = (species.getInitialAmount())*ssys_size
                        check(model.addSpecies(species), 'adding species to the model when ListOfResources is empty in else case of shareSpecies')
                    if mode == 'volume':
                        check(species.setInitialAmount(cumulative_amount/total_size), 'setting initial amount to cumulative amount in else case of shareSpecies, ListOfResources is empty')
                else:
                    for compartment in sub_model.getListOfCompartments():
                        # Finding duplicate species by name and compartment
                        species_hash_map = {}
                        for species in sub_model.getListOfSpecies():
                            if not species.isSetName():
                                warnings.warn('Species {0} does not have a name attribute. It may be duplicated.'.format(species.getId()))
                                continue
                            elif species.getName() in ListOfResources and species.getCompartment() == compartment.getId():
                                # Maintain the dictionary for all species in the input subsystems by their name
                                species_hash_map[species.getName()] = species
                            else:
                                check(model.addSpecies(species), 'adding species not shared in shareSpecies else case')
                                if mode == 'volume' and not combineCall:
                                    mod = species.getModel()
                                    cumulative_amount = (species.getInitialAmount()) * (mod.getElementBySId(species.getCompartment()).getSize())
                                    check(species.setInitialAmount(cumulative_amount/total_size), 'setting initial amount to species not shared in shareSpecies in volume mode, in else case')
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
                                warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId()))
                                break
                        if species.getConstant() != uni_sp.getConstant():
                            warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                            break
                        if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                            warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                            break
                        species_comp = species.getCompartment()
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
                            total_size = 0
                            for species in comp_dict[species_comp]:
                                check(model.addSpecies(species),'adding species in shareSpecies else case')
                                mod = species.getModel()
                                ssys_size = mod.getElementBySId(species.getCompartment()).getSize()
                                total_size += ssys_size
                                #remove duplicates now
                                cumulative_amount += (species.getInitialAmount()) * ssys_size
                                spe_id = species.getId()
                                oldid = spe_id
                                check(oldid, 'retreiving oldid in combineSpecies else case, volume')
                                newid = trans.getValidIdForName(uni_sp.getId()) + '_shared'
                                self.renameSId(oldid, newid)
                                if count >= 1:
                                    check(model.removeSpecies(newid),'removing duplicate species')
                                    warnings.warn('Removing duplicate species {0} in the same compartment'.format(newid))
                                else:
                                    id_added_species = newid
                                count += 1
                            if mode == 'volume':
                                check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'setting initial amount to cumulative in volume mode in combineSpecies else case')
        return self.getSBMLDocument()


    def combineSpecies(self, ListOfSubsystems, ListOfResources, mode):
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            final_species_hash_map = {}
            for compartment in model.getListOfCompartments():
                species_hash_map = {}
                for species in model.getListOfSpecies():
                    if species_hash_map.get(species.getId()):
                        raise ValueError('Multiple species with same identifier found. This is an invalid SBML.')
                    if species.isSetName() and species.getCompartment() == compartment.getId() and species.getName() not in ListOfResources:
                        species_hash_map[species.getId()] = species.getName()
                    elif not species.isSetName():
                        warnings.warn('Species {0} does not have a name attribute. It might be duplicated.'.format(species.getId()))
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
                        check(species,'retreiving species by id in combineSubsystem virtual')
                        if species.isSetUnits():
                            if species.getUnits() != uni_sp.getUnits():
                                warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId()))
                                break
                        if species.getConstant() != uni_sp.getConstant():
                            warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                            break
                        if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                            warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                            break
                        species_comp = species.getCompartment()
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
                                #remove duplicates
                                spe_id = species.getId()
                                mod = species.getModel()
                                ssys_size = mod.getElementBySId(species.getCompartment()).getSize()
                                total_size += ssys_size 
                                cumulative_amount += species.getInitialAmount() * ssys_size
                                oldid = spe_id
                                check(oldid, 'retreiving oldid in combineSpecies if case')
                                newid = trans.getValidIdForName(uni_sp.getId()) + '_combined'
                                self.renameSId(oldid, newid)
                                if count >= 1 :
                                    check(model.removeSpecies(newid), 'removing duplicate species in combineSpecies if case')
                                    warnings.warn('Removing duplicates of species {0} in the same compartment'.format(newid))
                                else:
                                    id_added_species = newid
                                count += 1
                            if mode == 'volume':
                                check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'setting initial cumulative amount in combineSpecies if case in volume mode')
        else:
            final_species_hash_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                for compartment in sub_model.getListOfCompartments():
                    # Finding duplicate species by name and compartment
                    species_hash_map = {}
                    for species in sub_model.getListOfSpecies():
                        if not species.isSetName():
                            warnings.warn('Species {0} does not have a name attribute. It may be duplicated.'.format(species.getId()))
                            continue
                        elif species.getCompartment() == compartment.getId() and species.getName() not in ListOfResources:
                            # Maintain the dictionary for all species in the input subsystems by their name
                            species_hash_map[species.getName()] = species
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
                                warnings.warn('Species with same name have different units. They will not be combined. For {0} species id.'.format(species.getId()))
                                break
                        if species.getConstant() != uni_sp.getConstant():
                            warnings.warn('Species with same name have different constant attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                            break
                        if species.getBoundaryCondition() != uni_sp.getBoundaryCondition():
                            warnings.warn('Species with same name have different boundary condition attribute. They will not be combined. For {0} species id.'.format(species.getId()))
                            break
                        species_comp = species.getCompartment()
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
                            total_size = 0
                            for species in comp_dict[species_comp]:
                                #remove duplicates now
                                spe_id = species.getId()
                                mod = species.getModel()
                                print(ssys_size)
                                print(total_size)
                                print(cumulative_amount)
                                ssys_size = mod.getElementBySId(species.getCompartment()).getSize()
                                total_size += ssys_size
                                cumulative_amount += (species.getInitialAmount()) * ssys_size
                                oldid = spe_id
                                check(oldid, 'retreiving oldid in combineSpecies else case, volume')
                                newid = trans.getValidIdForName(uni_sp.getId()) + '_combined'
                                self.renameSId(oldid, newid)
                                if count >= 1:
                                    check(model.removeSpecies(newid),'removing duplicate species')
                                    warnings.warn('Removing duplicate species {0} in the same compartment'.format(newid))
                                else:
                                    id_added_species = newid
                                count += 1
                            print(ssys_size)
                            print(total_size)
                            print(cumulative_amount)
                            if mode == 'volume':
                                check(model.getSpecies(id_added_species).setInitialAmount(cumulative_amount/total_size),'setting initial amount to cumulative in volume mode in combineSpecies else case')
                # else:
                #     # add cumulative amount for volume mode here (only needs to be done when combining inside a system)
                #     for species in final_species_hash_map[unique_species_name]:
                #         if mode == 'volume':
                #             cumulative_amount = (species.getInitialAmount()) * (species.getModel().getCompartment(0).getSize())
                #             check(species.setInitialAmount(cumulative_amount/total_size), 'setting amount to species in combineSpecies, volume mode, else case, species that are not combined')
        return self.getSBMLDocument()

    def combineParameters(self, ListOfSubsystems):
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            parameter_hash_map = {}
            final_parameter_hash_map = {}
            for parameter in model.getListOfParameters():
                if parameter_hash_map.get(parameter.getId()):
                    raise ValueError('Multiple parameters with same identifier found. This is an invalid SBML.')
                if not parameter.isSetName():
                    warnings.warn('Parameter with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(parameter.getId()))
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
                                warnings.warn('Parameters with same name have different units. They will not be combined. For {0} parameter id.'.format(i.getId()))
                                break
                        if i.getConstant() != uni_param.getConstant():
                            warnings.warn('Parameters with same name have different constant attribute. They will not be combined. For {0} parameter id.'.format(i.getId()))
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
                            warnings.warn('Removing duplicate parameter {0} from the combined model'.format(i.getName()))
                        count += 1  
        else:  
            final_parameter_hash_map = {}
            for subsystem in ListOfSubsystems:
                sub_model = subsystem.getSBMLDocument().getModel()
                parameter_hash_map = {}
                for parameter in sub_model.getListOfParameters():
                    # Maintain the dictionary for all parameter in the subsystems by their name and parameter they are in
                    if not parameter.isSetName():
                        warnings.warn('Parameter with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(parameter.getId())) 
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
                                warnings.warn('Parameters found with same name but different values. They will not be combined together.')
                                break 
                        if i.isSetUnits():
                            if i.getUnits() != uni_param.getUnits():
                                warnings.warn('Parameters found with same name but different units. They will not be combined together.')
                                break 
                        # Constant attribute is mandatory for valid SBML parameter
                        if i.getConstant() != uni_param.getConstant():
                            warnings.warn('Parameters found with same name but different units. They will not be combined together.')
                            break 
                        # newid = i.getName() + '_combined'
                        self.renameSId(oldid, newid)
                        if count >= 1:
                            check(model.removeParameter(newid), 'removing parameter in combineParameters')
                            warnings.warn('Removing duplicate parameter {0} from the combined model'.format(i.getName()))
                        count += 1
        return self.getSBMLDocument()   

    def combineCompartments(self, ListOfSubsystems):
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            compartment_hash_map = {}
            final_compartment_hash_map = {}
            for compartment in model.getListOfCompartments():
                if compartment_hash_map.get(compartment.getId()):
                    raise ValueError('Multiple compartments with same identifier found. This is an invalid SBML.')
                if not compartment.isSetName():
                    warnings.warn('Compartment with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(compartment.getId()))
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
                        warnings.warn('Compartment with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(compartment.getId()))
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
                    for ind in range(0,len(final_compartment_hash_map[comp_str])):
                        i = final_compartment_hash_map[comp_str][ind]
                        if i.getSize() != uni_comp.getSize():
                            warnings.warn('Compartments found with same name but different sizes. They will not be combined together.')
                            break 
                        # model.addCompartment(i)
                        allids = self.getAllIds()
                        trans = SetIdFromNames(allids)
                        newid = trans.getValidIdForName(uni_comp.getId()+'_combined')
                        if ind > 0:
                            self.renameSId(i.getId(), newid)
                            # status = model.removeCompartment(newid)
                            # if status != None:
                                # warnings.warn('Removing all duplicates of the compartment {0} in the combined model.'.format(comp_str))
                    self.renameSId(uni_comp.getId(), newid)
        return self.getSBMLDocument()
    
    def combineReactions(self, ListOfSubsystems):
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
                        warnings.warn('Species {0} does not have a name attribute. Reactions might be duplicated.'.format(species.getId()))
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
                        warnings.warn('Species {0} does not have a name attribute. Reactions might be duplicated.'.format(species.getId()))
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
                                warnings.warn('Removing all duplicates of the reaction {0} in the combined model. Check the reaction rate to ensure model is consistent.'.format(rxn_str))
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
                            warnings.warn('Species {0} does not have a name attribute. Reactions may be duplicated.'.format(species.getId()))
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
                            warnings.warn('Species {0} does not have a name attribute. Reactions may be duplicated.'.format(species.getId()))
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
                                warnings.warn('Removing all duplicates of the reaction {0} in the combined model. Check the reaction rate to ensure model is consistent.'.format(rxn_str))
                    self.renameSId(uni_rxn.getId(), trans.getValidIdForName(uni_rxn.getId() + '_combined'))
        return self.getSBMLDocument()

    def combineUnitDefinitions(self, ListOfSubsystems):
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            unit_definition_hash_map = {}
            final_unit_definition_hash_map = {}
            for unit_definition in model.getListOfUnitDefinitions():
                if unit_definition_hash_map.get(unit_definition.getId()):
                    raise ValueError('Multiple unit_definitions with same identifier found. This is an invalid SBML.')
                if not unit_definition.isSetName():
                    warnings.warn('UnitDefinition with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(unit_definition.getId()))
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
                            warnings.warn('Removing duplicate UnitDefinition of identifier {0}. Check the definition to ensure consistency.'.format(sp_id))
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
                        warnings.warn('UnitDefinition with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(unit_definition.getId()))
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
                                warnings.warn('Removing duplicate unit_definition {0} in the combined model. Check other attributes to ensure consistency.'.format(uni_def_str))
                    self.renameSId(uni_uni_def.getId(), trans.getValidIdForName(uni_uni_def.getId()+'_combined'))
        return self.getSBMLDocument()
   
    def combineEvents(self, ListOfSubsystems):
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            event_hash_map = {}
            final_event_hash_map = {}
            for event in model.getListOfEvents():
                if event_hash_map.get(event.getId()):
                    raise ValueError('Multiple events with same identifier found. This is an invalid SBML.')
                if not event.isSetName():
                    warnings.warn('Event with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(event.getId()))
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
                            warnings.warn('Removing duplicate event {0} in the combined model. Check other attributes to ensure consistency.'.format(unique_event_str))
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
                        warnings.warn('Event with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(event.getId()))
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
                                warnings.warn('Removing all duplicates of the event {0} in the combined model. Check other attributes to ensure consistency.'.format(eve_str))
                    self.renameSId(uni_eve.getId(), trans.getValidIdForName(uni_eve.getId()+'_combined'))

        return self.getSBMLDocument()
    
    def combineFunctionDefinitions(self, ListOfSubsystems):
        model = self.getSBMLDocument().getModel()
        if ListOfSubsystems == []:
            model = self.getSBMLDocument().getModel()
            function_definition_hash_map = {}
            final_function_definition_hash_map = {}
            for function_definition in model.getListOfFunctionDefinitions():
                if function_definition_hash_map.get(function_definition.getId()):
                    raise ValueError('Multiple function_definitions with same identifier found. This is an invalid SBML.')
                if not function_definition.isSetName():
                    warnings.warn('FunctionDefinition with id {0} does not have name attribute set. To avoid duplicates, use name argument.'.format(function_definition.getId()))
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
                            warnings.warn('Removing all duplicates of the function definition {0} in the combined model. Check other attributes to ensure consistency.'.format(unique_function_definition_str))
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
                        warnings.warn('FunctionDefinition with identifier {0} does not have a name argument. To avoid duplication, use name argument'.format(function_definition.getId()))
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
                                warnings.warn('Removing all duplicates of the function_definition {0} in the combined model. Check other attributes to ensure consistency.'.format(func_def_str))
                    self.renameSId(uni_func_def.getId(), trans.getValidIdForName(uni_func_def.getId()+'_combined'))
        return self.getSBMLDocument()
    
    
    def getSpeciesByName(self, name):
        ''' 
        Returns a list of species in the Subsystem with the given name
        '''
        if type(name) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getSBMLDocument().getModel()
        check(model,'retreived model object')
        species_found =[]
        for species in model.getListOfSpecies():
            if species.isSetName():
                if species.getName() == name:
                    species_found.append(species)
            else:
                warnings.warn('Species {0} does not have a name attribute, it will not be included in the list returned in this getSpeciesByName call.'.format(species.getId()))
        if len(species_found) == 1:
            return species_found[0] 
        elif not species_found:
            raise ValueError('The species ' + name + ' not found.')
        else:
            warnings.warn('Multiple species with name ' + name + ' found. Returning a list')
            return species_found
    
    
    def getCompartmentsByName(self, name):
        ''' 
        Returns a list of compartments in the Subsystem with the given name
        '''
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
                warnings.warn('Compartment {0} does not have a name attribute. It will not be returned in the list returned in this getCompartmentsByName call.'.format(compartment.getId()))
        if len(compartment_found) == 1:
            return compartment_found[0] 
        elif not compartment_found:
            raise ValueError('The compartment ' + name + ' not found.')
        else:
            warnings.warn('Multiple compartments with name ' + name + ' found. Returning a list')
            return compartment_found
 
    def setSpeciesAmount(self, inputSpecies, amount, comp_name = ''):
        '''
        Sets amount of the species with the same name as inputSpecies argument equal to the amount argument
        Arguments may both be lists of same length.
        Returns the updated SBMLDocument object of this Subsystem.
        '''
        if comp_name == '':
            if type(inputSpecies) is list:
                for inp_sp in inputSpecies:
                    if type(inp_sp) is not str:
                        raise ValueError('All items of inputSpecies must be strings.')
                    sp = self.getSpeciesByName(inp_sp)
                    if type(sp) is list:
                        for s_i in sp:
                            if type(amount) is not float and type(amount) is not int:
                                raise ValueError('The amount should be either a float or an int')
                            check(s_i.setInitialAmount(amount),'setting initial amount to 0 in connectSubsystem')
                    else:
                        if type(amount) is not float and type(amount) is not int:
                            raise ValueError('The amount should be either a float or an int')
                        check(sp.setInitialAmount(amount),'setting initial amount')
            else:
                if type(inputSpecies) is not str:
                    raise ValueError('inputSpecies argument must be a string or a list of strings.')
                sp = self.getSpeciesByName(inputSpecies)
                if type(sp) is list:
                    for s_i in sp:
                        if type(amount) is not float and type(amount) is not int:
                            raise ValueError('The amount should be either a float or an int')
                        check(s_i.setInitialAmount(amount),'setting initial amount')
                else:
                    if type(amount) is not float and type(amount) is not int:
                        raise ValueError('The amount should be either a float or an int')
                    check(sp.setInitialAmount(amount),'setting initial amount')
        else:
            model = self.getSBMLDocument().getModel()
            comp = self.getCompartmentsByName(comp_name)
            if type(comp) is not list: 
                comp_name = comp.getId()
                if type(inputSpecies) is str:
                    if not isinstance(amount, (int, float)) or type(comp_name) is not str:
                        raise ValueError('Amount argument must be int or float and comp_name argument must be string')
                    species = self.getSpeciesByName(inputSpecies)
                    if type(species) is not list:
                        if species.getCompartment() == comp_name:
                            check(species.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                    elif type(species) is list:
                        for sp in species:
                            if sp.getCompartment() == comp_name:
                                check(sp.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                
                elif type(inputSpecies) is list:
                    if len(inputSpecies) != len(amount):
                        raise ValueError('Length of species name list, amount list, and comp_name must be equal')
                    for species in model.getListOfSpecies():
                        for sp,am in zip(inputSpecies,amount):
                            if type(sp) is not str or not isinstance(am, (float,int)) or type(comp_name) is not str:
                                raise ValueError('inputSpecies list must have all string arguments, comp_name must have all string arguments, and amount list must have all float or int')
                            if species.getName() == sp and species.getCompartment() == comp_name:
                                check(sp.setInitialAmount(am),'setting initial amount in setSpeciesAmount list of species case with compartment')
            elif type(comp) is list:
                for c in comp:
                    comp_name = c.getId()
                    if type(inputSpecies) is str:
                        if not isinstance(amount, (int, float)) or type(comp_name) is not str:
                            raise ValueError('Amount argument must be int or float and comp_name argument must be string')
                        species = self.getSpeciesByName(inputSpecies)
                        if type(species) is not list:
                            if species.getCompartment() == comp_name:
                                check(species.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                        elif type(species) is list:
                            for sp in species:
                                if sp.getCompartment() == comp_name:
                                    check(species.setInitialAmount(amount), 'setting initial amount in setSpeciesAmount for single species case with compartment')
                    
                    elif type(inputSpecies) is list:
                        if len(inputSpecies) != len(amount):
                            raise ValueError('Length of species name list, amount list, and comp_name must be equal')
                        for species in model.getListOfSpecies():
                            for sp,am in zip(inputSpecies,amount):
                                if type(sp) is not str or not isinstance(am, (float,int)) or type(comp_name) is not str:
                                    raise ValueError('inputSpecies list must have all string arguments, comp_name must have all string arguments, and amount list must have all float or int')
                                if species.getName() == sp and species.getCompartment() == comp_name:
                                    check(sp.setInitialAmount(am),'setting initial amount in setSpeciesAmount list of species case with compartment')
            else:
                raise ValueError('inputSpecies argument must be a string or a list of strings')






    def getFastReactions(self):
        '''
        Returns the reactions in the Subsystem with the attribute fast set as True
        '''
        allReactions = self.getSBMLDocument().getModel().getListOfReactions()
        fastReactions = []
        for reaction in allReactions:
            if reaction.isSetFast():
                if reaction.getFast() == True:
                    fastReactions.append(reaction)
        return fastReactions
    
    def setFastReactions(self, indexList):
        ''' 
        The indexList is used to set the corresponding reactions as fast
        by setting their fast attribute to True. For example, 
        indexList = [0 5], sets the 1st and 4th reaction in the Subsystem model as fast
        Returns the updated SBMLDocument of this Subsystem
        '''
        model = self.getSBMLDocument().getModel()
        if type(indexList) is int:
            model.getReaction(indexList).setFast(True)
            return
        for index in indexList:
            model.getReaction(index-1).setFast(True)
        return self.getSBMLDocument()
        

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


    def modelReduce(self, timepoints):
        ''' 
        Reduces the model by removing the reactions which are set as fast
        in the Subsystem model. The timepoints are used to simulate the
        fast reactions for these timepoints. The steady state values of 
        the involved species in the fast reactions are used in the
        reduced model as their initial value. 
        Returns the Subsystem object with the reduced model obtained.
        '''
        reducedSubsystem = self.getSystem().createNewSubsystem()
        model_orig = self.getSBMLDocument().getModel()
        reducedSubsystem.getSBMLDocument().setModel(model_orig)
        mod = reducedSubsystem.getSBMLDocument().getModel()

        fastRxns = self.getFastReactions()
        fastSubsystem = self.getSystem().createNewSubsystem()
        fastModel = fastSubsystem.createNewModel('fastModel', mod.getTimeUnits(), mod.getExtentUnits(), mod.getSubstanceUnits() )
        # adding all global (model level) components of the model
        # to the fastModel, except reactions and species
        if mod.getNumCompartmentTypes() != 0:
            for each_compartmentType in mod.getListOfCompartmentType():
                fastModel.addCompartment(each_compartmentType)
        if mod.getNumConstraints() != 0:
            for each_constraint in mod.getListOfConstraints():
                fastModel.addConstraint(each_constraint)
        if mod.getNumInitialAssignments() != 0:
            for each_initialAssignment in mod.getListOfInitialAssignments():
                fastModel.addInitialAssignment(each_initialAssignment)
        if mod.getNumFunctionDefinitions() != 0:
            for each_functionDefinition in mod.getListOfFunctionDefinitions():
                fastModel.addFunctionDefinition(each_functionDefinition)
        if mod.getNumRules() != 0:
            for each_rule in mod.getListOfRules():
                fastModel.addRule(each_rule)
        if mod.getNumEvents() != 0:
            for each_event in mod.getListOfEvents():
                fastModel.addEvent(each_event)
        if mod.getNumCompartments() != 0:
            for each_compartment in mod.getListOfCompartments():
                fastModel.addCompartment(each_compartment)
        if mod.getNumParameters() != 0:
            for each_parameter in mod.getListOfParameters():
                fastModel.addParameter(each_parameter)
        if mod.getNumUnitDefinitions() != 0:
            for each_unit in mod.getListOfUnitDefinitions():
                fastModel.addUnitDefinition(each_unit)
        fastModel.setAreaUnits(mod.getAreaUnits())
        fastModel.setExtentUnits(mod.getExtentUnits())
        fastModel.setLengthUnits(mod.getLengthUnits())
        fastModel.setSubstanceUnits(mod.getSubstanceUnits())
        fastModel.setTimeUnits(mod.getTimeUnits())
        fastModel.setVolumeUnits(mod.getVolumeUnits())

       # adding the reactions that are fast and the species used in them to 
        # the fast model
        for rxn in fastRxns:
            fastModel.addReaction(rxn)
            mod.removeReaction(rxn.getId())
            for reactant_ref in rxn.getListOfReactants():
                fastModel.addSpecies(mod.getElementBySId(reactant_ref.getSpecies()))
            for product_ref in rxn.getListOfProducts():
                fastModel.addSpecies(mod.getElementBySId(product_ref.getSpecies()))
        
        # get equilibrium values for species in fast reactions
        # writeSBML(fastSubsystem.getSBMLDocument(), 'models/intermediate_model.xml')
        print('###### Simulating the fast reactions in the model...All other species and parameters will be marked useless')
        time.sleep(2)
        data, m = fastSubsystem.simulateSbmlWithBioscrape(0,timepoints)
        allSpecies = fastModel.getListOfSpecies()
        for i in range(len(allSpecies)):
            species = mod.getElementBySId(allSpecies.get(i).getId())
            newAmount = data[:,m.get_species_index(species.getId())][-1]
            if newAmount > 0:
                species.setInitialAmount(newAmount)
            else:
                species.setInitialAmount(0)
        return reducedSubsystem

    def simulateBioscrape(self, initialTime, timepoints):
        ''' 
        To simulate a Subsystem without generating the plot. 
        Returns the data for all species and bioscrape model object which can be used to find out species indexes.
        '''
        filename = 'models/temp_simulate.xml'
        writeSBML(self.getSBMLDocument(), filename) 
        m = bioscrape.types.read_model_from_sbml(filename)
        s = bioscrape.simulator.ModelCSimInterface(m)
        s.py_prep_deterministic_simulation()
        s.py_set_initial_time(initialTime)
        sim = bioscrape.simulator.DeterministicSimulator()
        result = sim.py_simulate(s, timepoints)
        return result.py_get_result(), m

    def plotBioscrape(self, ListOfSpeciesToPlot, timepoints, xlabel = 'Time', ylabel = 'Concentration (AU)', sizeOfXLabels = 14, sizeOfYLabels = 14):
        ''' 
        To plot a Subsystem model using bioscrape.
        '''
        filename = 'models/temp_plot.xml'
        writeSBML(self.getSBMLDocument(), filename) 
        plotSbmlWithBioscrape(filename, timepoints[0], timepoints, ListOfSpeciesToPlot, xlabel, ylabel, sizeOfXLabels, sizeOfYLabels)
    
    def simulateVariableInputsBioscrape(self, ListOfInputs, ListOfListOfAmounts, ListOfSpeciesToPlot, timepoints, mode = 'continue', xlabel = 'Time', ylabel = 'Concentration (AU)', sizeOfXLabels = 14, sizeOfYLabels = 14):
        ''''
        Simulates the Subsystem model with the input species amounts varying 
        Uses bioscrape to simulate and plots the result
        Returns data, time vectors post simulation
        '''
        mpl.rc('axes', prop_cycle=(mpl.cycler('color', ['r', 'k', 'b','g','y','m','c']) ))
        model = self.getSBMLDocument().getModel()
        simpleModel = SimpleModel(model)
        species_list = []
        final_result = {}
        total_time = {}
        SpeciesToPlot = ListOfSpeciesToPlot[:]
        for species_name in ListOfSpeciesToPlot:
            species = simpleModel.getSpeciesByName(species_name)
            if type(species) is list:
                warnings.warn('There are multiple species with the name ' + species_name + 'Suffixed species will be plotted ')
                for species_i in species:
                    species_list.append(species_i.getId())
                    final_result[species_i.getId()] = []
                    total_time[species_i.getId()] = []
                key_ind = ListOfSpeciesToPlot.index(species_name)
                insert_new = []
                for j in range(len(species)-1):
                    insert_new.append(species_name + str(j+1))
                SpeciesToPlot[key_ind+1:key_ind+1] = insert_new 
            else:
                species_list.append(species.getId())
                final_result[species.getId()] = []
                total_time[species.getId()] = []
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
                time = np.linspace(t,t+t_end,points)
                data, m = self.simulateBioscrape(t, time)
                for species_id in species_list:
                    sp_data = data[:,m.get_species_index(species_id)]
                    t = time[-1]
                    final_result[species_id].extend(sp_data)
                    total_time[species_id].extend(time)
                if mode == 'continue':
                    for species in model.getListOfSpecies():
                        species.setInitialAmount(data[:,m.get_species_index(species.getId())][-1])

        else:
            t = initialTime
            ListOfSpecies = []
            for i in range(len(ListOfInputs)):
                input = ListOfInputs[i]
                species_inp = simpleModel.getSpeciesByName(input)
                if type(species_inp) is list:
                    raise ValueError('Multiple input species found in the model.')
                ListOfSpecies.append(species_inp)
            for i in range(len(ListOfListOfAmounts)):
                if (type(ListOfListOfAmounts[i]) is not list) or (len(ListOfListOfAmounts[i]) != len(ListOfInputs)) :
                    raise ValueError('For multiple inputs, all items of ListOfListOfAmounts attribute should be lists of length same as the number of inputs')
            for j in range(len(ListOfListOfAmounts)):
                for amount, species in zip(ListOfListOfAmounts[j], ListOfSpecies):
                # Start simulating and create data
                    check(species.setInitialAmount(amount), 'setting initial amount to input species')
                time = np.linspace(t,t+t_end,points)
                data, m = self.simulateBioscrape(t, time)
                for species_id in species_list:
                    sp_data = data[:,m.get_species_index(species_id)]
                    t = time[-1]
                    final_result[species_id].extend(sp_data)
                    total_time[species_id].extend(time)

                if mode == 'continue':
                    for species in model.getListOfSpecies():
                        species.setInitialAmount(data[:,m.get_species_index(species.getId())][-1])

        for species_id in species_list:
            plt.plot(total_time[species_id], final_result[species_id])

        plt.legend(SpeciesToPlot)
        mpl.rc('xtick', labelsize= sizeOfXLabels) 
        mpl.rc('ytick', labelsize=sizeOfYLabels)
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        plt.show()
        return final_result, total_time

