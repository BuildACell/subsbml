import numpy as np
from libsbml import *
from modules.Subsystem import *
from modules.System import *

cell = System('cell')

alHL = createSubsystem('models/alHL.xml','SS1')
GFP = createSubsystem('models/GFP.xml', 'SS2')

membrane = createSubsystem('models/IPTG_membrane.xml')

external = createSubsystem('models/IPTG_reservoir.xml','SS3')

cell.setInternal([alHL, GFP])
cell.setExternal(external)

cell.setMembrane(membrane)


cell_model = cell.getModel('volume')

cell_sub = Subsystem(cell_model)
cell_sub.setSpeciesAmount('IPTG',0, 'cell_external')
writeSBML(cell_model,'models/cell_transport_model.xml')

timepoints = np.linspace(0,14*60*60,100)
plotSbmlWithBioscrape('models/cell_transport_model.xml',0,
timepoints,['protein alHL','protein deGFP*','protein lacI', 'IPTG'])