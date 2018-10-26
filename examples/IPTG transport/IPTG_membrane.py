##### Creating a membrane model for IPTG transport####

from subsbml import *

MB = createNewSubsystem()

model = MB.createNewModel('IPTG_membrane','second','mole','substance')
simpleModel = SimpleModel(model)
per_second = simpleModel.createNewUnitDefinition('per_second',libsbml.UNIT_KIND_SECOND,-1,0,1)
substance = simpleModel.createNewUnitDefinition('substance',libsbml.UNIT_KIND_DIMENSIONLESS, 1, 0, 1)

simpleModel.createNewCompartment('internal','internal',1,'litre',True)
simpleModel.createNewCompartment('external','external',1,'litre',True)


simpleModel.createNewSpecies( 'IPTG','external',0,False,'substance')
simpleModel.createNewSpecies( 'IPTG','internal',0,False,'substance')
simpleModel.createNewSpecies( 'protein alHL*','internal',0,False,'substance')
simpleModel.createNewSpecies( 'IPTG:protein alHL*','internal',0,False,'substance')

simpleModel.createNewParameter( 'kb',2,False,'per_second')
simpleModel.createNewParameter( 'kd',1,False,'per_second')

r1 = SimpleReaction(model.createReaction())
r1.setId('r1')
r1.setReversible(True)
r1.createNewReactant('IPTG',False,1)
r1.createNewReactant('xxprotein_alHL', False, 1)
r1.createNewProduct('xxIPTG_protein_alHL', False, 1)
math_r1 = r1.createMath('kb * IPTG * xxprotein_alHL - kd * xxIPTG_protein_alHL')
r1.createRate(math_r1)

r2 = SimpleReaction(model.createReaction())
r2.setId('r2')
r2.setReversible(True)
r2.createNewReactant('xxIPTG_protein_alHL',False,1)
r2.createNewProduct('IPTG_1',False,1)
r2.createNewProduct('xxprotein_alHL',False,1)
math_r2 = r2.createMath('kd * xxIPTG_protein_alHL - kb * IPTG_1 * xxprotein_alHL')
r2.createRate(math_r2)



# Write to XML file 
libsbml.writeSBML(MB.getSBMLDocument(),'models/IPTG_membrane.xml')
