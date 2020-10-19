from subsbml import *
import time
alHL = createSubsystem('models/alHL.xml')
GFP = createSubsystem('models/GFP.xml')
membrane = createSubsystem('models/IPTG_membrane.xml')

external = createSubsystem('models/IPTG_reservoir.xml')

cell = System('cell')

cell.setInternal([alHL, GFP])
cell.setExternal(external)

cell.setMembrane(membrane)
cell_sub = cell.getModel()

cell_sub.setSpeciesAmount('IPTG',500, 'cell_external')
# cell_sub.setSpeciesAmount('RNAP',50000000)
# cell_sub.setSpeciesAmount('Ribo',50000000)
cell_sub.writeSBML('models/cell_transport_model.xml')
print('######################### Model written successfully to an SBML file named "cell_transport_model" in the model subfolder. Different kinds of simulation options follow now###############################')
try:

    time.sleep(3)
    # Simulations 
    gfp = cell_sub.getSpeciesByName('protein deGFP*')
    timepoints = np.linspace(0,10*60*60,100)


    ### If bioscrape is installed, uncomment the following to simulate the model. Otherwise, use your own preferred simulator with the SBML model generated above. 
    cell_sub.simulateVariableInputs('IPTG',[0, 40, 60, 80, 100], ['protein deGFP*'], timepoints, Simulator = 'roadrunner', mode = 'reset', compartmentInput= 'cell_external',compartmentSpecies = 'cell_internal')
except:
    print('Simulator not found.')


# cell_sub.simulateVariableInputs('DNA pOR1OR2--utr1--alHL',[0, 5, 10, 100, 15, 30], ['IPTG'], timepoints, mode = 'reset', compartmentInput= 'cell_internal',compartmentSpecies = 'cell_internal')
# cell_sub.simulateVariableInputs('DNA pOR1OR2--utr1--alHL',[0, 5, 10, 100, 15, 30], ['IPTG'], timepoints, mode = 'reset', compartmentInput= 'cell_internal',compartmentSpecies = 'cell_external')
# cell_sub.simulateVariableInputs('DNA pOR1OR2--utr1--alHL',[6, 10, 15, 20], ['protein deGFP*'], timepoints, plotShow = 'single')

# cell_sub.simulateVariableInputs('DNA pOR1OR2--utr1--alHL',[0,5, 10, 20, 100], ['protein deGFP*'], 
#     timepoints, mode = 'reset', compartmentInput = 'cell_internal', compartmentSpecies= 'cell_internal', 
#     plotShow = 'single', xlabel = 'time', ylabel = 'concentration',title = 'deGFP with varying DNA-alHL',
#     lineWidth = 2, sizeOfXLabels = 12, sizeOfYLabels = 12, legendFontSize= 8)

# cell_sub.simulateVariableInputs(ListOfInputs = ['DNA plac--utr1--deGFP', 'DNA pOR1OR2--utr1--alHL'], 
#     ListOfListOfAmounts = [[5,5],[5,15],[5,25],[15,5],[15,15],[15,20],[20,5],[20,15],[20,25]], 
#     ListOfSpeciesToPlot = ['protein deGFP*'], timepoints = timepoints, mode = 'reset', 
#     compartmentInput = ['cell_internal','cell_internal'],compartmentSpecies= 'cell_internal', 
#     plotShow = 'matrix', xlabel = 'time', ylabel = 'concentration', lineWidth = 2, sizeOfXLabels = 12, sizeOfYLabels = 12, legendFontSize= 6)

# cell_sub.simulateVariableInputs(ListOfInputs = ['DNA plac--utr1--deGFP', 'DNA pOR1OR2--utr1--alHL'], 
#     ListOfListOfAmounts = [[5,5],[5,10],[20,5],[20,10]], ListOfSpeciesToPlot = ['protein deGFP*'], 
#     timepoints = timepoints, mode = 'reset', plotShow = 'matrix', legendFontSize = 6)

# More simulation options and optimizations in simulations

# DNA_alHl = np.linspace(0,20,20)
# DNA_gfp = np.linspace(0,20,20)
# count = 0 
# max_data = []
# for i in range(len(DNA_gfp)):
#     gfp = DNA_gfp[i]
#     for j in range(len(DNA_alHl)):
#         alhl = DNA_alHl[j]
#         count += 1
#         data, time, plt = cell_sub.simulateVariableInputs(['DNA plac--utr1--deGFP', 'DNA pOR1OR2--utr1--alHL'], 
#             [[gfp,alhl]], ['protein deGFP*'], timepoints, plotShow = False)
#         max_data.append(max(data))

# max_index = max_data.index(max(max_data)) 
# n = len(DNA_alHl)
# x = (max_index // n)
# y = max_index % n  
# print(DNA_alHl, DNA_gfp)
# print(max(max_data))
# print('{0},{1}'.format(DNA_alHl[y],DNA_gfp[x] ))

# # Use Road Runner
# import roadrunner
# rr = roadrunner.RoadRunner('models/cell_transport_model.xml')
# # result = rr.simulate(0,10*60*60,100)
# result = rr.simulate(0,24*60*60,1000, selections= ['time', gfp.getId()])
# rr.plot()