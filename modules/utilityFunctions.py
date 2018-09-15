#### Some utility functions which are used in modules.System, modules.Subsystem 
#### and may be used elsewhere as well

import bioscrape
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from libsbml import *

from modules.SimpleModel import * 

latestLevel = 3
latestVersion = 1


def getFromXML(filename):
    """ 
    Returns the SBMLDocument object from XML file given 
    """

    reader = SBMLReader()
    doc = reader.readSBML(filename)
    check(doc, "reading from SBML file")
    return doc


def plotSbmlWithBioscrape(ListOfFiles, initialTime, timepoints, ListOfListOfSpeciesToPlot, xlabel = 'Time', ylabel = 'Concentration (AU)', sizeOfXLabels = 14, sizeOfYLabels = 14):
    ''' 
    Plots the amounts of ListOfSpeciesToPlot in the given SBML files 
    starting at initialTime and for the timepoints given. 
    The other arguments for axes labels and sizes are optional.
    If a list of files is given, then corresponding list of list of species is 
    used to plot the corresponding list of species for each SBML model. 
    The same initialTime, timepoints and other arguments are used for all SBML files 
    '''
    mpl.rc('axes', prop_cycle=(mpl.cycler('color', ['r', 'k', 'b','g','y','m','c']) ))
    mpl.rc('xtick', labelsize=sizeOfXLabels) 
    mpl.rc('ytick', labelsize=sizeOfYLabels)
    if type(ListOfFiles) is str:
        filename = ListOfFiles
        ListOfSpeciesToPlot = ListOfListOfSpeciesToPlot[:]
        doc = getFromXML(filename)
        model = doc.getModel()
        mod_obj = SimpleModel(model)
        m = bioscrape.types.read_model_from_sbml(filename)
        s = bioscrape.simulator.ModelCSimInterface(m)
        s.py_prep_deterministic_simulation()
        s.py_set_initial_time(initialTime)
        species_ind = []
        SpeciesToPlot = ListOfSpeciesToPlot[:]
        for i in range(len(ListOfSpeciesToPlot)):
            species_name = ListOfSpeciesToPlot[i]
            species = mod_obj.getSpeciesByName(species_name)
            if type(species) is list:
                print('WARNING -- There are multiple species with the name ' + species_name + ' in plot function. Suffixed species will be plotted ')
                for species_i in species:
                    species_ind.append(m.get_species_index(species_i.getId()))
                key_ind = ListOfSpeciesToPlot.index(species_name)
                insert_new = []
                for j in range(len(species)-1):
                    insert_new.append(species_name + str(j+1))
                SpeciesToPlot[key_ind+1:key_ind+1] = insert_new 
            else:
                species_ind.append(m.get_species_index(species.getId()))
        sim = bioscrape.simulator.DeterministicSimulator()
        result = sim.py_simulate(s, timepoints)
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        for i in range(len(species_ind)):
            plt.plot(timepoints, result.py_get_result()[:, species_ind[i]])
        plt.legend(SpeciesToPlot)
        plt.show()
        return

    # If a list of files is given
    
    species_ind = []
    speciesLegend = []
    for i in range(len(ListOfFiles)):
        filename = ListOfFiles[i]
        ListOfSpeciesToPlot = ListOfListOfSpeciesToPlot[i]
        doc = getFromXML(filename)
        model = doc.getModel()
        mod_obj = SimpleModel(model)
        m = bioscrape.types.read_model_from_sbml(filename)
        s = bioscrape.simulator.ModelCSimInterface(m)
        s.py_prep_deterministic_simulation()
        s.py_set_initial_time(initialTime)
        SpeciesToPlot = ListOfSpeciesToPlot[:]
        for i in range(len(ListOfSpeciesToPlot)):
            species_name = ListOfSpeciesToPlot[i]
            speciesLegend.append(species_name)
            species = mod_obj.getSpeciesByName(species_name)
            if type(species) is list:
                print('WARNING -- There are multiple species with the name ' + species_name + ' in plot function. Suffixed species will be plotted ')
                for species_i in species:
                    species_ind.append(m.get_species_index(species_i.getId()))
                key_ind = ListOfSpeciesToPlot.index(species_name)
                insert_new = []
                for i in range(len(species)-1):
                    insert_new.append(species_name + str(i+1))
                    speciesLegend.append(species_name + str(i+1))
                SpeciesToPlot[key_ind+1:key_ind+1] = insert_new 
            else:
                species_ind.append(m.get_species_index(species.getId()))
        sim = bioscrape.simulator.DeterministicSimulator()
        result = sim.py_simulate(s, timepoints)
        for i in range(len(species_ind)):
            plt.plot(timepoints, result.py_get_result()[:, species_ind[i]])
        species_ind = []
    plt.legend(speciesLegend) # add the extra species to this list
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.show()
