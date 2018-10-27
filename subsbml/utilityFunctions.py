#### Some utility functions which are used in modules.System, modules.Subsystem 
#### and may be used elsewhere as well
import sys
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import warnings

try:
    import libsbml 
except:
    warnings.warn('Package not installed : libsbml. The package depends on Python libsbml, install it before using this package.')

try:
    import bioscrape
except:
    warnings.warn('Package not installed : bioscrape, simulation options with bioscrape will not work.')

latestLevel = 3
latestVersion = 2

def check(value, message):
    """If 'value' is None, prints an error message constructed using
    'message' and then exits with status code 1.  If 'value' is an integer,
    it assumes it is a libSBML return status code.  If the code value is
    LIBSBML_OPERATION_SUCCESS, returns without further action; if it is not,
    prints an error message constructed using 'message' along with text from
    libSBML explaining the meaning of the code, and exits with status code 1.
    """
    if value == None:
            raise SystemExit(
                'LibSBML returned a null value trying to ' + message + '.')
    elif type(value) is int:
        if value == libsbml.LIBSBML_OPERATION_SUCCESS:
            return
        else:
            err_msg = 'Error encountered trying to ' + message + '.' \
                + 'LibSBML returned error code ' + str(value) + ': "' \
                + libsbml.OperationReturnValue_toString(value).strip() + '"'
            raise SystemExit(err_msg)
    else:
        return

   
def createNewModel(modelId, timeUnits, extentUnits, substanceUnits, lengthUnits = '', areaUnits = '' , volumeUnits = ''):
    '''
    Creates a new libSBML Model object and return a libSBML model class object 
    with the given attributes. 
    '''
    doc = createSbmlDoc()
    model = doc.createModel()
    if model == None:
        print('Unable to create Model object.')
        sys.exit(1)
    status = model.setId(modelId)
    if status != libsbml.LIBSBML_OPERATION_SUCCESS:
        print('Unable to set identifier on the Model object')
        sys.exit(1)
    check(model.setTimeUnits(timeUnits), 'set model-wide time units')
    check(model.setExtentUnits(extentUnits), 'set model units of extent')
    check(model.setSubstanceUnits(substanceUnits),
            'set model substance units')
    check(model.setLengthUnits(lengthUnits), 'set length units')
    check(model.setAreaUnits(areaUnits), 'set area units')
    check(model.setVolumeUnits(volumeUnits), 'set model units of volume')
    return model, doc 

def createSbmlDoc(newLevel = latestLevel, newVersion = latestVersion):
    ''' 
    Creates a new SBMLDocument ojbect of the given (both optional arguments) newLevel and newVersion
    Returns the created SBMLDocument
    '''
    try:
        sbmlDoc = libsbml.SBMLDocument(newLevel, newVersion)
    except ValueError:
        print('Could not create SBMLDocument object')
        sys.exit(1)
    return sbmlDoc

def getFromXML(filename):
    """ 
    Returns the SBMLDocument object from XML file given 
    """
    reader = libsbml.SBMLReader()
    doc = reader.readSBML(filename)
    check(doc, 'reading from SBML file')
    return doc


