import numpy as np
from libsbml import *
from modules.Subsystem import *
from modules.System import *

cell = System('cell')

AnB_ss = cell.createSubsystem('models/AnB_ss.xml','AnB')
Input = cell.createSubsystem('models/twoInput.xml')

connection_logic = {}
connection_logic['inputA'] = 'OC6HSL'
connection_logic['inputB'] = 'OC12HSL'

simpleModel = SimpleModel(AnB_ss.getSBMLDocument().getModel())
# switch off the leaky expression by setting the corresponding rate parameters zero
plux_leaky_param = 'TXTL_PLUX_RNAPbound_F'
plas_leaky_param = 'TXTL_PLAS_RNAPbound_F'
plux_par = simpleModel.getParameterByName(plux_leaky_param)
plas_par = simpleModel.getParameterByName(plas_leaky_param)
check(plux_par.setValue(0), 'setting leaky parameter zero')
check(plas_par.setValue(0), 'setting leaky parameter zero')

connected = createNewSubsystem(3,1)
# connected.connectSubsystems([AnB_ss, Input], connection_logic, 'virtual', True)
connected.connectSubsystems([AnB_ss, Input], connection_logic, 'virtual', True)
writeSBML(connected.getSBMLDocument(), 'models/AnBconnected.xml')
# Simulate 00 case
timepoints = np.linspace(0,14*60*60,2000)
# plotSbmlWithBioscrape('models/AnBconnected.xml',0,timepoints,['protein tetRdimer', 'protein deGFP*', 'protein lasR', 'protein luxR'])

simpleModel = SimpleModel(connected.getSBMLDocument().getModel())
oc6 = simpleModel.getSpeciesByName('OC6HSL')
oc12 = simpleModel.getSpeciesByName('OC12HSL')

oc6.setInitialAmount(0)
oc12.setInitialAmount(500)

writeSBML(connected.getSBMLDocument(), 'models/AnBconnected01.xml')
# Simulate 01 case
timepoints = np.linspace(0,14*60*60,2000)
# plotSbmlWithBioscrape('models/AnBconnected01.xml',0,timepoints,['protein tetRdimer', 'protein deGFP*', 'protein lasR', 'protein luxR'])

oc6.setInitialAmount(500)
oc12.setInitialAmount(0)

writeSBML(connected.getSBMLDocument(), 'models/AnBconnected10.xml')
# Simulate 10 case
timepoints = np.linspace(0,14*60*60,500)
# plotSbmlWithBioscrape('models/AnBconnected10.xml',0,timepoints,['protein tetRdimer', 'protein deGFP*', 'protein lasR', 'protein luxR'])

oc6.setInitialAmount(500)
oc12.setInitialAmount(500)


writeSBML(connected.getSBMLDocument(), 'models/AnBconnected11.xml')
# Simulate 11 case
timepoints = np.linspace(0,14*60*60,100)
plotSbmlWithBioscrape('models/AnBconnected11.xml',0,timepoints,['protein tetRdimer', 'protein deGFP*', 'protein lasR', 'protein luxR'])


