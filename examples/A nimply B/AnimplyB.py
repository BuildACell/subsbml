import numpy as np
from subsbml import *

cell = System('cell')
# cell.ListOfSharedResources = ['RNAP']
A0 = cell.createSubsystem('models/A0.xml','A0')
A1 = cell.createSubsystem('models/A1.xml','A1')
B0 = cell.createSubsystem('models/B0.xml','B0')
B1 = cell.createSubsystem('models/B1.xml','B1')

AnB = cell.createSubsystem('models/AnimplyB.xml','AnB')
libsbml.writeSBML(AnB.getSBMLDocument(), 'models/AnimplyB_mod.xml')
# combined00 = createNewSubsystem()
# combined00.combineSubsystems([A0, B0],True, 'virtual')
# libsbml.writeSBML(combined00.getSBMLDocument(),'models/combined00.xml')

# combined01 = createNewSubsystem()
# combined01.combineSubsystems([A0,B1],True, 'volume')
# libsbml.writeSBML(combined01.getSBMLDocument(),'models/combined01.xml')

# combined10 = createNewSubsystem()
# combined10.combineSubsystems([A1, B0],True, 'volume')
# libsbml.writeSBML(combined10.getSBMLDocument(),'models/combined10.xml')


combined11 = createNewSubsystem()
combined11.combineSubsystems([A1, B1],True, 'virtual')
libsbml.writeSBML(combined11.getSBMLDocument(),'models/combined11.xml')

# Simulate using bioscrape
t_end = 14*60*60
points = 1200 
timepoints = np.linspace(0, t_end, points)

# combined = createNewSubsystem()
# combined.combineSubsystems([A1, B1],True, 'virtual')

# ListOfInputs = ['DNA plac--utr1--sigma28','DNA plac--utr1--sigmaX']
# ListOfListOfAmounts = [[0,0],[0.05,0],[0,1.1],[0.05,5]]
# ListOfSpeciesToPlot = ['protein deGFP*', 'protein tetRdimer']
# ListOfSpeciesToPlot = ['protein deGFP', 'protein sigma28', 'protein sigmaX', 'protein deGFP*', 'protein tetR', 'protein tetRdimer']
# combined.simulateVariableInputs(ListOfInputs, ListOfListOfAmounts, ListOfSpeciesToPlot, timepoints, 'reset')

# Single input
# input = 'DNA plac--utr1--sigmaX'
# amounts = [0,5]
# ListOfSpeciesToPlot = ['protein deGFP*', 'protein tetRdimer']
# combined.simulateVariableInputs(input, amounts, ListOfSpeciesToPlot, timepoints, 'reset')



# plotSbmlWithBioscrape('models/combined00.xml',0,
# plotSbmlWithBioscrape('models/combined01.xml',0,
# plotSbmlWithBioscrape('models/combined10.xml',0,
# plotSbmlWithBioscrape('models/combined11.xml',0,
# plotSbmlWithBioscrape('models/AnimplyB_mod.xml',0,
# plotSbmlWithBioscrape('combined11_mod.xml',0,
# plotSbmlWithBioscrape('models/connected11.xml',0,
# timepoints,['protein deGFP*', 'protein tetRdimer'],'Time',
# timepoints,['protein deGFP', 'protein sigma28', 'protein sigmaX', 'protein deGFP*', 'protein tetR', 'protein tetRdimer'],'Time',
# timepoints,['protein deGFP*', 'protein tetRdimer', 'protein sigmaX'],'Time',
# timepoints,['protein deGFP*', 'protein tetRdimer', 'protein sigma28'],'Time',
timepoints,['protein deGFP*','protein sigma28', 'protein sigmaX', 'protein tetRdimer', 'protein deGFP', 'protein tetR'])
