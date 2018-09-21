from modules.System import *
from modules.Subsystem import *

cell = System('cell')
DP1 = cell.createSubsystem('models/DP.xml', '1')
DP2 = cell.createSubsystem('models/DP.xml', '2')
cell.setListOfSharedResources(['inP', 'X'])
cell.setSize(5)
shared_model = cell.setSharedResources('volume')
writeSBML(shared_model, 'models/test.xml')


