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
cell_sub.setSpeciesAmount('RNAP',50000)
cell_sub.setSpeciesAmount('Ribo',5000)
libsbml.writeSBML(cell_model,'models/cell_transport_model.xml')

### If bioscrape is installed, uncomment the following to simulate the model. Otherwise, use your own preferred simulator with the SBML model generated above. 
timepoints = np.linspace(0,10*60*60,100)
# cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[0, 5, 10, 100, 15, 30], ['IPTG'], timepoints, 'reset', compartmentInput= 'cell_internal',compartmentSpecies = 'cell_internal')
# cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[0, 5, 10, 100, 15, 30], ['IPTG'], timepoints, 'reset', compartmentInput= 'cell_internal',compartmentSpecies = 'cell_external')
cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[5, 10, 15, 100], ['protein deGFP*', 'RNAP', 'Ribo'], timepoints, mode = 'reset')
# cell_sub.simulateVariableInputsBioscrape('DNA pOR1OR2--utr1--alHL',[0,5, 10, 20, 100], ['protein deGFP*'], 
    # timepoints, mode = 'reset', compartmentInput = 'cell_internal', compartmentSpecies= 'cell_internal', 
    # plotShow = 'single', xlabel = 'time', ylabel = 'concentration',title = 'deGFP with varying DNA-alHL (without resource limits)',
    # lineWidth = 2, sizeOfXLabels = 12, sizeOfYLabels = 12, legendFontSize= 8)
# cell_sub.simulateVariableInputsBioscrape(ListOfInputs = ['DNA plac--utr1--deGFP', 'DNA pOR1OR2--utr1--alHL'], ListOfListOfAmounts = [[5,5],[5,15],[5,25],[15,5],[15,15],[15,20],[20,5],[20,15],[20,25]], ListOfSpeciesToPlot = ['protein deGFP*'], timepoints = timepoints, mode = 'reset', compartmentInput = ['cell_internal','cell_internal'],compartmentSpecies= 'cell_internal', plotShow = 'matrix', xlabel = 'time', ylabel = 'concentration', lineWidth = 2, sizeOfXLabels = 12, sizeOfYLabels = 12, legendFontSize= 6)
# cell_sub.simulateVariableInputsBioscrape(ListOfInputs = ['DNA plac--utr1--deGFP', 'DNA pOR1OR2--utr1--alHL'], ListOfListOfAmounts = [[5,5],[5,10],[20,5],[20,10]], ListOfSpeciesToPlot = ['protein deGFP*'], timepoints = timepoints, mode = 'reset', plotShow = 'matrix', legendFontSize = 6)

