from libsbml import *
import warnings

from modules.setIdFromNames import *
from modules.SimpleReaction import *

latestLevel = 3
latestVersion = 1
class SimpleModel(object):
    '''
    The SimpleModel class has methods which help in creating SBML models using simple commands
    rather than having to depend on libSBML directly which leads to long and tedious code, and difficult for beginners to start with
    Various other methods available in SimpleModel class are utility functions to help with easier creation of SBML models
       Attributes:
            Model : libSBML Model object  
    '''

    def __init__(self, Model):
        '''
        Initialize the SimpleModel object using a libSBML Model object
        '''
        check(Model,'initializing SimpleModel class with libSBML Model object')
        self.Model = Model 

    def getModel(self):
        """
        Returns the Model object 
        """
        return self.Model

    def setModel(self, Model):
        """ 
        Sets the new libSBML Model object and returns it
        """
        check(Model, 'validating Model in setModel')
        self.Model = Model
        return self.Model
   
    def createNewUnitDefinition(self, uid, ukind, exponent, scale = 0, multiplier = 1):
        ''' 
        Creates a new UnitDefinition inside the 
        Model with the given attributes and returns a pointer to the new libSBML object created
        '''
        if type(uid) is not str or type(scale) is not int or type(multiplier) is not int:
            raise ValueError('The arguments are not of expected type. uid must be a string of valid SId format and all others must be integers')

        model = self.getModel()
        check(model,'retreiving libSBML model object')
        unitdef = model.createUnitDefinition()
        check(unitdef, 'create unit definition')
        check(unitdef.setId(uid), 'set unit definition id')
        #Scale list
        if type(ukind) is list and type(scale) is not list:
            scaleList = []
            for kind in ukind:
                scaleList.append(scale)

        elif type(ukind) is list and type(scale) is list:
            if len(ukind) != len(scale):
                raise ValueError('Lengths of scale and unit kind lists are not equal')
            scaleList = scale[:]

        # Multiplier list
        if type(ukind) is list and type(multiplier) is not list:
            multiplierList = []
            for kind in ukind:
                multiplierList.append(multiplier)

        elif type(ukind) is list and type(multiplier) is list:
            if len(ukind) != len(multiplier):
                raise ValueError('Lengths of unit kind and multiplier lists are not equal')
            multiplierList = multiplier[:]

        if type(ukind) is not list:
            ukind = [ukind]
            if type(scale) is not int or type(multiplier) is not int:
                raise ValueError('Scale and multiplier must be integers when there is only one unit kind')
            scaleList = [scale]
            multiplierList = [multiplier]
        if type(exponent) is not list:
            if type(exponent) is not int:
                raise ValueError('All exponents should be integers')
            exponent = [exponent]
        if len(ukind) != len(exponent):
            raise ValueError('Lengths of unit kind and unit exponent lists must be equal')
        
        for kind, expo, scale, multiplier in zip(ukind, exponent, scaleList, multiplierList):
            unit = unitdef.createUnit()
            check(unit, 'create unit on unitdef')
            check(unit.setKind(kind), 'set unit kind')
            check(unit.setExponent(expo), 'set unit exponent')
            check(unit.setScale(scale), 'set unit scale')
            check(unit.setMultiplier(multiplier), 'set unit multiplier')

        return unitdef

    def createNewCompartment(self, cId, cName, cSize, cUnits, cConstant = True):
        '''
        Creates a new Compartment in the Model and returns a pointer to the new libSBML object created
        '''
        if type(cId) is not str or type(cName) is not str or type(cUnits) is not str or type(cConstant) is not bool:
            raise ValueError('The arguments are not of expected type. cId, cName, and cUnits must be strings and cConstant must be a boolean')
        if type(cSize) is not float and type(cSize) is not int:
            raise ValueError('The arguments are not of expected type. cSize must be either an integer or float.')
        model = self.getModel()
        check(model,'retreived model object')
        comp_obj = model.createCompartment()
        check(comp_obj, 'Create comp_obj compartment')
        check(comp_obj.setId(cId), 'Set comp_obj id')
        check(comp_obj.setName(cName), 'Set comp_obj name')
        check(comp_obj.setSize(cSize), 'set comp_obj size')
        check(comp_obj.setUnits(cUnits), 'set comp_obj units')
        check(comp_obj.setConstant(cConstant), 'set comp_obj constant')
        return comp_obj

    def createNewSpecies(self, ListOfSpecies, sComp, ListOfAmounts, sConstant, sSubstance, sBoundary = False, sHasOnlySubstance = False):
        ''' 
        Creates new Species object inside the 
        Model object  with the given attributes and returns a pointer to the list of libSBML Species object created
        '''
        model = self.getModel()
        allIds = self.getAllIds()
        trans = SetIdFromNames(allIds)
        check(model,'retreived model object')
        amount = []
        speciesList = []
        if (type(ListOfSpecies) is str) or  (len(ListOfSpecies) == 1):
            if (type(ListOfAmounts) is list) and (len(ListOfAmounts) > 1):
                raise ValueError('The amount cannot be a list of multiple items when only one species is being created')
            elif (type(ListOfAmounts) is list) and (len(ListOfAmounts) == 1):
                amount.append(ListOfAmounts[0])
            elif type(ListOfAmounts) is not list:
                if not isinstance(ListOfAmounts, (int, float)):
                    raise ValueError('The amount should be a real number corresponding to the species given')
                amount.append(ListOfAmounts)
            if type(ListOfSpecies) is str:
                speciesList.append(ListOfSpecies)
                
        # Multiple species
        elif (type(ListOfSpecies) is list) and (len(ListOfSpecies) > 1):
            if type(ListOfAmounts) is not list:
                raise ValueError('For multiple species, the initial amounts should be a list of real numbers')
            elif len(ListOfSpecies) != len(ListOfAmounts):
                raise ValueError('The length of ListOfSpecies and ListOfAmounts should be the same.')
            else:
                amount = ListOfAmounts[:]
            for sp_name, sp_amt in zip(ListOfSpecies, amount):
                if not isinstance(sp_amt, (int, float)):
                    raise ValueError('The amount should be a real number corresponding to the species given')
                if not isinstance(sp_name, str):
                    raise ValueError('The species name should be a string.')
            speciesList = ListOfSpecies[:]
        else:
            raise ValueError('ListOfSpecies should be a list type with string items and ListOfAmounts should be list type with real numbers')
        
        if type(sConstant) is not bool or type(sSubstance) is not str:
            raise ValueError('The argument sConstant must be boolean type and sSubstance must be string type') 

        list_s_obj = []
        for sName, sInitial in zip(speciesList, amount):
            s_obj = model.createSpecies()
            check(s_obj, 'created s_obj species')
            sId = trans.getValidIdForName(sName)
            check(s_obj.setId(sId), 'set s_obj ID')
            check(s_obj.setName(sName), 'set s_obj name')
            check(s_obj.setCompartment(sComp), 'set s_obj compartment')
            check(s_obj.setInitialAmount(sInitial), 'set s_obj initial amount')
            check(s_obj.setConstant(sConstant), 'set s_obj constant')
            check(s_obj.setBoundaryCondition(sBoundary),
                'set boundary s_obj condition false')
            check(s_obj.setSubstanceUnits(sSubstance), 'set substance units s_obj')
            check(s_obj.setHasOnlySubstanceUnits(sHasOnlySubstance),
                'set has only substance units s_obj')
            list_s_obj.append(s_obj)
        return list_s_obj

    def createNewParameter(self, ListOfParameters, ListOfValues, pConstant, pUnit):
        ''' 
        Creates new Parameter object inside the 
        Model with the given attributes and returns pointer to the list of libSBML Parameter object created
        '''
        if type(pConstant) is not bool or type(pUnit) is not str:
            raise ValueError('The argument pConstant must be a boolean type and pUnit must be string type') 
        model = self.getModel()
        allIds = self.getAllIds()
        trans = SetIdFromNames(allIds)
        check(model,'retreived model object')
        values = []
        parametersList = []
        if (type(ListOfParameters) is str) or  (len(ListOfParameters) == 1):
            if (type(ListOfValues) is list) and (len(ListOfValues) > 1):
                raise ValueError('The values cannot be a list of multiple items when only one parameter is being created')
            elif (type(ListOfValues) is list) and (len(ListOfValues) == 1):
                values.append(ListOfValues[0])
            elif type(ListOfValues) is not list:
                if not isinstance(ListOfValues, (int, float)):
                    raise ValueError('The values should be a real number corresponding to the parameters given')
                values.append(ListOfValues)
            if type(ListOfParameters) is str:
                parametersList.append(ListOfParameters)
                
        # Multiple parameters 
        elif (type(ListOfParameters) is list) and (len(ListOfParameters) > 1):
            if type(ListOfValues) is not list:
                raise ValueError('For multiple parameters, the values should be a list of real numbers')
            elif len(ListOfParameters) != len(ListOfValues):
                raise ValueError('The length of ListOfParameters and ListOfValues should be the same.')
            else:
                values = ListOfValues[:]
            for p_name, p_val in zip(ListOfParameters, values):
                if not isinstance(p_val, (int, float)):
                    raise ValueError('The values should be a real number corresponding to the parameter given')
                if not isinstance(p_name, str):
                    raise ValueError('The parameter name should be a string.')
            parametersList = ListOfParameters[:]
        else:
            raise ValueError('ListOfParameters should be a list type with string items and ListOfValues should be list type with real numbers')


        list_p_obj = []
        for pName, pValue in zip(parametersList, values):
            p_obj = model.createParameter()
            check(p_obj, 'created p_obj parameter')
            pId = trans.getValidIdForName(pName)
            check(p_obj.setId(pId), 'set p_obj ID')
            check(p_obj.setName(pName), 'set p_obj name')
            check(p_obj.setValue(pValue), 'set p_obj value')
            check(p_obj.setConstant(pConstant), 'set p_obj constant')
            check(p_obj.setUnits(pUnit), 'set p_obj units')
            list_p_obj.append(p_obj)
        return list_p_obj


    def createNewReaction(self, rId, rStr, rRate, rFast = False, isConstant = False):
        ''' 
        Creates a new Reaction object inside the 
        Model with the given attributes and returns a pointer to the libSBML Reaction object created
        '''
        if type(rId) is not str or type(rStr) is not str or type(rRate) is not str or type(rFast) is not bool or type(isConstant) is not bool:
            raise ValueError('The arguments are not of expected type. rId, rStr, rRate must be strings of appropriate valid format and rFast, isConstant must be boolean type')
        model = self.getModel()
        check(model,'retreived model object')
        r_obj = model.createReaction()
        check(r_obj, 'created r_obj reaction')
        check(r_obj.setId(rId), 'set r_obj ID')
        check(r_obj.setFast(rFast), 'set r_obj Fast')
        newRxn = SimpleReaction(r_obj)
        reactantList, reactant_stoichList, productList, product_stoichList = newRxn.parseReactionString(rStr)
        for reactant, stoich in zip(reactantList, reactant_stoichList):
            reactant_sp = self.getSpeciesByName(reactant)
            if type(reactant_sp) is list:
                raise ValueError('Multiple species found with the same name.')
            newRxn.createNewReactant(reactant_sp.getId(), isConstant, stoich)
        for product, stoich in zip(productList, product_stoichList):
            product_sp = self.getSpeciesByName(product)
            if type(product_sp) is list:
                raise ValueError('Multiple species found with the same name.')
            newRxn.createNewProduct(product_sp.getId(), isConstant, stoich)
        newRxn_math = newRxn.createMath(rRate)
        newRxn.createRate(newRxn_math)
        return r_obj

 
    def createNewConstraint(self, formulaString, msg = 'Constraint not satisfied for the model', name = ''):
        '''
        Creates a new Constraint in the Model and returns a pointer to the libSBML object created
        '''
        if type(formulaString) is not str or type(msg) is not str:
            raise ValueError('The arguments are not of expected type. Both formulaString and msg must be strings of valid format')
        model = self.getModel()
        check(model,'retreived model object')
        constr = model.createConstraint()
        check(constr, 'creating a new constraint inside the model')
        astMath = parseL3Formula(formulaString)
        check(constr.setMath(astMath), 'setting math to the constraint')
        check(constr.setMessage(msg, True), 'setting the message to the constraint')
        if name != '':
            check(constr.setName(name),'setting name of the constraint')
        
        return constr

    def createNewEvent(self, id, trigger_persistent, trigger_initialValue, 
        trigger_formula, variable_id, assignment_formula, delay_formula = '', 
        priority_formula = '', useValuesFromTriggerTime = True, name = ''):
        '''
        Creates a new Event in the Model and returns a pointer to the libSBML object created
        '''
        if (type(id) is not str) or (type(trigger_persistent) is not bool) or (type(trigger_initialValue) is not bool) or (type(trigger_formula) is not str) or (type(variable_id) is not str) or (type(assignment_formula) is not str) or (type(delay_formula) is not str) or (type(priority_formula) is not str) or (type(useValuesFromTriggerTime) is not bool) or (type(name) is not str):
            raise ValueError('The arguments are not of expected type.') 
        model = self.getModel()
        check(model,'retreived model object')
        e = model.createEvent()
        check(e,'creating new event in the model')
        check(e.setId(id), 'setting ID of the event created')
        if name != '':
            check(e.setName(name),'setting name of the event created')

        eTrig = e.createTrigger()
        check(eTrig,'creating trigger inside the event')
        check(eTrig.setPersistent(trigger_persistent), 'setting persistent value to the trigger')
        check(eTrig.setInitialValue(trigger_initialValue), 'setting initial value to the trigger')
        trig_math = parseL3Formula(trigger_formula)
        check(eTrig.setMath(trig_math), 'setting math to the trigger')

        eA = e.createEventAssignment()
        check(eA, 'creating event assignment inside the event')
        check(eA.setVariable(variable_id), 'setting variable in the event assignment')
        asmt_math = parseL3Formula(assignment_formula)
        check(eA.setMath(asmt_math), 'setting math to the event assignment')

        if delay_formula != '':
            eDel = e.createDelay()
            check(eDel, 'creating a new delay inside the event')
            del_math = parseL3Formula(delay_formula)
            check(eDel.setMath(del_math), 'setting the math to the delay')
        if priority_formula != '':
            eP = e.createPriority()
            check(eP, 'creating a new priority inside the event')
            prio_math = parseL3Formula(priority_formula)
            check(eP.setMath(prio_math), 'setting the math to the priority')
        e.setUseValuesFromTriggerTime(useValuesFromTriggerTime)
        return e

    def createNewInitialAssignment(self, symbol, initialAssignment_formula):
        '''
        Creates a new InitialAssignment in the Model and returns a pointer to the libSBML object created
        '''
        if type(symbol) is not str or type(initialAssignment_formula) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getModel()
        check(model,'retreived model object')
        init_asmt = model.createInitialAssignment()
        check(init_asmt,'creating new initial assignment inside the model')
        check(init_asmt.setSymbol(symbol),'setting the symbol to the initial assignment')
        initAsmt_math = parseL3Formula(initialAssignment_formula)
        check(init_asmt.setMath(initAsmt_math),'setting math to the initial assignment')
        return 

    def createNewAssignmentRule(self, variable_id, assignmentRule_formula):
        '''
        Creates a new AssignmentRule in the Model and returns a pointer to the libSBML object created
        '''
        if type(variable_id) is not str or type(assignmentRule_formula) is not str:
            raise ValueError('The arguments are not of expected type.') 

        model = self.getModel()
        check(model,'retreived model object')
        asmt = model.createAssignmentRule()
        check(asmt, 'creating new assignment rule in the model')
        check(asmt.setFormula(assignmentRule_formula), 'setting the formula to the assignment rule')
        check(asmt.setVariable(variable_id), 'setting the variable to the assignment rule')
        return 

    def createNewRateRule(self, variable_id, rateRule_formula):
        '''
        Creates a new RateRule in the Model and returns a pointer to the libSBML object created
        '''
        if type(variable_id) is not str or type(rateRule_formula) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getModel()
        check(model,'retreived model object')
        rateRule = model.createRateRule()
        check(rateRule, 'creating a new rate rule inside the model')
        check(rateRule.setFormula(rateRule_formula), 'setting the formula for the rate rule')
        check(rateRule.setVariable(variable_id), 'setting the variable for the rate rule')
        return 

    def createNewAlgebraicRule(self, variable_id, algebraicRule_formula):
        '''
        Creates a new AlgebraicRule in the Model and returnsa pointer to the libSBML object created
        '''
        if type(variable_id) is not str or type(algebraicRule_formula) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getModel()
        check(model,'retreived model object')
        algbRule = model.createAlgebraicRule()
        check(algbRule, 'creating new algebraic rule inside the model')
        check(algbRule.setFormula(algebraicRule_formula), 'setting the formula for the algebraic rule')
        check(algbRule.setVariable(variable_id), 'setting the variable for the algebraic rule')
        return 

    def createNewFunctionDefinition(self, id, functionDefinition_formula, name = ''):
        '''
        Creates a new FunctionDefinition in the Model and returns a pointer to the libSBML object created
        '''
        if type(id) is not str or type(functionDefinition_formula) is not str or type(name) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getModel()
        check(model,'retreived model object')
        func_def = model.createFunctionDefinition()
        check(func_def, 'creating a new function definition inside the model')
        check(func_def.setId(id), 'setting the id of the function definition')
        if name != '' :
            check(func_def.setName(name), 'setting the name of the function definition')
        func_math = parseL3Formula(functionDefinition_formula)
        check(func_def.setMath(func_math), 'setting the math for the function definition')
        return 

  
    def getSpeciesByName(self, name):
        ''' 
        Returns a list of species in the Model with the given name
        '''
        if type(name) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getModel()
        check(model,'retreived model object')
        species_found =[]
        for species in model.getListOfSpecies():
            if species.getName() == name:
                species_found.append(species)
        if len(species_found) == 1:
            return species_found[0] 
        elif not species_found:
            raise ValueError('The species ' + name + ' not found.')
        else:
            warnings.warn('Multiple species with name ' + name + ' found. Returning a list')
            return species_found
    
 
    def getParameterByName(self, name):
        ''' 
        Returns a list of Parameters in the Model with the given name
        '''
        if type(name) is not str:
            raise ValueError('The arguments are not of expected type.') 
        model = self.getModel()
        check(model,'retreived model object')
        parameter_found =[]
        # Going through all local parameters
        for reaction in model.getListOfReactions():
            for local_param in reaction.getKineticLaw().getListOfLocalParameters():
                if local_param.getName() == name:
                    parameter_found.append(local_param)
 
        # Going through all global parameters
        for parameter in model.getListOfParameters():
            if parameter.getName() == name:
                parameter_found.append(parameter)

        if len(parameter_found) == 1:
            return parameter_found[0] 
        elif not parameter_found:
            raise ValueError('The parameter ' + name + ' not found.')
        else:
            warnings.warn('Multiple parameter with name ' + name + ' found. Returning a list')
            return parameter_found
 
    def getAllIds(self):
        """ 
        Returns all SIds in the model in string format
        """
        model = self.getModel()
        check(model,'retreiving model in getAllIds')
        document = model.getSBMLDocument()
        check(document,'retreiving document in getAllIds')
        allElements = document.getListOfAllElements()
        result = []
        if (allElements == None or allElements.getSize() == 0):
            return result 
        for i in range (allElements.getSize()):
            current = allElements.get(i) 
            if (current.isSetId() and current.getTypeCode() != libsbml.SBML_EVENT and current.getTypeCode() != libsbml.SBML_LOCAL_PARAMETER):
                result.append(current.getId()) 
        return result     
 