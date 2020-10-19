#  Copyright (c) 2020, Ayush Pandey. All rights reserved.
#  See LICENSE file in the project root directory for details.

from unittest import TestCase
from unittest.mock import mock_open, patch
import numpy as np
import libsbml
import warnings


class TestSubSBML(TestCase):
    """
    Super class of all testing in Sub-SBML as it sets up a System with 
    different Subsystems
    """
    def setUp(self) -> None:
        """
        This method gets executed before every test. It sets up a test CRN:
        2A + B (k1)<->(k2) C, C (k3)--> D
        """
        pass