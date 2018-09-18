from modules.SimpleModel import *
from modules.System import *

ss1 = createNewSubsystem()
model_obj = ss1.createNewModel('EnzymaticReaction','second','mole','count')
model = SimpleModel(model_obj)

model.createNewUnitDefinition('per_second',UNIT_KIND_SECOND,-1)

model.createNewUnitDefinition('litre_per_mole_per_second', [UNIT_KIND_MOLE, UNIT_KIND_LITRE, UNIT_KIND_SECOND],[-1,1,-1])
model.createNewUnitDefinition('mole_per_litre', [UNIT_KIND_MOLE, UNIT_KIND_LITRE],[1,-1])
model.createNewCompartment('cytosol','cytosol',1e-14,'litre')
model.createNewSpecies(['ES','E','P','S'],'cytosol',[0,5e-21,0,1e-20], False,'mole_per_litre')
model.createNewParameter(['koff','kcat'],[0.2,0.1],True, 'per_second')
model.createNewParameter('kon',100000, True, 'litre_per_mole_per_second')

model.createNewReaction('veq','E + S <-> ES','cytosol * kon*E*S - cytosol* koff*ES',False, False)
model.createNewReaction('vcat','ES --> E + P','cytosol*kcat*ES',False,False)

writeSBML(model.getModel().getSBMLDocument(),'models/EnzymaticReaction.xml')