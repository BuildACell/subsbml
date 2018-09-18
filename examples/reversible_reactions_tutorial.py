from modules.System import *
from modules.Subsystem import *

# Create a System object to place the Subsystems in
cell = System('cell')

## Reversible reactions 

# Tutorial on how to get the list of reversible reactions in the model
# and how to set new reactions as reversible
DP2 = cell.createSubsystem('models/DP.xml','2')

# To get the reactions that are set as reversible, 
# the following method can be used on the Subsystem object
reversible_rxns = DP2.getReversibleReactions()
# Print the ids of the reactions that are reversible
# for rxn in reversible_rxns:
#     print(rxn.getId())

# Create the new parameters in the Subsystem model that will be introduced
# (if any) on changing the rate formula
model_obj = SimpleModel(DP2.getSubsystemDoc().getModel())
model_obj.createNewParameter('k2r',1,True,'per_second')
model_obj.createNewParameter('k2f',1,True,'per_second')

# Set the reactions indexes in the first argument as reversible 
# and the new rate formula of the corresponding reactions given in the second argument
DP2_new = DP2.setReversibleReactions(2,'k2f*'+model_obj.getSpeciesByName('inP:X').getId()+ '- k2r*' + model_obj.getSpeciesByName('inP').getId() +'*' + model_obj.getSpeciesByName('X:P').getId())

# To keep the rate formula unchanged, the second argument can be skipped, it is optional.

# To unset some reactions reversible attribute, use the following method
# A new rate formula of the corresponding reactions can be given as the second argument
# However, it is not mandatory.
DP2_new1 = DP2.unsetReversibleReactions([1])


# To keep the rate formula unchanged, the second argument can be skipped, it is optional.

# Checking the new list of reversible reactions
reversible_rxns = DP2_new1.getReversibleReactions()
for rxn in reversible_rxns:
    print(rxn.getId())

# Write the new Subsystem to SBML file
writeSBML(DP2_new.getSubsystemDoc(), 'models/reversibleSetDP2.xml')
timepoints = np.linspace(0,1000,1000)
plotSbmlWithBioscrape('models/reversibleSetDP2.xml', 0, timepoints, ['inP','X:P:P'])
