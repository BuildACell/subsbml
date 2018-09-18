from modules.Subsystem import *
from modules.System import * 

ss1 = createSubsystem('models/DP.xml','DP1')
ss2 = createSubsystem('models/DP.xml','DP2')
ss2.renameSName('X:P:P','X:P:P_DP2')
ss3 = createSubsystem('models/IFFL.xml')

map = {}
map['pA_IFFL'] = 'X:P:P'
map['pB_IFFL'] = 'X:P:P_DP2'

connected_sub = createNewSubsystem()
connected_model = connected_sub.connectSubsystems([ss1,ss2,ss3], map, 'virtual',True,'constant',[50,50])
# connected_model = connected_sub.combineSubsystems([ss1,ss2,ss3])

writeSBML(connected_model, 'models/test_connect.xml')