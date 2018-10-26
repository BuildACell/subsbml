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

cell_sub.setSpeciesAmount('IPTG',5000, 'cell_external')
# cell_sub.setSpeciesAmount('RNAP',50000)
# cell_sub.setSpeciesAmount('Ribo',5000)
libsbml.writeSBML(cell_model,'models/cell_transport_model.xml')

### If bioscrape is installed, uncomment the following to simulate the model. Otherwise, use your own preferred simulator with the SBML model generated above. 
timepoints = np.linspace(0,14*60*60,100)
# cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[0, 5, 10, 100, 15, 30], ['IPTG'], timepoints, 'reset', compartmentInput= 'cell_internal',compartmentSpecies = 'cell_internal')
# cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[0, 5, 10, 100, 15, 30], ['IPTG'], timepoints, 'reset', compartmentInput= 'cell_internal',compartmentSpecies = 'cell_external')
# cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[5, 100, 15], ['protein deGFP*', 'RNAP', 'Ribo'], timepoints, 'reset', 'cell_internal')
# cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[0,5, 20, 100, 15, 30], ['protein deGFP*'], timepoints, 'reset', 'cell_internal')
cell_sub.simulateVariableInputsBioscrape(['DNA plac--utr1--deGFP', 'DNA pOR1OR2--utr1--alHL'], [[5,5],[5,10],[5,20],[10,5],[10,10],[10,20],[20,5],[20,10],[20,20]], ['protein deGFP*'], timepoints, 'reset', ['cell_internal','cell_internal'],'cell_internal','matrix')

