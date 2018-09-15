from modules.System import *
from modules.Subsystem import *

cell = System('cell')
IFFL = cell.createSubsystem('models/IFFL.xml','1')
IFFL.setFastReactions(1)
writeSBML(IFFL.getSubsystemDoc(),'models/IFFLfast.xml')
timepointsFast = np.linspace(0,10000,10)
IFFLreduced = IFFL.modelReduce(timepointsFast)
writeSBML(IFFLreduced.getSubsystemDoc(),'models/IFFLreduced.xml')
timepoints = np.linspace(0,10,1000)
plotSbmlWithBioscrape(['models/IFFLfast.xml','models/IFFLreduced.xml'],0,timepoints,[['inp_IFFL','out_IFFL'],['inp_IFFL','out_IFFL']])

