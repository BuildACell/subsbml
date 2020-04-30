##### Creating a IPTG reservoir model####

from subsbml import *

IPTG = createNewSubsystem()

model = IPTG.createNewModel('IPTG_reservoir','second','mole','substance')
simpleModel = SimpleModel(model)
per_second = simpleModel.createNewUnitDefinition('per_second',libsbml.UNIT_KIND_SECOND,-1,0,1)
substance = simpleModel.createNewUnitDefinition('substance',libsbml.UNIT_KIND_DIMENSIONLESS, 1, 0, 1)

simpleModel.createNewCompartment('env','env',1,'litre',True)


simpleModel.createNewSpecies( 'IPTG','env',100000,False,'substance')


# Write to XML file 
libsbml.writeSBML(IPTG.getSBMLDocument(),'models/IPTG_reservoir.xml')
