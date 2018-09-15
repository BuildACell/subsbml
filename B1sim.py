import numpy as np
from libsbml import *
from modules.Subsystem import *
from modules.System import *

cell = System('cell')

# B1 - promoter sigX - utr1 - tetR
# B1 - pLac - utr1 - sigmaX (constituitively expressed protein sigmaX - input plasmid)
B1 = cell.createSubsystem('models/B1.xml','B1')
# SBML model gets converted to Level 3 Version 1
writeSBML(B1.getSubsystemDoc(),'models/B1converted.xml')
# Simulate using bioscrape
timepoints = np.linspace(0,14*60*60000,1000)

plotSbmlWithBioscrape('models/B1converted.xml',0,
timepoints,['protein tetRdimer','protein sigmaX'],'Time',
'concentration (nM)',14,14)
