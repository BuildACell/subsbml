##### Creating a Double Phosphorylation SBML model ####

from modules.System import *
from modules.Subsystem import *
from modules.SimpleModel import *
from modules.SimpleReaction import *

# Create a System to hold the Subsystems
cell = System('cell')

# Create a new SBML Document to hold the subsystem model
DP = cell.createNewSubsystem(3,1)

# Create a new model inside the document
model = DP.createNewModel('DP','second','mole','count')
# Creating the model object to use simple model creation commands that follow
simpleModel = SimpleModel(model)

# simpleModel.getModel() returns the libSBML model object and then all methods applicable
# for Model libsbml class can be used. Usage example - 
# model = simpleModel.getModel()
# model.setLengthUnits('count')

# print(simpleModel.getModel().toSBML())
# Create a unit, arguments - id, unitKind, exponent, scale, multiplier
per_second = simpleModel.createNewUnitDefinition('per_second',UNIT_KIND_SECOND,-1,0,1)
count = simpleModel.createNewUnitDefinition('count',UNIT_KIND_DIMENSIONLESS, 1, 0, 1)

# createNewcompartment arguments - compartment ID, Name, Size, Units, isConstant
simpleModel.createNewCompartment('cell','cell',1,'litre',True)

# createNewSpecies arguments - id, name, compartment,
#  initial amount, isConstant, BoundaryCondition = False, Substance units, HasOnlySubstance

simpleModel.createNewSpecies( 'inP','cell',50,False,'count',True, False)
simpleModel.createNewSpecies( 'X','cell',50,False,'count')

simpleModel.createNewSpecies(['inP:X','X:P','E','E:X:P','inP:X:P', 'X:P:P', 'E:X:P:P'],
 'cell',[0,0,50,0,0,0,0], False, 'count')


# simpleModel.createNewSpecies( 'inP_X','inP:X','cell',0,False,False,'count',False)
# simpleModel.createNewSpecies( 'X_P','X:P','cell',0,False,False,'count',False)
# simpleModel.createNewSpecies( 'E','E','cell',50,False,False,'count',False)
# simpleModel.createNewSpecies( 'E_X_P','E:X:P','cell',0,False,False,'count',False)
# simpleModel.createNewSpecies( 'inP_X_P','inP:X:P','cell',0,False,False,'count',False)
# simpleModel.createNewSpecies( 'X_P_P','X:P:P','cell',0,False,False,'count',False)
# simpleModel.createNewSpecies( 'E_X_P_P','E:X:P:P','cell',0,False,False,'count',False)

# print(simpleModel.getModel().toSBML())
# Create all parameters 
# arguments - id, name, value, isConstant, Unit id
simpleModel.createNewParameter( 'k1f',1,False,'per_second')
simpleModel.createNewParameter( 'k1r',1,False,'per_second')

simpleModel.createNewParameter( ['k2f','k3f','k3r','k4f','k5f','k5r','k6f','k7f','k7r','k8f'],
[1,1,1,1,1,1,1,1,1,1],False,'per_second')


# simpleModel.createNewParameter( 'k3f','k3f',1,False,'per_second')
# simpleModel.createNewParameter( 'k3r','k3r',1,False,'per_second')

# simpleModel.createNewParameter( 'k4f','k4f',1,False,'per_second')

# simpleModel.createNewParameter( 'k5f','k5f',1,False,'per_second')
# simpleModel.createNewParameter( 'k5r','k5r',1,False,'per_second')

# simpleModel.createNewParameter( 'k6f','k6f',1,False,'per_second')

# simpleModel.createNewParameter( 'k7f','k7f',1,False,'per_second')
# simpleModel.createNewParameter( 'k7r','k7r',1,False,'per_second')

# simpleModel.createNewParameter( 'k8f','k8f',1,False,'per_second')

# Create all reactions using the SimpleReaction class to call the simple commands to define Reactions
# Arguments - id, isReversible, isFast
simpleModel.createSimpleReaction('r1','inP + X <-> inP:X',
'k1f * inP * X - k1r * inP_X', False, False)
# r1 = SimpleReaction(model.createReaction())
# # Arguments - species id, isConstant, Stoichiometry
# r1.createNewReactant('inP',False,1)
# r1.createNewReactant('X',False,1)
# r1.createNewProduct('inP_X',False,1)
# math_r1 = r1.createMath('k1f * inP * X - k1r * inP_X')
# r1.createRate(math_r1)


r2 = SimpleReaction(model.createReaction())
r2.getReaction().setId('r2')
r2.getReaction().setReversible(False)
r2.getReaction().setFast(False)
r2.createNewReactant('inP_X',False,1)
r2.createNewProduct('inP',False,1)
r2.createNewProduct('X_P',False,1)
math_r2 = r2.createMath('k2f * inP_X')
r2.createRate(math_r2)

simpleModel.createSimpleReaction('r3','E + X:P <-> E:X:P','k3f * E * X_P - k3r * E_X_P')
# r3 = SimpleReaction(simpleModel.createSimpleReaction('r3',True,False))
# r3.createNewReactant('E',False,1)
# r3.createNewReactant('X_P',False,1)
# r3.createNewProduct('E_X_P',False,1)
# math_r3 = r3.createMath('k3f * E * X_P - k3r * E_X_P')
# r3.createRate(math_r3)

simpleModel.createSimpleReaction('r4','E:X:P --> E + X','k4f * E_X_P')
# r4 = SimpleReaction(simpleModel.createSimpleReaction('r4',False,False))
# r4.createNewReactant('E_X_P',False,1)
# r4.createNewProduct('E',False,1)
# r4.createNewProduct('X',False,1)
# math_r4 = r4.createMath('k4f * E_X_P')
# r4.createRate(math_r4)

simpleModel.createSimpleReaction('r5','inP + X:P <-> inP:X:P', 'k5f * inP * X_P - k5r * inP_X_P')
# r5 = SimpleReaction(simpleModel.createSimpleReaction('r5',True,False))
# r5.createNewReactant('inP',False,1)
# r5.createNewReactant('X_P',False,1)
# r5.createNewProduct('inP_X_P',False,1)
# math_r5 = r5.createMath('k5f * inP * X_P - k5r * inP_X_P')
# r5.createRate(math_r5)

simpleModel.createSimpleReaction('r6','inP:X:P --> X:P:P + inP', 'k6f * inP_X_P')
# r6 = SimpleReaction(simpleModel.createSimpleReaction('r6',False,False))
# r6.createNewReactant('inP_X_P',False,1)
# r6.createNewProduct('X_P_P',False,1)
# r6.createNewProduct('inP',False,1)
# math_r6 = r6.createMath('k6f * inP_X_P')
# r6.createRate(math_r6)

simpleModel.createSimpleReaction('r7','E + X:P:P <-> E:X:P:P', 'k7f * E * X_P_P - k7r * E_X_P_P')
# r7 = SimpleReaction(simpleModel.createSimpleReaction('r7',True,False))
# r7.createNewReactant('E',False,1)
# r7.createNewReactant('X_P_P',False,1)
# r7.createNewProduct('E_X_P_P',False,1)
# math_r7 = r7.createMath('k7f * E * X_P_P - k7r * E_X_P_P')
# r7.createRate(math_r7)

simpleModel.createSimpleReaction('r8','E:X:P:P --> X:P + E', 'k8f * E_X_P_P')
# r8 = SimpleReaction(simpleModel.createSimpleReaction('r8',False,False))
# r8.createNewReactant('E_X_P_P',False,1)
# r8.createNewProduct('X_P',False,1)
# r8.createNewProduct('E',False,1)
# math_r8 = r8.createMath('k8f * E_X_P_P')
# r8.createRate(math_r8)


# Write to XML file 
writeSBML(DP.getSBMLDocument(),'models/DP.xml')

# Simulate and plot using bioscrape
timepoints = np.linspace(0, 10, 1000)
plotSbmlWithBioscrape('models/DP.xml',0,timepoints,['inP','X:P:P'],'Time','Input/Output species',14,14)

# Other Model components

# Create a new Constraint 
# Usage - self.createNewConstraint(constraint_mathFormula, constraintName)
constraint = simpleModel.createNewConstraint('k1f>0', 'constraint_name')

# Create new InitialAssignment
# Usage - self.createNewInitialAssignment(initialAssignment_variable, initialAssignment_mathFormula)
simpleModel.createNewInitialAssignment('k2f','2*k1f')

# For Rules, ensure that the consistency according to SBML specifications is maintained
# For documentation, refer to links below.
# Create new AssignmentRule
# Usage - self.createNewAssignmentRule(assignmentRule_variable, assignmentRule_mathFormula)
simpleModel.createNewAssignmentRule('inP','2*X')

# Create new AssignmentRule
# Usage - self.createNewRateRule(rateRule_variable, rateRule_mathFormula)
simpleModel.createNewRateRule('k3f','2')

# Similarly, 
# self.createNewAlgebraicRule(algebraicRule_variable, algebraicRule_mathFormula)
# self.createNewFunctionDefinition(id, functionDefinition_mathFormula, functionDefinition_name)

# Create new Event
# Usage - self.createNewEvent(id, eventTrigger_isPersistent, eventTrigger_initialValue, 
# eventTrigger_mathFormula, eventAssignment_variable, eventAssignment_mathFormula, 
# delay_mathFormula = '', priority_mathFormula = '', useValuesFromTriggerTime = True, name = '')

simpleModel.createNewEvent('ev1',True,True,'k6f<0','k7f','10')

# Write to XML file 
writeSBML(DP.getSBMLDocument(),'models/DP_extended.xml')

# Simulate and plot using bioscrape
timepoints = np.linspace(0, 10, 1000)
plotSbmlWithBioscrape('models/DP_extended.xml',0,timepoints,['inP','X:P:P'],'Time','Input/Output species',14,14)