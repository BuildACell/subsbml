import numpy as np
from subsbml import *

cell = System('cell')
# B0 - promoter sigX - utr1 - tetR
B0 = cell.createSubsystem('models/B0.xml','B0')
# SBML model gets converted to Level 3 Version 1
libsbml.writeSBML(B0.getSBMLDocument(),'models/B0converted.xml')
# Simulate using bioscrape
timepoints = np.linspace(0,14*60*60,1000)

B0.plotBioscrape(['protein tetRdimer'],timepoints)
