import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl

mpl.rc('axes', prop_cycle=(mpl.cycler('color', ['r'])))
mpl.rc('xtick', labelsize=14) 
mpl.rc('ytick', labelsize=14)
time1 =  np.linspace(0,5,5)
time2 = np.linspace(5,10,5)
time3 = np.linspace(10,15,5)
time4 = np.linspace(15,20,5)

inpA1 = [0, 0, 0, 0, 0]
inpB1 = [0, 0,0, 0, 0]
inpA2 = [0.05, 0.05, 0.05, 0.05, 0.05]
inpB3 = [5, 5, 5, 5, 5]
inpA3 = inpA1
inpB2 = inpB1
inpA4 = inpA2
inpB4 = inpB3


plt.plot(time1, inpA1)
plt.axvline(x=5,ymin = 0.05, ymax = 0.95, color = 'red')
plt.plot(time2, inpA2)
plt.axvline(x=10,ymin = 0.05, ymax = 0.95, color = 'red')
plt.plot(time3, inpA3)
plt.axvline(x=15,ymin = 0.05, ymax = 0.95, color = 'red')
plt.plot(time4, inpA4)
plt.xlabel('Time (AU)')
plt.ylabel('Concentration (nM)')
plt.title('Input A - Concentration of Protein Sigma 28')
plt.show()


plt.plot(time1, inpB1, color = 'blue')
plt.plot(time2, inpB2, color = 'blue')
plt.axvline(x=10,ymin = 0.05, ymax = 0.95, color = 'blue')
plt.plot(time3, inpB3, color = 'blue')
plt.plot(time4, inpB4, color = 'blue')
plt.xlabel('Time (AU)')
plt.ylabel('Concentration (nM)')
plt.title('Input B - Concentration of Protein Sigma X')
plt.show()


