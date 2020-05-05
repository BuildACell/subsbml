import numpy as np
from subsbml import *

cell = System('cell')

# B1 - promoter sigX - utr1 - tetR
# B1 - pLac - utr1 - sigmaX (constituitively expressed protein sigmaX - input plasmid)
B1 = cell.createSubsystem('models/B1.xml','B1')
# SBML model gets converted to Level 3 Version 1
libsbml.writeSBML(B1.getSBMLDocument(),'models/B1converted.xml')
# Simulate using bioscrape
timepoints = np.linspace(0,14*60*60000,1000)

B1.plotBioscrape(['protein tetRdimer','protein sigmaX'],timepoints)


tetR_id = B1.getSpeciesByName('protein tetRdimer').getId()
sigmaX_id = B1.getSpeciesByName('protein sigmaX').getId()
results, _ = B1.simulateWithBioscrape(timepoints)

import pylab as plt
plt.plot(timepoints, results[tetR_id])
plt.plot(timepoints, results[sigmaX_id])
plt.show()