from modules.System import *
from modules.Subsystem import *
from modules.SimpleModel import *
from modules.SimpleReaction import *

# Create a System object to hold the Subsystem
cell = System('cell')

IFFL = cell.createNewSubsystem(3,1)

# Create a Model object inside the Subsystem object 
# Usage - self.createNewModel(modelID, modelTimeUnits, modelExtentUnits, modelSubstanceUnits)

model = IFFL.createNewModel('IFFLmodel', 'second','mole','count')

# Create the simpleModel of the SimpleModel class to use the functions helpful in creating the model from scratch easily
simpleModel = SimpleModel(model)

# Create a unit definition for rate constants
# Usage - self.createNewUnitDefinition(unitId, unitKind, unitExponent, unitScale, unitMultiplier)
# Returns a UnitDefinition object
per_second = simpleModel.createNewUnitDefinition('per_second',UNIT_KIND_SECOND, -1, 0, 1)
count = simpleModel.createNewUnitDefinition('count',UNIT_KIND_DIMENSIONLESS, 1, 0, 1)

# Create a compartment for the species 
# Usage - self.createNewCompartment(Id, Name, Size, Units, isConstant)
# Returns a Compartment object
comp = simpleModel.createNewCompartment('cell','cell',1,'litre',True)

# Create all species one by one. Only need one call to createNewSpecies to create a species 
# Usage - self.createNewSpecies(Id, Name, Compartment, InitialAmount,
#  IsConstant, IsBoundaryCondition, SubstanceUnit, HasOnlySubstanceUnits)
# Return a Species object.
inp_IFFL = simpleModel.createNewSpecies('inp_IFFL','cell',50,False,'count',False)
DA_IFFL = simpleModel.createNewSpecies('DA_IFFL','cell',50,False,'count',False)
C1_IFFL = simpleModel.createNewSpecies('C1_IFFL','cell',0,False,'count',False)

mA_IFFL = simpleModel.createNewSpecies('mA_IFFL','cell',0,False,'count',False)

pA_IFFL = simpleModel.createNewSpecies('pA_IFFL','cell',0,False,'count',False)

C2_IFFL = simpleModel.createNewSpecies('C2_IFFL','cell',0,False,'count',False)
DB_IFFL = simpleModel.createNewSpecies('DB_IFFL','cell',50,False,'count',False)

mB_IFFL = simpleModel.createNewSpecies('mB_IFFL','cell',0,False,'count',False)
pB_IFFL = simpleModel.createNewSpecies('pB_IFFL','cell',0,False,'count',False)

C3_IFFL = simpleModel.createNewSpecies('C3_IFFL','cell',0,False,'count',False)
DC_IFFL = simpleModel.createNewSpecies('DC_IFFL','cell',50,False,'count',False)

C4_IFFL = simpleModel.createNewSpecies('C4_IFFL','cell',0,False,'count',False)

C5_IFFL = simpleModel.createNewSpecies('C5_IFFL','cell',0,False,'count',False)

C6_IFFL = simpleModel.createNewSpecies('C6_IFFL','cell',0,False,'count',False)

mC_IFFL = simpleModel.createNewSpecies('mC_IFFL','cell',0,False,'count',False)

out_IFFL = simpleModel.createNewSpecies('out_IFFL','cell',0,False,'count',False)

# Create all parameters 
# Usage - self.createNewParameter(Id, Name, Value, isConstant, Unit)
# Returns a Parameter object

k1f = simpleModel.createNewParameter('k1f',1,False,'per_second')
k1r = simpleModel.createNewParameter('k1r',1,False,'per_second')

k2f = simpleModel.createNewParameter('k2f',1,False,'per_second')

k3f = simpleModel.createNewParameter('k3f',1,False,'per_second')

k4f = simpleModel.createNewParameter('k4f',1,False,'per_second')

k5f = simpleModel.createNewParameter('k5f',1,False,'per_second')

k6f = simpleModel.createNewParameter('k6f',1,False,'per_second')
k6r = simpleModel.createNewParameter('k6r',1,False,'per_second')

k7f = simpleModel.createNewParameter('k7f',1,False,'per_second')

k8f = simpleModel.createNewParameter('k8f',1,False,'per_second')

k9f = simpleModel.createNewParameter('k9f',1,False,'per_second')

k10f = simpleModel.createNewParameter('k10f',1,False,'per_second')

k11f = simpleModel.createNewParameter('k11f',1,False,'per_second')
k11r = simpleModel.createNewParameter('k11r',1,False,'per_second')

k12f = simpleModel.createNewParameter('k12f',1,False,'per_second')
k12r = simpleModel.createNewParameter('k12r',1,False,'per_second')

k13f = simpleModel.createNewParameter('k13f',1,False,'per_second')
k13r = simpleModel.createNewParameter('k13r',1,False,'per_second')

k14f = simpleModel.createNewParameter('k14f',1,False,'per_second')
k14r = simpleModel.createNewParameter('k14r',1,False,'per_second')

k15f = simpleModel.createNewParameter('k15f',1,False,'per_second')

k16f = simpleModel.createNewParameter('k16f',1,False,'per_second')

k17f = simpleModel.createNewParameter('k17f',1,False,'per_second')

k18f = simpleModel.createNewParameter('k18f',1,False,'per_second')

# Create all reactions. To create a reaction there are 3 steps - createReactants, createProducts, createRateExpression
# Usage - Create an object of SimpleReaction class which allows the use of 
# createReactant, createProduct and other Reaction related member functions
# self.createNewReactant(species_id, isConstant, Stoichiometry)
# self.createMath(math_expression_as_a_string)

r1 = SimpleReaction(model.createReaction())
r1.getReaction().setId('r1')
r1.getReaction().setReversible(True)
r1.getReaction().setFast(False)
r1.createNewReactant('inp_IFFL',False,1)
r1.createNewReactant('DA_IFFL',False,1)
r1.createNewProduct('C1_IFFL',False,1)
math_r1 = r1.createMath('k1f * inp_IFFL * DA_IFFL - k1r * C1_IFFL')
r1.createRate(math_r1)


r2 = SimpleReaction(model.createReaction())
r2.getReaction().setId('r2')
r2.getReaction().setReversible(False)
r2.getReaction().setFast(False)
r2.createNewReactant('C1_IFFL',False,1)
r2.createNewProduct('C1_IFFL',False,1)
r2.createNewProduct('mA_IFFL',False,1)
math_r2 = r2.createMath('k2f * C1_IFFL')
r2.createRate(math_r2)

r3 = SimpleReaction(model.createReaction())
r3.getReaction().setId('r3')
r3.getReaction().setReversible(False)
r3.getReaction().setFast(False)
r3.createNewReactant('mA_IFFL',False,1)
r3.createNewProduct('mA_IFFL',False,1)
r3.createNewProduct('pA_IFFL',False,1)
math_r3 = r3.createMath('k3f * mA_IFFL')
r3.createRate(math_r3)

r4 = SimpleReaction(model.createReaction())
r4.getReaction().setId('r4')
r4.getReaction().setReversible(False)
r4.getReaction().setFast(False)
r4.createNewReactant('mA_IFFL',False,1)
math_r4 = r4.createMath('k4f * mA_IFFL')
r4.createRate(math_r4)

r5 = SimpleReaction(model.createReaction())
r5.getReaction().setId('r5')
r5.getReaction().setReversible(False)
r5.getReaction().setFast(False)
r5.createNewReactant('pA_IFFL',False,1)
math_r5 = r5.createMath('k5f * pA_IFFL')
r5.createRate(math_r5)

r6 = SimpleReaction(model.createReaction())
r6.getReaction().setId('r6')
r6.getReaction().setReversible(True)
r6.getReaction().setFast(False)
r6.createNewReactant('pA_IFFL',False,1)
r6.createNewReactant('DB_IFFL',False,1)
r6.createNewProduct('C2_IFFL',False,1)
math_r6 = r6.createMath('k6f * pA_IFFL * DB_IFFL - k6r * C2_IFFL')
r6.createRate(math_r6)

r7 = SimpleReaction(model.createReaction())
r7.getReaction().setId('r7')
r7.getReaction().setReversible(False)
r7.getReaction().setFast(False)
r7.createNewReactant('C2_IFFL',False,1)
r7.createNewProduct('C2_IFFL',False,1)
r7.createNewProduct('mB_IFFL',False,1)
math_r7 = r7.createMath('k7f * C2_IFFL')
r7.createRate(math_r7)

r8 = SimpleReaction(model.createReaction())
r8.getReaction().setId('r8')
r8.getReaction().setReversible(False)
r8.getReaction().setFast(False)
r8.createNewReactant('mB_IFFL',False,1)
r8.createNewProduct('mB_IFFL',False,1)
r8.createNewProduct('pB_IFFL',False,1)
math_r8 = r8.createMath('k8f * mB_IFFL')
r8.createRate(math_r8)

r9 = SimpleReaction(model.createReaction())
r9.getReaction().setId('r9')
r9.getReaction().setFast(False)
r9.getReaction().setReversible(False)
r9.createNewReactant('mB_IFFL',False,1)
math_r9 = r9.createMath('k9f * mB_IFFL')
r9.createRate(math_r9)

r10 = SimpleReaction(model.createReaction())
r10.getReaction().setId('r10')
r10.getReaction().setReversible(False)
r10.getReaction().setFast(False)
r10.createNewReactant('pB_IFFL',False,1)
math_r10 = r10.createMath('k10f * pB_IFFL')
r10.createRate(math_r10)

r11 = SimpleReaction(model.createReaction())
r11.getReaction().setId('r11')
r11.getReaction().setReversible(True)
r11.getReaction().setFast(False)
r11.createNewReactant('pB_IFFL',False,1)
r11.createNewReactant('DC_IFFL',False,1)
r11.createNewProduct('C3_IFFL',False,1)
math_r11 = r11.createMath('k11f * pB_IFFL * DC_IFFL - k11r * C3_IFFL')
r11.createRate(math_r11)

r12 = SimpleReaction(model.createReaction())
r12.getReaction().setId('r12')
r12.getReaction().setReversible(True)
r12.getReaction().setFast(False)
r12.createNewReactant('pA_IFFL',False,1)
r12.createNewReactant('DC_IFFL',False,1)
r12.createNewProduct('C4_IFFL',False,1)
math_r12 = r12.createMath('k12f * pA_IFFL * DC_IFFL - k12r * C4_IFFL')
r12.createRate(math_r12)

r13 = SimpleReaction(model.createReaction())
r13.getReaction().setId('r13')
r13.getReaction().setReversible(True)
r13.getReaction().setFast(False)
r13.createNewReactant('pA_IFFL',False,1)
r13.createNewReactant('C3_IFFL',False,1)
r13.createNewProduct('C5_IFFL',False,1)
math_r13 = r13.createMath('k13f * pA_IFFL * C3_IFFL - k13r * C5_IFFL')
r13.createRate(math_r13)

r14 = SimpleReaction(model.createReaction())
r14.getReaction().setId('r14')
r14.getReaction().setReversible(True)
r14.getReaction().setFast(False)
r14.createNewReactant('pB_IFFL',False,1)
r14.createNewReactant('C4_IFFL',False,1)
r14.createNewProduct('C6_IFFL',False,1)
math_r14 = r14.createMath('k14f * pB_IFFL * C4_IFFL - k14r * C6_IFFL')
r14.createRate(math_r14)

r15 = SimpleReaction(model.createReaction())
r15.getReaction().setId('r15')
r15.getReaction().setReversible(False)
r15.getReaction().setFast(False)
r15.createNewReactant('C4_IFFL',False,1)
r15.createNewProduct('C4_IFFL',False,1)
r15.createNewProduct('mC_IFFL',False,1)
math_r15 = r15.createMath('k15f * C4_IFFL')
r15.createRate(math_r15)

r16 = SimpleReaction(model.createReaction())
r16.getReaction().setId('r16')
r16.getReaction().setReversible(False)
r16.getReaction().setFast(False)
r16.createNewReactant('mC_IFFL',False,1)
r16.createNewProduct('mC_IFFL',False,1)
r16.createNewProduct('out_IFFL',False,1)
math_r16 = r16.createMath('k16f * mC_IFFL')
r16.createRate(math_r16)

r17 = SimpleReaction(model.createReaction())
r17.getReaction().setId('r17')
r17.getReaction().setReversible(False)
r17.getReaction().setFast(False)
r17.createNewReactant('mC_IFFL',False,1)
math_r17 = r17.createMath('k17f * mC_IFFL')
r17.createRate(math_r17)

r18 = SimpleReaction(model.createReaction())
r18.getReaction().setId('r18')
r18.getReaction().setReversible(False)
r18.getReaction().setFast(False)
r18.createNewReactant('out_IFFL',False,1)
math_r18 = r18.createMath('k18f * out_IFFL')
r18.createRate(math_r18)

# Write SBML file in XML
writeSBML(IFFL.getSBMLDocument(),'models/IFFL.xml')

# Simulate 
timepoints = np.linspace(0,10,1000)
plotSbmlWithBioscrape('models/IFFL.xml',0,
timepoints, ['inp_IFFL', 'out_IFFL'], 'Time', 'Species',14,14)