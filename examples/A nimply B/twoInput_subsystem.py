from subsbml import *


# Create a System to hold the Subsystems
cell = System('cell')

# Create a new SBML Document to hold the subsystem model
twoInput = cell.createNewSubsystem()

# Create a new model inside the document
model = twoInput.createNewModel('in','second','mole','count')
# Creating the model object to use simple model creation commands that follow
simpleModel = SimpleModel(model)
count = simpleModel.createNewUnitDefinition('count',libsbml.UNIT_KIND_DIMENSIONLESS, 1, 0, 1)
per_second = simpleModel.createNewUnitDefinition('per_second',libsbml.UNIT_KIND_SECOND,-1,0,1)
simpleModel.createNewCompartment('cell','cell',1,'litre',True)
simpleModel.createNewSpecies('inputA','cell',0,False,'count')
simpleModel.createNewSpecies('inputB','cell',0,False,'count')

if libsbml.writeSBML(twoInput.getSBMLDocument(), 'models/twoInput.xml'):
    print('Successfully written SBML file')





