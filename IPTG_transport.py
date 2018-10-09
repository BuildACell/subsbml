import numpy as np
from libsbml import *
from modules.Subsystem import *
from modules.System import *
import seaborn as sns
# import murraylab_tools.biotek as mt_biotek
import csv
import matplotlib.pyplot as plt
import matplotlib as mpl

cell = System('cell')

alHL = createSubsystem('models/alHL.xml','SS1')
GFP = createSubsystem('models/GFP.xml', 'SS2')
membrane = createSubsystem('models/IPTG_membrane.xml')

external = createSubsystem('models/IPTG_reservoir.xml','SS3')


cell.setInternal([alHL, GFP])
cell.setExternal(external)

cell.setMembrane(membrane)
cell_model, cell_sub = cell.getModel()

cell_sub.setSpeciesAmount('IPTG',0, 'cell_external')
writeSBML(cell_model,'models/cell_transport_model.xml')
timepoints = np.linspace(0,14*60*60,100)

data, time1 = cell_sub.simulateVariableInputsBioscrape('IPTG',[0, 20, 40, 60, 80], 'protein deGFP*', timepoints, 'reset', 'cell_external', False)

data1 = data[0:len(timepoints)]
data2 = data[len(timepoints):2*len(timepoints)]
data3 = data[2*len(timepoints):3*len(timepoints)]
data4 = data[3*len(timepoints):4*len(timepoints)]
data5 = data[4*len(timepoints):5*len(timepoints)]

mpl.rc('axes', prop_cycle=(mpl.cycler('color', ['r', 'k', 'b','g','y','m','c']) ))
mpl.rc('xtick', labelsize=16) 
mpl.rc('ytick', labelsize=16)
p1, = plt.plot(timepoints,data1, label = '0nm IPTG', linewidth = 4)
p2, = plt.plot(timepoints,data2, label = '20nm IPTG', linewidth = 4)
# plt.plot(timepoints,data3, linewidth = 3)
p4, = plt.plot(timepoints,data4, label = '60nm IPTG', linewidth = 4)
p5, = plt.plot(timepoints,data5, label = '80nm IPTG', linewidth = 4)
plt.xlabel('Time (in seconds)', fontsize = 24)
plt.ylabel('GFP expression (in nM)', fontsize = 24)
plt.legend(handles=[p1,p2,p4,p5],prop = {'size':20})

plt.show()
