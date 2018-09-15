import numpy as np
from libsbml import *
from modules.Subsystem import *
from modules.System import *

cell = System('cell')
# B0 - promoter sigX - utr1 - tetR
B0 = cell.createSubsystem('models/B0.xml','B0')
# SBML model gets converted to Level 3 Version 1
writeSBML(B0.getSubsystemDoc(),'models/B0converted.xml')
# Simulate using bioscrape
timepoints = np.linspace(0,14*60*60,1000)

plotSbmlWithBioscrape('models/B0converted.xml',0,
timepoints,['protein tetRdimer'],'Time',
'concentration (nM)',14,14)
