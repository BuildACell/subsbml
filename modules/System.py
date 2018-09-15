# Import all required libraries
from modules.Subsystem import *

# The latest level and version of SBML 
# These are used to convert the models given as input to the latest SBML version
latestLevel = 3
latestVersion = 1

class System(object):
    '''
    Container class. Can contain multiple subsystems. 
    By default, has two SBML Compratment objects attached to it
    internal and external. The models can be set using the different methods in this class
    '''
    def __init__(self, SystemName, Size = 0, ListOfInternalSubsystems = [],
                ListOfExternalSubsystems = [], ListOfMembraneSubsystems = [], 
                ExternalSystemFlag = False):
        '''
        initialize lists of systems internal, external to the system.
        initialize the membrane subsystem that is attached to the system and its list of subsystem models
        initialize the size of the system and its name
        initialize a list of resources which are supplied by the system that will be shared among all subsystems internal to the cell
        all of these can be changed or retreived using appropriate methods available in the class
        '''
        self.SystemName = SystemName
        self.Size = 0
        self.ListOfInternalSubsystems = []
        self.ListOfExternalSubsystems = []
        self.ListOfMembraneSubsystems = [] 
        self.ListOfSharedResources = []
        self.ExternalSystemFlag = False
        self.ExternalSystem = self
    
    def getSystemName(self):
        ''' 
        Returns the system name attribute
        '''
        return self.SystemName

    def setSystemName(self, name):
        ''' 
        Renames the system name and puts all subsystems 
        currently internal to the system inside the compartment with 
        this new name. Returns the updated System object.
        '''
        if type(name) is not str:
            raise ValueError('The name argument should be a string')
        self.SystemName = name
        for subsystem in self.ListOfInternalSubsystems:
            subsystem.setCompartments([name])
        return self
   
    def getListOfInternalSubsystems(self):
        ''' 
        Returns a list of Subsystem objects that have been assigned to be 
        internal to this System
        '''
        return self.ListOfInternalSubsystems
    
    def appendListOfInternalSubsystems(self, subsystem):
        ''' 
        Appends a Subsystem object to the list of  
        internal subsystems of this System. Returns the updated list.
        '''
        if type(subsystem) is not Subsystem:
            raise ValueError('The subsystem argument must be a Subsystem object')

        self.ListOfInternalSubsystems.append(subsystem)
        return self.ListOfInternalSubsystems

  
    def getListOfExternalSubsystems(self):
        ''' 
        Returns a list of Subsystem objects that have been assigned to be 
        external to this System
        '''
        return self.ListOfExternalSubsystems
    
    def appendListOfExternalSubsystems(self, subsystem):
        ''' 
        Appends a Subsystem object to the list of  
        external subsystems of this System. Returns the updated list.
        '''
        if type(subsystem) is not Subsystem:
            raise ValueError('The subsystem argument must be a Subsystem object')
        self.ListOfExternalSubsystems.append(subsystem)
        return self.ListOfExternalSubsystems


    def getListOfMembraneSubsystems(self):
        ''' 
        Returns a list of Subsystem objects that have been assigned to be 
        membrane to this System
        '''
        return self.ListOfMembraneSubsystems
    
    def appendListOfMembraneSubsystems(self, subsystem):
        ''' 
        Appends a Subsystem object to the list of  
        membrane subsystems of this System. Returns the updated list.
        '''
        if type(subsystem) is not Subsystem:
            raise ValueError('The subsystem argument must be a Subsystem object')
        self.ListOfMembraneSubsystems.append(subsystem)
        return self.ListOfMembraneSubsystems

    def setExternalSystem(self, system):
        '''
        Set a System as the external system to this System. Returns updated value.
        '''
        if type(system) is not System:
            raise ValueError('The system argument must be a System object')
        self.ExternalSystem = system
        self.ExternalSystemFlag = True
        return self.ExternalSystem

    def getExternalSystem(self):
        '''
        Return the external system (if any) assigned to this system. 
        Sets the external system flag to False and returns it, if no other System is set as external system to this system
        '''
        if self.ExternalSystem == self:
            self.ExternalSystemFlag = False
            return self.ExternalSystemFlag
        else:
            return self.ExternalSystem
    
    def getListOfSharedResources(self):
        ''' 
        Returns the list of shared resources
        '''
        return self.ListOfSharedResources

    def appendSharedResources(self, list):
        ''' 
        Append the list of resources to the 
        self.ListOfSharedResources. Returns the updated list. 
        '''
        for element in list:
            if type(element) is str: 
                self.ListOfSharedResources.append(element)
            else:
                raise ValueError('List element {0} is not a string'.format(element))
        return self.ListOfSharedResources
    
    def removeSharedResource(self, resource):
        ''' 
        Remove the given resource name from
        self.ListOfSharedResources. Returns the updated list.
        '''
        if type(resource) is str and resource in self.ListOfSharedResources:
            self.ListOfSharedResources.remove(resource)
            return self.ListOfSharedResources
        else:
            raise ValueError('The resource argument must be a string and already a member of the ListOfSharedResources for this System')

    def setSize(self, size):
        '''
        Sets the size of the System compartment to given size (float) and returns the updated System object.
        ''' 
        if type(size) is not int and type(size) is not float:
            raise ValueError('The size argument must be a float or an integer type')
        self.Size = size
        return self

    def getSize(self):
        '''
        Returns the size of the System compartment
        '''
        return self.Size

    def setSharedResources(self, mode = 'virtual'):
        ''' 
        Returns SBMLDocument object of a new Subsystem containing the 
        model which shares the self.ListOfSharedResources among 
        self.ListOfInternalSubsystems
        '''
        ListOfResources = self.ListOfSharedResources
        ListOfSubsystems = self.ListOfInternalSubsystems
        shared_subsystem =  createNewSubsystem()
        shared_subsystem.setSystem(self)
        # Usage - For a Subsystem object - self.shareSubsystems(ListOfSubsystems, ListOfSharedResources)
        shared_subsystem.shareSubsystems(ListOfSubsystems, ListOfResources, mode)
        return shared_subsystem.getSBMLDocument()

    def createSubsystem(self, filename, subsystemName = ''):
        ''' 
        Creates a new Subsystem object inside the System
        with the SubsystemName suffixed to all elements of the given SBML filename.
        The Subsystem created is placed inside this System, which implies
        1. The Subsystem object has its System attribute set to this System.
        2. The Subsystem is added to the list of internal subsystems to this System.
        '''
        # 1. Read the SBML model
        # 2. Create an object of the Subsystem class with the SBMLDocument read in Step 1
        name = self.getSystemName()
        sbmlDoc = getFromXML(filename)
        model = sbmlDoc.getModel()
        subsystem = Subsystem(sbmlDoc)
        subsystem.setSystem(self)
        if subsystem.getSBMLDocument().getLevel() != latestLevel or subsystem.getSBMLDocument().getVersion() != latestVersion:
            warnings.warn('Subsystem SBML model is not the latest. Converting to SBML level 3, version 1')
            subsystem.convertSubsystemLevelAndVersion(latestLevel,latestVersion)
        subsystem.suffixAllElementIds(subsystemName)
        if model.getNumCompartments() == 0:
            warnings.warn('No compartments in the Subsystem model, the System compartment will be used. Compartment Size will be set to zero for this Subsystem.')
        elif model.getNumCompartments() > 1:
            warnings.warn('More than 1 compartments in the Subsystem model. Check resulting models for consistency.')

        if not model.getCompartment(0).isSetSize():
            warnings.warn('Compartment Size is not set. Setting to one.')
            model.getCompartment(0).setSize(1)
    
        subsystem.setCompartments([name])
        self.ListOfInternalSubsystems.append(subsystem)
        self.Size += model.getCompartment(0).getSize()
        return subsystem 

    def createNewSubsystem(self, level = latestLevel, version = latestVersion):
        '''
        Creates a new empty Subsystem object with SBMLDocument 
        of given level and version.
        The newly created Subsystem object is placed inside the system which implies
        1. The Subsystem object has its System attribute set to this System.
        2. The Subsystem is added to the list of internal subsystems to this System.
        '''
        if type(level) is not int or type(version) is not int:
            raise ValueError('The optional arguments level and version should be integers corresponding to the SBML model level and version')
        newDocument = createSbmlDoc(level,version)
        subsystem = Subsystem(newDocument)
        subsystem.setSystem(self)
        self.appendListOfInternalSubsystems(subsystem)
        return subsystem
    
    def setInternal(self,ListOfSubsystems):
        '''
        Set the list of subsystems in the ListOfSubsystems argument as the internal Subsystems to this system.
        Returns the updated list of internal subsystems of this System
        '''
        if type(ListOfSubsystems) is not list:
            if type(ListOfSubsystems) is not Subsystem:
                raise ValueError('The ListOfSubsystems argument should be a Subsystem object.')
            elif type(ListOfSubsystems) is Subsystem:
                sub = ListOfSubsystems
                ListOfSubsystems = []
                ListOfSubsystems.append(sub)
            else:
                raise ValueError('The ListOfSubsystems argument should either be a list of Subsystem objects or a single Subsystem object.')

        for sub in ListOfSubsystems:
            if type(sub) is not Subsystem:
                raise ValueError('All items of argument to setInternal must be Subsystem objects.')
            model = sub.getSBMLDocument().getModel()
            compartments = model.getNumCompartments()
            if compartments > 1:
                raise ValueError('The subsystem model has more than one compartments. This may lead to errors as it is expected that a subsystem model only has one compartment. To model multiple compartments, make different system objects for different compartment names. Refer to the wiki for more information')
            sub.setSystem(self)
            sub.setCompartments(self.SystemName + '_internal')
            self.ListOfInternalSubsystems.append(sub)
        return self.ListOfInternalSubsystems

    def setExternal(self, ListOfSubsystems):
        '''
        Set the list of subsystems in the ListOfSubsystems argument as the external Subsystems to this system.
        Returns the updated list of external subsystems of this System
        '''
        if type(ListOfSubsystems) is System:
            externalSystem = ListOfSubsystems
            self.ListOfExternalSubsystems = externalSystem.ListOfInternalSubsystems
            # For use in setting the external compartment of the membrane of this system equal to the internal of the 'externalSubsystem' variable
            self.ExternalSystemFlag = True
            self.ExternalSystem = externalSystem 
            return self.ListOfExternalSubsystems
        
        if type(ListOfSubsystems) is not list:
                if type(ListOfSubsystems) is not Subsystem:
                    raise ValueError('The ListOfSubsystems argument should be a Subsystem object.')
                elif type(ListOfSubsystems) is Subsystem:
                    sub = ListOfSubsystems
                    ListOfSubsystems = []
                    ListOfSubsystems.append(sub)
                else:
                    raise ValueError('The ListOfSubsystems argument should either be a list of Subsystem objects or a single Subsystem object.')

        for sub in ListOfSubsystems:
            if type(sub) is not Subsystem:
                raise ValueError('All elements of the ListOfSubsystem argument should be Subsystem objects')
            model = sub.getSBMLDocument().getModel()
            compartments = model.getNumCompartments()
            if compartments > 1:
                raise ValueError('The subsystem model has more than one compartments. This may lead to errors as it is expected that a subsystem model only has one compartment. To model multiple compartments, make different system objects for different compartment names. Refer to the wiki for more information')
            sub.setCompartments(self.SystemName + '_external')
            self.ListOfExternalSubsystems.append(sub)
        return self.ListOfExternalSubsystems

    def setMembrane(self, subsystem):
        '''
        Set the subsystem argument as the membrane subsystem to this system.
        Returns the updated list of membrane subsystems of this System
        '''
        if type(subsystem) is not Subsystem:
            raise ValueError('The argument should be a Subsystem object.')
        self.ListOfMembraneSubsystems.append(subsystem)
        model = subsystem.getSBMLDocument().getModel()
        numComp = model.getNumCompartments()
        if numComp != 2:
            raise ValueError('A membrane subsystem must have exactly two compartments')
        elif numComp == 2:
            comp1 = model.getCompartment(0)
            comp2 = model.getCompartment(1)
            if comp1.getName() == 'internal' and comp2.getName() == 'external':
                if self.ExternalSystemFlag == True:
                    subsystem.setCompartments([self.SystemName + '_internal',self.ExternalSystem.SystemName + '_internal'])
                else:
                    subsystem.setCompartments([self.SystemName + '_internal',self.SystemName + '_external'])
            elif comp2.getName() == 'internal' and comp1.getName() == 'external':
                if self.ExternalSystemFlag == True:
                    subsystem.setCompartments([self.ExternalSystem.SystemName + '_internal',self.SystemName + '_internal'])
                else:
                    subsystem.setCompartments([self.SystemName + '_external',self.SystemName + '_internal'])
            else:
                raise ValueError('The two compartments of the membrane subsystem must each have a name attribute, with names "internal" and "external"')
        return self.ListOfMembraneSubsystems

    def getModel(self, mode='virtual'):
        '''
        Returns the System model (SBMLDocument object) by combining the models of 
        1. All subsystems internal to the System (in a compartment called '<system_name>_internal')
        2. All subsystems external to the System (in a compartment called '<system_name>_external')
        3. All subsystems in the membrane to the System (in respective compartments called '<system_name>_internal' and '<system_name>_external')
        '''
        system_sbml = createNewSubsystem()
        internal_subsystems = self.ListOfInternalSubsystems
        external_subsystems = self.ListOfExternalSubsystems
        membranes = self.ListOfMembraneSubsystems
        system_sbml.combineSubsystems([internal_subsystems, external_subsystems, membranes],mode)
        return system_sbml.getSBMLDocument()


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

def createSubsystem(filename, subsystemName = ''):
    ''' 
    Creates a new Subsystem object inside the System
    with the SubsystemName suffixed to all elements of the given SBML filename
    Returns the created Subsystem object.
    '''
    # 1. Read the SBML model
    # 2. Create an object of the Subsystem class with the SBMLDocument read in Step 1
    sbmlDoc = getFromXML(filename)
    model = sbmlDoc.getModel()
    subsystem = Subsystem(sbmlDoc)
    if subsystem.getSBMLDocument().getLevel() != latestLevel or subsystem.getSBMLDocument().getVersion() != latestVersion:
        warnings.warn('Subsystem SBML model is not the latest. Converting to the latest SBML level and version')
        subsystem.convertSubsystemLevelAndVersion(latestLevel,latestVersion)
    subsystem.suffixAllElementIds(subsystemName)
    if model.getNumCompartments() == 0:
        warnings.warn('No compartments in the Subsystem model, the System compartment will be used. Compartment Size will be set to zero for this Subsystem.')
    elif model.getNumCompartments() > 1:
        print('The subsystem from ' + filename + ' has multiple compartments')
        warnings.warn('More than 1 compartments found in the Subsystem model. Check resulting models for consistency.')

    if not model.getCompartment(0).isSetSize():
        warnings.warn('Compartment Size attribute is not set. Setting to one.')
        model.getCompartment(0).setSize(1)

    return subsystem 

def combineSystems(ListOfSystems, mode = 'virtual'):
    '''
    Returns a combined model (SBMLDocument object) of different Systems by combining - 
    1. All subsystems internal, external, and membrane of all Systems given in the ListOfSystems argument.
    2. All subsystems are added to a list, duplicates are removed, and combined.
    '''
    newSS = createNewSubsystem()
    ListOfAllSubsystems = []
    if type(ListOfSystems) is not list:
        raise ValueError('The argument ListOfSystems should be a list of System objects')
    for sys in ListOfSystems:
        if type(sys) is not System:
            raise ValueError('All items of ListOfSystems argument should be System objects')
        ListOfAllSubsystems.append(sys.ListOfInternalSubsystems)
        ListOfAllSubsystems.append(sys.ListOfExternalSubsystems)
        ListOfAllSubsystems.append(sys.ListOfMembraneSubsystems)
    # Flatten the list out
    ListOfSubsystems = []
    for sublist in ListOfAllSubsystems:
        for sub in sublist:
            if type(sub) is Subsystem:
                ListOfSubsystems.append(sub)
            elif type(sub) is list:
                for s in sub:
                    if type(s) is not Subsystem:
                        raise ValueError('All items in list of subsystems should be Subsystem objects')
                    ListOfSubsystems.append(s)
            else:
                raise ValueError('All items in list of subsystems should be Subsystem object')
                
    # Remove duplicate elements from ListOfSubsystems
    subsystem_list_final = []
    for subsystem in ListOfSubsystems:
        if subsystem not in subsystem_list_final:
            subsystem_list_final.append(subsystem)
    newSS.combineSubsystems(subsystem_list_final, mode)
    return newSS.getSBMLDocument()