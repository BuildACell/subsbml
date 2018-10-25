import libsbml
import re

from .utilityFunctions import check

latestLevel = 3
latestVersion = 1

class SimpleReaction(object):
    '''
    SimpleReaction class can be used to create reactions in a Model in a simple manner.
    Reaction strings can be used to easily create libSBML Reaction which avoids tedious and long code if libSBML is used directly.
    This class also provides helper functions for creating and working with libSBML reactions. 
    Works with the SimpleModel class to create SBML models.
        Attributes:
            Reaction: A libSBML Reaction object   
    '''

    def __init__(self, Reaction):
        '''
        Initialize SimpleReaction object using a libSBML Reaction object
        '''
        check(Reaction,'initializing SimpleReaction class')
        self.Reaction = Reaction

    def getReaction(self):
        '''
        Returns the libSBML Reaction object 
        '''
        return self.Reaction

    def setReaction(self, reaction):
        '''
        Sets the libSBML Reaction object attribute and returns it
        '''
        check(reaction,'validating Reaction in setReaction')
        self.Reaction = reaction
        return self.Reaction

    def getId(self):
        '''
        Returns libSBML Reaction object identifier 
        '''
        return self.Reaction.getId()
    
    def setId(self, id):
        ''' 
        Set identifier to the Reaction and returns the updated libSBML Reaction object
        '''
        if type(id) is not str:
            raise ValueError('The argument for identifier should be a string conforming to the SBML specifications for SId')
        self.Reaction.setId(id)
        return self.Reaction
    
    def getReversible(self):
        ''' 
        Returns value of the reversible attribute of the Reaction
        '''
        return self.Reaction.getReversible()

    def setReversible(self, bool_rev):
        '''
        Set reversible attribute of the Reaction and return the updated libSBML Reaction object 
        '''
        if type(bool_rev) is not bool:
            raise ValueError('The argument should be boolean')
        self.Reaction.setReversible(bool_rev)
        return self.Reaction
    
    # Fast attribute is now obsolete in SBML L3V2
    # def getFast(self):
    #     '''
    #     Return value of fast attribute of the Reaction 
    #     '''
    #     return self.Reaction.getFast()
    
    # def setFast(self, bool_fast):
    #     '''
    #     Set fast attribute of the Reaction and return the updated libSBML Reaction object
    #     '''
    #     if type(bool_fast) is not bool:
    #         raise ValueError('The argument should be boolean')
    #     self.Reaction.setFast(bool_fast)
    #     return self.Reaction

    def parseReactionString(self, rStr):
        '''
        Parses the reaction string and returns a list of reactants (and products), a list of 
        stoichiometry constants of the reactants (and products)
        '''
        if type(rStr) is not str:
            raise ValueError('The reaction string argument should be a string, in the appropriate format')
        rxn = self.getReaction()
        if '-->' in rStr:
            rReversible = False
        elif '<->' in  rStr:
            rReversible = True

        check(rxn.setReversible(rReversible), 'set r_obj reversible')
        if not rxn.isSetReversible():
           raise ValueError('Reaction reversible attribute is not set.')

        rStr = rStr.replace(' ', '')
        if rxn.getReversible():
            s_rxn = rStr.split('<->')
        else:
            s_rxn = rStr.split('-->')

        if len(s_rxn) != 2:
            raise ValueError('Reaction string should have one arrow only')

        s_reac = s_rxn[0]
        s_pro = s_rxn[1]

        reactants = s_reac.split('+')
        products = s_pro.split('+')
        reactant_stoichList = []
        reactantList = []
        for reactant in reactants:
            findInt = re.match(r'\d+',reactant)
            if findInt == None:
                stoich = 1
            else:
                stoich = int(findInt.group())
                reactant = reactant.replace(str(stoich), '')
            reactant_stoichList.append(stoich)
            reactantList.append(reactant)

        product_stoichList = []
        productList = []
        for product in products:
            findInt = re.match(r'\d+', product)
            if findInt == None: 
                stoich = 1
            else:
                stoich = int(findInt.group())
                product = product.replace(str(stoich),'')
            product_stoichList.append(stoich)
            productList.append(product)
        return reactantList, reactant_stoichList, productList, product_stoichList


    def createNewReactant(self, rtSpeciesId, rtConstant, rtStoichiometry):
        '''
        Creates a new Reactant inside this Reaction object and returns the
        libSBML SpeciesReference object created 
        '''
        if type(rtSpeciesId) is not str or type(rtConstant) is not bool or type(rtStoichiometry) is not int:
            raise ValueError('The argument for ID must be a string, isConstant must be a boolean type and Stoichiometry must be an integer')
        species_ref_obj_reactant = self.getReaction().createReactant()
        check(species_ref_obj_reactant,
              'created species_ref_obj_reactant reactant')
        check(species_ref_obj_reactant.setSpecies(
            rtSpeciesId), 'set species_ref_obj_reactant ID')
        check(species_ref_obj_reactant.setConstant(rtConstant),
              'set species_ref_obj_reactant constant')
        check(species_ref_obj_reactant.setStoichiometry(rtStoichiometry),
              'set species_ref_obj_reactant stoichiometry')
        return species_ref_obj_reactant

    def createNewProduct(self, rtSpeciesId, rtConstant, rtStoichiometry):
        '''
        Creates a new Product inside the current Reaction object and returns the
        libSBML SpeciesReference object created 
        '''
        if type(rtSpeciesId) is not str or type(rtConstant) is not bool or type(rtStoichiometry) is not int:
            raise ValueError('The argument for ID must be a string, isConstant must be a boolean type and Stoichiometry must be an integer')
        species_ref_obj_product = self.getReaction().createProduct()
        check(species_ref_obj_product, 'created species_ref_obj_product produc')
        check(species_ref_obj_product.setSpecies(rtSpeciesId), 'set species_ref_obj_product ID')
        check(species_ref_obj_product.setConstant(rtConstant),
              'set species_ref_obj_product constant')
        check(species_ref_obj_product.setStoichiometry(rtStoichiometry),
              'set species_ref_obj_product stoichiometry')
        return species_ref_obj_product

    def createRate(self, math_ast):
        '''
        Creates a new KineticLaw object inside the current Reaction and returns it.
        The AST_Node object given as an argument in 
        math_ast is used to define the rate 
        '''
        kinetic_law_reaction = self.getReaction().createKineticLaw()
        check(kinetic_law_reaction, 'create kinetic law')
        check(kinetic_law_reaction.setMath(math_ast), 'set math on kinetic law')
        return kinetic_law_reaction


    def createMath(self, formulaString):
        ''' 
        Creates a new math AST_Node using the formulaString given and returns it 
        '''
        if type(formulaString) is not str:
            raise ValueError('The formulaString argument must be a string in the appropriate format')
        math_ast = libsbml.parseL3Formula(formulaString)
        check(math_ast, 'create AST for rate expression')
        return math_ast

