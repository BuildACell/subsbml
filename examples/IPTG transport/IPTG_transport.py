from subsbml import *

alHL = createSubsystem('models/alHL.xml')
GFP = createSubsystem('models/GFP.xml')
membrane = createSubsystem('models/IPTG_membrane.xml')

external = createSubsystem('models/IPTG_reservoir.xml')

cell = System('cell')

cell.setInternal([alHL, GFP])
cell.setExternal(external)

cell.setMembrane(membrane)
cell_model, cell_sub = cell.getModel()

cell_sub.setSpeciesAmount('IPTG',0, 'cell_external')
libsbml.writeSBML(cell_model,'models/cell_transport_model.xml')

### If bioscrape is installed, uncomment the following to simulate the model. Otherwise, use your own preferred simulator with the SBML model generated above. 
timepoints = np.linspace(0,14*60*60,100)
cell_sub.simulateVariableInputsBioscrape('IPTG',[0, 20, 30, 60, 80], ['protein deGFP*'], timepoints, 'reset', 'cell_external')

