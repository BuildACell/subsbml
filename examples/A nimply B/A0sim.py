import numpy as np
from subsbml import *

cell = System('cell')
# A0 - promoter sig28 -tetO - utr1 - deGFP
A0 = cell.createSubsystem('models/A0.xml','A0')
# SBML model gets converted to Level 3 Version 2
# libsbml.writeSBML(A0.getSBMLDocument(),'models/A0converted.xml')
# Simulate using bioscrape
timepoints = np.linspace(0,14*60*60,1000)

A0.plotBioscrape(['protein deGFP*','protein sigma28'],timepoints, xlabel = 'Time',
ylabel = 'concentration (nM)',sizeOfXLabels = 14,sizeOfYLabels = 14)
