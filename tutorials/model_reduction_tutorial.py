from modules.System import *
from modules.Subsystem import *

# Create a System object to place the Subsystems in
cell = System('cell')


### Model reduction
# Create a Double Phosphorylation Subsystem object using SBML model
DP1 = cell.createSubsystem('models/DP.xml','1')

# To set particular reactions as fast, use the following method.
# The following sets the reactions 1st, 2nd and 7th as Fast. 
DP1.setFastReactions([1,2,7])
# DP1.setFastReactions(1)

# To get the list of reactions that are set as Fast in the Subsystem model
# the following method can be used with the Subsystem object.
fast_reactions = DP1.getFastReactions()
# Print the id of the fast reactions obtained above
for rxn in fast_reactions:
    print(rxn.getId())
# To reduce the model, the fast reactions are simulated separately for 
# a fixed length of time and the species concerned with these reactions 
# are fixed at their steady state in the reduced model. The fast reactions 
# are removed from the reduced model. The timepointsForFast defined the timepoints
# for which the fast model will be simulated

timepointsForFast = np.linspace(0,100,10)

# Call the modelReduce method to reduce the given 
# Subsystem model with the timepoints defined above

DP1reduced = DP1.modelReduce(timepointsForFast)

# Write the reduced Subsystem model to a new SBML file
writeSBML(DP1reduced.getSubsystemDoc(),'models/reducedDP.xml')

# Plot the reduced model using bioscrape:
timepoints = np.linspace(0,1000,1000)
print('###### Simulating reduced model... The fast reaction parameters will be marked useless')
time.sleep(2)
plotSbmlWithBioscrape('models/reducedDP.xml',0,timepoints,['inP','X:P:P'])



