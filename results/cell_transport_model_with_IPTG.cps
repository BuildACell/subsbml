<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-08-13 08:37:26 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="23" versionDevel="184" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_334" name="Function for mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwe60d7d7d_697e_4455_a11e_eac9e72a433e*mw20c9d2b7_2d30_489e_82d1_e71648158436_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1618" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1619" name="mw20c9d2b7_2d30_489e_82d1_e71648158436_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1620" name="mwe60d7d7d_697e_4455_a11e_eac9e72a433e" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_335" name="Function for mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw3830ada9_8c1f_4408_8792_b352b9545092*mw3df01083_618d_4509_9811_8b63adf5cb42_SS1*Ribo_combined-mw4b24730a_ba8b_4323_8c9e_c8d793425e60*mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1648" name="Ribo_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1649" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1650" name="mw3830ada9_8c1f_4408_8792_b352b9545092" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1660" name="mw3df01083_618d_4509_9811_8b63adf5cb42_SS1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1661" name="mw4b24730a_ba8b_4323_8c9e_c8d793425e60" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1662" name="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_336" name="Function for mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw48cc8c87_2548_4333_b0d0_129277cd1fb4*mw27bf35db_2b1d_439b_a0c4_81972bf226ef_SS1*RNAP_combined-mw8b9a381a_163f_435c_934b_38e9d22433c5*mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1696" name="RNAP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1697" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1698" name="mw27bf35db_2b1d_439b_a0c4_81972bf226ef_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1699" name="mw48cc8c87_2548_4333_b0d0_129277cd1fb4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1700" name="mw8b9a381a_163f_435c_934b_38e9d22433c5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1701" name="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_337" name="Function for mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw66da3667_22e0_4c78_82a4_32def7919cd0*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1630" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1605" name="mw66da3667_22e0_4c78_82a4_32def7919cd0" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1604" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_338" name="Function for mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwd0042ae4_1646_428b_99de_e8ca18f1d5a2*mw42ea34c3_4490_4d8a_8ee5_dd1c4ac5319c_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1762" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1763" name="mw42ea34c3_4490_4d8a_8ee5_dd1c4ac5319c_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1764" name="mwd0042ae4_1646_428b_99de_e8ca18f1d5a2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_339" name="Function for mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw490dcf1e_63bd_479e_a995_3f131fb43e97*mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1*AGTP_combined-mw002f98bd_2b9a_40dd_93c4_225856292b8a*mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1798" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1799" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1800" name="mw002f98bd_2b9a_40dd_93c4_225856292b8a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1810" name="mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1811" name="mw490dcf1e_63bd_479e_a995_3f131fb43e97" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1812" name="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_340" name="Function for mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda*mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1*CUTP_combined-mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4*mwb668d480_993b_469d_8925_7393c33b0558_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1834" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1835" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1836" name="mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1852" name="mwb668d480_993b_469d_8925_7393c33b0558_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1853" name="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1854" name="mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_341" name="Function for mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwf3f8bee7_7617_49f4_990a_afc7b5485ca7*mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1*CUTP_combined-mw4ce1e65c_926e_4d3c_b3e6_396def864bd6*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1882" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1883" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1884" name="mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1894" name="mw4ce1e65c_926e_4d3c_b3e6_396def864bd6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1895" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1896" name="mwf3f8bee7_7617_49f4_990a_afc7b5485ca7" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_342" name="Function for mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw710fb4f7_6073_42ed_a40d_41d009035891*mwb668d480_993b_469d_8925_7393c33b0558_SS1*AGTP_combined-mw6aa3baca_c087_46d2_bf9e_75440163765a*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1933" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1934" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1935" name="mw6aa3baca_c087_46d2_bf9e_75440163765a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1936" name="mw710fb4f7_6073_42ed_a40d_41d009035891" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1937" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1938" name="mwb668d480_993b_469d_8925_7393c33b0558_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_343" name="Function for mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw2996778c_c27b_4ec7_a7bb_34b2ceda6977*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1603" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1776" name="mw2996778c_c27b_4ec7_a7bb_34b2ceda6977" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1774" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_344" name="Function for mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwa0cbd407_e863_4341_b66b_060977850e66*mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1*AA_combined-mw5ffbf3db_6003_4217_9bd8_796832a8ba27*mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1984" name="AA_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1985" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2006" name="mw5ffbf3db_6003_4217_9bd8_796832a8ba27" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2005" name="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2004" name="mwa0cbd407_e863_4341_b66b_060977850e66" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2003" name="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_345" name="Function for mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw759eca19_9151_4ba3_acf0_89be22ebccd8*mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1*AGTP_combined^2-mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2020" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2019" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2030" name="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2029" name="mw759eca19_9151_4ba3_acf0_89be22ebccd8" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2028" name="mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2027" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_346" name="Function for mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1775" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1632" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1997" name="mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_347" name="Function for mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwdbe11a94_d411_4b68_aa97_8f09854129f2*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2053" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2052" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2018" name="mwdbe11a94_d411_4b68_aa97_8f09854129f2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_348" name="Function for mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw0768058d_03e2_4673_8542_1f8cb39d4ec3*mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2044" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2043" name="mw0768058d_03e2_4673_8542_1f8cb39d4ec3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2060" name="mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_349" name="Function for mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw9031e56e_f709_472e_841a_f697866e9019*mw3df01083_618d_4509_9811_8b63adf5cb42_SS1*RNase_combined-mwd24cd525_af85_43b1_afc4_c91d2d887a5b*mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2077" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2076" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2073" name="mw3df01083_618d_4509_9811_8b63adf5cb42_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2083" name="mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2084" name="mw9031e56e_f709_472e_841a_f697866e9019" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2099" name="mwd24cd525_af85_43b1_afc4_c91d2d887a5b" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_350" name="Function for mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw9008fd58_dae9_4ff7_b526_e14558cae1c3*mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1996" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2078" name="mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1631" name="mw9008fd58_dae9_4ff7_b526_e14558cae1c3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_351" name="Function for mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525*mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1*RNase_combined-mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599*mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2119" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2118" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2117" name="mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2131" name="mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2130" name="mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2129" name="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_352" name="Function for mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw980fee86_abb7_474c_acba_0aa345a38f0f*mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2062" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2120" name="mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2079" name="mw980fee86_abb7_474c_acba_0aa345a38f0f" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_353" name="Function for mwd9e27d2b_0794_4f96_b217_610230786396_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw93741c58_8277_4c4d_ae0b_f66c8b61386d*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1*RNase_combined-mwccff0caa_1476_405b_b13a_b17603ebf988*mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2152" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2151" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2162" name="mw93741c58_8277_4c4d_ae0b_f66c8b61386d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2161" name="mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2160" name="mwccff0caa_1476_405b_b13a_b17603ebf988" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2159" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_354" name="Function for mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw670653d9_4218_4df9_b303_5f293e77f990*mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1998" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2109" name="mw670653d9_4218_4df9_b303_5f293e77f990" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2080" name="mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_355" name="Function for mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw880f4368_ff12_4fb4_8274_f28a85086459*mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1*RNase_combined-mw9c569c82_9bbe_4254_be15_864725548e53*mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2185" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2184" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2195" name="mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_2200" name="mw880f4368_ff12_4fb4_8274_f28a85086459" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2199" name="mw9c569c82_9bbe_4254_be15_864725548e53" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2198" name="mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_356" name="Function for mw436881db_622f_457d_9adc_4d50e00496e9_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw31b03405_3b28_47bb_8821_50e7421ede27*mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2187" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2186" name="mw31b03405_3b28_47bb_8821_50e7421ede27" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2114" name="mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_357" name="Function for mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwaf2b763e_ef31_46f8_941a_79f8b7912007*mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1*RNase_combined-mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf*mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2224" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2223" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2237" name="mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2236" name="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2235" name="mwaf2b763e_ef31_46f8_941a_79f8b7912007" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2234" name="mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_358" name="Function for mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwef614928_eb66_47e0_9448_7e37ca1f9da6*mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2182" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2210" name="mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2113" name="mwef614928_eb66_47e0_9448_7e37ca1f9da6" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_359" name="Function for mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1*AGTP_combined/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2248" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2249" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2264" name="mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_360" name="Function for mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf*mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2*IPTG_combined-mw220339f8_94a8_4c76_a9f9_58d5c54662f3*mw36dad171_05d7_4907_8d71_c2b3b5e51352_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2266" name="IPTG_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2267" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2282" name="mw220339f8_94a8_4c76_a9f9_58d5c54662f3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2281" name="mw36dad171_05d7_4907_8d71_c2b3b5e51352_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2280" name="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2279" name="mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_361" name="Function for mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw95143b4c_189f_4371_9e49_c9203b9cbcbc*mweb04477f_13a4_4d28_8518_06b1c5bae4de_SS2^2-mw957daec6_ebbb_49d5_8167_3766b2a188d2*mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2188" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2299" name="mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_2298" name="mw95143b4c_189f_4371_9e49_c9203b9cbcbc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2297" name="mw957daec6_ebbb_49d5_8167_3766b2a188d2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2311" name="mweb04477f_13a4_4d28_8518_06b1c5bae4de_SS2" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_362" name="Function for mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8*mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2^2-mw88e6b301_c19d_4176_a4ab_c796e1855157*mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2227" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2228" name="mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2276" name="mw88e6b301_c19d_4176_a4ab_c796e1855157" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2329" name="mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2328" name="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_363" name="Function for mw39391935_db59_4854_a7f3_d007a3c800e9_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwea067fb0_944c_4ea9_ad77_d6c4637982d5*mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2*Ribo_combined-mwaa2e8186_64eb_4461_8a31_8d0de39dc096*mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2333" name="Ribo_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2314" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2313" name="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_2318" name="mwaa2e8186_64eb_4461_8a31_8d0de39dc096" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2317" name="mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2316" name="mwea067fb0_944c_4ea9_ad77_d6c4637982d5" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_364" name="Function for mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b*mwdb801a58_028d_43ff_90eb_830d15b4bc7f_SS2*RNAP_combined-mw820bf2c5_8b99_479b_81a8_f87bd2e4993c*mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2369" name="RNAP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2365" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2364" name="mw820bf2c5_8b99_479b_81a8_f87bd2e4993c" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2375" name="mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2371" name="mwdb801a58_028d_43ff_90eb_830d15b4bc7f_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2370" name="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_365" name="Function for mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2265" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2181" name="mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2268" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_366" name="Function for mwfdef4d20_4109_463d_b082_b17425eea08c_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99*mw117ae676_633e_4f3a_be8d_eacdbdddfeea_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2351" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2350" name="mw117ae676_633e_4f3a_be8d_eacdbdddfeea_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2349" name="mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_367" name="Function for mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw5d32e76c_c3b5_41f5_ab4d_a989739e976b*mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2*AGTP_combined-mw2ae82278_adf1_4e1e_bc67_81fd0721e604*mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2414" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2413" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2412" name="mw2ae82278_adf1_4e1e_bc67_81fd0721e604" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2411" name="mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2422" name="mw5d32e76c_c3b5_41f5_ab4d_a989739e976b" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2421" name="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_368" name="Function for mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwe97cb484_3f1f_4130_b862_68561e44f9e7*mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2*CUTP_combined-mw8ab9985a_3984_4d46_8b30_0e80a32b67f1*mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2424" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2425" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2426" name="mw8ab9985a_3984_4d46_8b30_0e80a32b67f1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2441" name="mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2434" name="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2435" name="mwe97cb484_3f1f_4130_b862_68561e44f9e7" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_369" name="Function for mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwdb1afb7b_616f_4514_aa03_8864294581f7*mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2*CUTP_combined-mw7afd6ea0_151a_485a_951e_95ad1b693ddb*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2459" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2467" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2466" name="mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2465" name="mw7afd6ea0_151a_485a_951e_95ad1b693ddb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2473" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2472" name="mwdb1afb7b_616f_4514_aa03_8864294581f7" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_370" name="Function for mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw324437a8_304c_4428_82a3_e4d0282c46a1*mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2*AGTP_combined-mw04494ba4_76c3_4733_9985_94acd310297b*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2396" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1981" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2491" name="mw04494ba4_76c3_4733_9985_94acd310297b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2490" name="mw324437a8_304c_4428_82a3_e4d0282c46a1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2489" name="mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2488" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_371" name="Function for mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2063" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2399" name="mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2397" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_372" name="Function for mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067*mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2*AA_combined-mw4749d6e8_391a_4fed_9840_574e826d220b*mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2484" name="AA_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2519" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2530" name="mw4749d6e8_391a_4fed_9840_574e826d220b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2529" name="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2525" name="mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2536" name="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_373" name="Function for mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mweb0418ba_a652_4601_b6c9_0815d8c7fdd7*mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2*AGTP_combined^2-mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a*mw969018c5_d898_4ea0_bb80_35de71266464_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2541" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2513" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2551" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_2550" name="mweb0418ba_a652_4601_b6c9_0815d8c7fdd7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2549" name="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2548" name="mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_374" name="Function for mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw91ca7fce_56fc_4796_be5f_31f2113d05ff*mw969018c5_d898_4ea0_bb80_35de71266464_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2485" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2334" name="mw91ca7fce_56fc_4796_be5f_31f2113d05ff" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2398" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_375" name="Function for mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw45c534f2_a178_4fda_9794_bb6a741ee891*mw969018c5_d898_4ea0_bb80_35de71266464_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2568" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2567" name="mw45c534f2_a178_4fda_9794_bb6a741ee891" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2564" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_376" name="Function for mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36*mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2574" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2575" name="mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2590" name="mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_377" name="Function for mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw5503e10b_b399_401c_85c1_34fcb4a75ef2*mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2*RNase_combined-mwae4a630a_9af9_48e4_934e_06c84da51e82*mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2607" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2606" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2605" name="mw5503e10b_b399_401c_85c1_34fcb4a75ef2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2604" name="mwae4a630a_9af9_48e4_934e_06c84da51e82" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2603" name="mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2600" name="mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_378" name="Function for mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3*mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2481" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2608" name="mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2480" name="mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_379" name="Function for mw4db04782_491a_4679_8196_cafbc55b9f95_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc*mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2*RNase_combined-mwa7c866b1_be00_4def_b475_9f5439669d26*mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2637" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2636" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2647" name="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2646" name="mwa7c866b1_be00_4def_b475_9f5439669d26" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2645" name="mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2644" name="mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_380" name="Function for mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw415d655e_9891_4a00_843a_4d3ea56c6961*mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2269" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2638" name="mw415d655e_9891_4a00_843a_4d3ea56c6961" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2595" name="mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_381" name="Function for mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw33c60e2e_0342_44e5_9018_5b0afb2d9e37*mw969018c5_d898_4ea0_bb80_35de71266464_SS2*RNase_combined-mw743021d4_03be_46d4_8cfe_01c2a98abd72*mw87bea200_227d_4010_9616_9bee4d30458b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2634" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2633" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2662" name="mw33c60e2e_0342_44e5_9018_5b0afb2d9e37" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2661" name="mw743021d4_03be_46d4_8cfe_01c2a98abd72" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2660" name="mw87bea200_227d_4010_9616_9bee4d30458b_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2677" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_382" name="Function for mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb*mw87bea200_227d_4010_9616_9bee4d30458b_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2593" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2635" name="mw87bea200_227d_4010_9616_9bee4d30458b_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2625" name="mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_383" name="Function for mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw5ba0589c_de85_47f9_b4de_6521446eb626*mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2*RNase_combined-mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6*mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2700" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2701" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2716" name="mw5ba0589c_de85_47f9_b4de_6521446eb626" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2715" name="mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2710" name="mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2725" name="mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_384" name="Function for mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw510ac102_ffdc_417a_aaf0_4e2404610fdf*mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2639" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2699" name="mw510ac102_ffdc_417a_aaf0_4e2404610fdf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2667" name="mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_385" name="Function for mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw98935be7_cc3a_45c9_82a1_60b4de40e60b*mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2*RNase_combined-mw36bc145a_0803_475e_952d_f47300281d76*mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2745" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2728" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2680" name="mw36bc145a_0803_475e_952d_f47300281d76" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2679" name="mw98935be7_cc3a_45c9_82a1_60b4de40e60b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2678" name="mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2758" name="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_386" name="Function for mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw6a9add31_478e_43ac_93dc_7ac72e1b235b*mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2736" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2746" name="mw6a9add31_478e_43ac_93dc_7ac72e1b235b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2669" name="mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_387" name="Function for mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwb58426aa_c779_4bf6_abcb_d9b102a11b01*mw5c94996f_4533_4f46_813f_fb42fa7356f3_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2772" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2771" name="mw5c94996f_4533_4f46_813f_fb42fa7356f3_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2749" name="mwb58426aa_c779_4bf6_abcb_d9b102a11b01" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_388" name="Function for mw662fff41_e987_4afc_a587_e68c159d727c_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw047616e8_0b14_42e1_aa37_4c17eb01c742*mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2*Ribo_combined-mw76a20dcd_87ed_43cb_9023_0c10a44bc081*mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2778" name="Ribo_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2777" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2794" name="mw047616e8_0b14_42e1_aa37_4c17eb01c742" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2793" name="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2792" name="mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2806" name="mw76a20dcd_87ed_43cb_9023_0c10a44bc081" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_389" name="Function for mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwa4a57dad_68c2_457b_b8fe_5e44e0f79081*mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2*RNAP_combined-mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316*mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2811" name="RNAP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2821" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2820" name="mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2819" name="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2816" name="mwa4a57dad_68c2_457b_b8fe_5e44e0f79081" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2817" name="mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_390" name="Function for mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2702" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2703" name="mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2750" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_391" name="Function for mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw3d1a9380_01d0_445c_a000_7aef19654d03*mwc200e475_c73f_465a_8de3_97b93a64c967_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_776" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1643" name="mw3d1a9380_01d0_445c_a000_7aef19654d03" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1601" name="mwc200e475_c73f_465a_8de3_97b93a64c967_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_392" name="Function for mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw2954d485_8830_42f7_9567_c5fb232a305e*mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2*AGTP_combined-mwe2129027_42be_48a5_b1ac_08a8475a4489*mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3038" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3039" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3040" name="mw2954d485_8830_42f7_9567_c5fb232a305e" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3041" name="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3042" name="mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3043" name="mwe2129027_42be_48a5_b1ac_08a8475a4489" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_393" name="Function for mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw861809d2_2f89_480e_8ac0_a22bd363ee4d*mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2*CUTP_combined-mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc*mw49de218b_1e29_45e1_862c_0dc03a516700_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3050" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3051" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3052" name="mw49de218b_1e29_45e1_862c_0dc03a516700_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_3053" name="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3054" name="mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3055" name="mw861809d2_2f89_480e_8ac0_a22bd363ee4d" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_394" name="Function for mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw420d2b27_f423_4274_84cb_6cac151f0d41*mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2*CUTP_combined-mwae8d8860_b8ab_4267_b767_361c82045673*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3062" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3063" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3064" name="mw420d2b27_f423_4274_84cb_6cac151f0d41" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3065" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_3066" name="mwae8d8860_b8ab_4267_b767_361c82045673" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3067" name="mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_395" name="Function for mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw7f4252d3_360b_4d1c_be74_de2dd056dd30*mw49de218b_1e29_45e1_862c_0dc03a516700_SS2*AGTP_combined-mw495d6006_2243_4a1b_8f99_da34ba8620c4*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3074" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3075" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3076" name="mw495d6006_2243_4a1b_8f99_da34ba8620c4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3077" name="mw49de218b_1e29_45e1_862c_0dc03a516700_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3078" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3079" name="mw7f4252d3_360b_4d1c_be74_de2dd056dd30" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_396" name="Function for mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw5c4b8017_d12f_4da7_844b_66866761e8a8*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3035" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3036" name="mw5c4b8017_d12f_4da7_844b_66866761e8a8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2779" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_397" name="Function for mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw1f7cd54c_006a_4336_a29b_b8e165e47ffd*mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2*mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2-mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4*mw7da17532_fa9d_4ff2_8436_cb08e7696382_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3092" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3093" name="mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3094" name="mw1f7cd54c_006a_4336_a29b_b8e165e47ffd" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3095" name="mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_3096" name="mw7da17532_fa9d_4ff2_8436_cb08e7696382_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3097" name="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_398" name="Function for mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw886360ca_3240_4b70_b2ed_71f6a14f6991*mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2*AA_combined-mw5f037ee6_02ab_416b_b171_6a8d50c40d98*mw6729d170_4447_449b_9e97_0908b0caab6b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3104" name="AA_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3105" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3106" name="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3107" name="mw5f037ee6_02ab_416b_b171_6a8d50c40d98" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_3108" name="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3109" name="mw886360ca_3240_4b70_b2ed_71f6a14f6991" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_399" name="Function for mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwd0db75ff_7917_4f48_8568_a6e4deaaef49*mw6729d170_4447_449b_9e97_0908b0caab6b_SS2*AGTP_combined^2-mwc11b606e_316e_4d71_9489_566accdec78f*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3116" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3117" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3118" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_3119" name="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3120" name="mwc11b606e_316e_4d71_9489_566accdec78f" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3121" name="mwd0db75ff_7917_4f48_8568_a6e4deaaef49" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_400" name="Function for mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwda5b89c3_b635_462b_99e8_64dcdb001557*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3091" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3089" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2787" name="mwda5b89c3_b635_462b_99e8_64dcdb001557" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_401" name="Function for mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw1f06627c_eca4_4a8e_95a3_0507a39254a8*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3131" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3132" name="mw1f06627c_eca4_4a8e_95a3_0507a39254a8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3133" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_402" name="Function for mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw1ce3701e_a468_4bc4_8e8f_9490b0481417*mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3137" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3138" name="mw1ce3701e_a468_4bc4_8e8f_9490b0481417" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3139" name="mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_403" name="Function for mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwb8b2f665_972a_4fa5_b77b_65267d72d771*mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2*RNase_combined-mw901997be_8666_4eaa_89ce_67dae645b596*mw611fccdf_157e_40db_8702_848bfb75c079_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3146" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3147" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3148" name="mw611fccdf_157e_40db_8702_848bfb75c079_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_3149" name="mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3150" name="mw901997be_8666_4eaa_89ce_67dae645b596" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3151" name="mwb8b2f665_972a_4fa5_b77b_65267d72d771" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_404" name="Function for mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b*mw611fccdf_157e_40db_8702_848bfb75c079_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3144" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3145" name="mw611fccdf_157e_40db_8702_848bfb75c079_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2735" name="mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_405" name="Function for mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw9095c419_1af6_423f_a17b_f35649e9b8e3*mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2*RNase_combined-mw8495daea_5d03_48d8_9a63_049bb19938e1*mw7e686ddd_072e_4ab7_8512_92481d978201_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3164" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3165" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3166" name="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3167" name="mw7e686ddd_072e_4ab7_8512_92481d978201_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_3168" name="mw8495daea_5d03_48d8_9a63_049bb19938e1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3169" name="mw9095c419_1af6_423f_a17b_f35649e9b8e3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_406" name="Function for mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc*mw7e686ddd_072e_4ab7_8512_92481d978201_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3143" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3163" name="mw7e686ddd_072e_4ab7_8512_92481d978201_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3090" name="mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_407" name="Function for mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw93951f7c_0025_4fcb_b7aa_13011fab660e*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2*RNase_combined-mw16c052b6_5d10_4f5b_b210_7e2b014b2b09*mw88722339_572e_456f_85da_875cfc4e92bc_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3182" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3183" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3184" name="mw16c052b6_5d10_4f5b_b210_7e2b014b2b09" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3185" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3186" name="mw88722339_572e_456f_85da_875cfc4e92bc_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3187" name="mw93951f7c_0025_4fcb_b7aa_13011fab660e" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_408" name="Function for mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwdb1c589a_02fe_4cbe_8254_348163ce6ad0*mw88722339_572e_456f_85da_875cfc4e92bc_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3179" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3181" name="mw88722339_572e_456f_85da_875cfc4e92bc_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3162" name="mwdb1c589a_02fe_4cbe_8254_348163ce6ad0" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_409" name="Function for mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw67ee2769_d071_4e0c_8ae9_890a69369c1c*mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2*RNase_combined-mw32cd40a9_406f_4471_8a5c_ccf548642a0b*mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3200" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3201" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3202" name="mw32cd40a9_406f_4471_8a5c_ccf548642a0b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3203" name="mw67ee2769_d071_4e0c_8ae9_890a69369c1c" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_3204" name="mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3205" name="mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_410" name="Function for mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwc71a57e2_1da1_46e5_a212_4a2eddb53988*mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3197" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3199" name="mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3161" name="mwc71a57e2_1da1_46e5_a212_4a2eddb53988" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_411" name="Function for mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw6e36b10f_0200_499f_802b_7186ac265e97*mw6729d170_4447_449b_9e97_0908b0caab6b_SS2*RNase_combined-mw0e13e734_1441_4dd8_8bb2_6c45e689ce89*mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3218" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3219" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3220" name="mw0e13e734_1441_4dd8_8bb2_6c45e689ce89" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3221" name="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3222" name="mw6e36b10f_0200_499f_802b_7186ac265e97" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3223" name="mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_412" name="Function for mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw47f65815_3810_49b1_98a8_e8576ae26c72*mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3215" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3217" name="mw47f65815_3810_49b1_98a8_e8576ae26c72" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3037" name="mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_413" name="Function for r2_" type="UserDefined" reversible="false">
      <Expression>
        k2f_*xxIPTG_protein_alHL_/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3237" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3238" name="k2f_" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3239" name="xxIPTG_protein_alHL_" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="_1" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="1" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-13T01:33:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="cell_internal" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
      <Compartment key="Compartment_2" name="cell_external" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_190" name="protein alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_191" name="RNA utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_192" name="Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_193" name="DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_194" name="RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_195" name="CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_196" name="term_RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_197" name="AA:2AGTP:Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_198" name="term_Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_199" name="AGTP:RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_200" name="CUTP:RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_201" name="AA:Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_202" name="RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_203" name="Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_204" name="AA:2AGTP:Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_205" name="term_Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_206" name="AA:Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_207" name="RNAP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_208" name="Ribo" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_209" name="RecBCD" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_210" name="RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_211" name="AGTP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_212" name="CUTP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_213" name="AA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_214" name="protein lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_215" name="protein lacIdimer" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_216" name="protein lacItetramer" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_217" name="RNA utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_218" name="Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_219" name="DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_220" name="RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_221" name="CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_222" name="term_RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_223" name="AA:2AGTP:Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_224" name="term_Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_225" name="protein deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_226" name="protein deGFP*" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_227" name="RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_228" name="Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_229" name="DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_230" name="RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_231" name="CUTP:AGTP:RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_232" name="term_RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_233" name="AA:2AGTP:Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_234" name="term_Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_235" name="IPTG:protein lacItetramer" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_236" name="AGTP:RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_237" name="CUTP:RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_238" name="AA:Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_239" name="RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_240" name="Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_241" name="AA:2AGTP:Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_242" name="term_Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_243" name="AA:Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_244" name="AGTP:RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_245" name="CUTP:RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_246" name="DNA plac--utr1--deGFP:protein lacItetramer" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_247" name="AA:Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_248" name="RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_249" name="Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_250" name="AA:2AGTP:Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_251" name="term_Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_252" name="AA:Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_253" name="AGTP_USED" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_254" name="IPTG" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_255" name="IPTG" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_256" name="protein alHL*" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_257" name="IPTG:protein alHL*" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_1" name="AGTPdeg_F" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_0" name="AGTPdeg_F_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k1f" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k1r" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k2f" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_252" name="mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_190" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_256" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4682" name="mwe60d7d7d_697e_4455_a11e_eac9e72a433e" value="0.00231049"/>
        </ListOfConstants>
        <KineticLaw function="Function_334" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1618">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1619">
              <SourceParameter reference="Metabolite_190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1620">
              <SourceParameter reference="Parameter_4682"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_253" name="mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_192" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4589" name="mw3830ada9_8c1f_4408_8792_b352b9545092" value="0.2"/>
          <Constant key="Parameter_4585" name="mw4b24730a_ba8b_4323_8c9e_c8d793425e60" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_335" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1648">
              <SourceParameter reference="Metabolite_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1649">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1650">
              <SourceParameter reference="Parameter_4589"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1660">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1661">
              <SourceParameter reference="Parameter_4585"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1662">
              <SourceParameter reference="Metabolite_192"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_254" name="mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_193" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4581" name="mw48cc8c87_2548_4333_b0d0_129277cd1fb4" value="20"/>
          <Constant key="Parameter_4579" name="mw8b9a381a_163f_435c_934b_38e9d22433c5" value="400"/>
        </ListOfConstants>
        <KineticLaw function="Function_336" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1696">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1697">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1698">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1699">
              <SourceParameter reference="Parameter_4581"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1700">
              <SourceParameter reference="Parameter_4579"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1701">
              <SourceParameter reference="Metabolite_194"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_255" name="mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4583" name="mw66da3667_22e0_4c78_82a4_32def7919cd0" value="0.748529"/>
        </ListOfConstants>
        <KineticLaw function="Function_337" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1630">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1605">
              <SourceParameter reference="Parameter_4583"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1604">
              <SourceParameter reference="Metabolite_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_256" name="mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_207" stoichiometry="1"/>
          <Product metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4587" name="mwd0042ae4_1646_428b_99de_e8ca18f1d5a2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_338" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1762">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1763">
              <SourceParameter reference="Metabolite_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1764">
              <SourceParameter reference="Parameter_4587"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_257" name="mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_194" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_199" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4580" name="mw490dcf1e_63bd_479e_a995_3f131fb43e97" value="1000"/>
          <Constant key="Parameter_4693" name="mw002f98bd_2b9a_40dd_93c4_225856292b8a" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_339" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1798">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1799">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1800">
              <SourceParameter reference="Parameter_4693"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1810">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1811">
              <SourceParameter reference="Parameter_4580"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1812">
              <SourceParameter reference="Metabolite_194"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_258" name="mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_194" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_212" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_200" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4697" name="mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda" value="1000"/>
          <Constant key="Parameter_4698" name="mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_340" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1834">
              <SourceParameter reference="Metabolite_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1835">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1836">
              <SourceParameter reference="Parameter_4698"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1852">
              <SourceParameter reference="Metabolite_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1853">
              <SourceParameter reference="Metabolite_194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1854">
              <SourceParameter reference="Parameter_4697"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_259" name="mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_199" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_212" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4696" name="mwf3f8bee7_7617_49f4_990a_afc7b5485ca7" value="1"/>
          <Constant key="Parameter_4584" name="mw4ce1e65c_926e_4d3c_b3e6_396def864bd6" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_341" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1882">
              <SourceParameter reference="Metabolite_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1883">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1884">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1894">
              <SourceParameter reference="Parameter_4584"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1895">
              <SourceParameter reference="Metabolite_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1896">
              <SourceParameter reference="Parameter_4696"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_260" name="mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_200" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4709" name="mw710fb4f7_6073_42ed_a40d_41d009035891" value="1"/>
          <Constant key="Parameter_7165" name="mw6aa3baca_c087_46d2_bf9e_75440163765a" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_342" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1933">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1934">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1935">
              <SourceParameter reference="Parameter_7165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1936">
              <SourceParameter reference="Parameter_4709"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1937">
              <SourceParameter reference="Metabolite_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1938">
              <SourceParameter reference="Metabolite_200"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_261" name="mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_196" stoichiometry="1"/>
          <Product metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7202" name="mw2996778c_c27b_4ec7_a7bb_34b2ceda6977" value="0.00147059"/>
        </ListOfConstants>
        <KineticLaw function="Function_343" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1603">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1776">
              <SourceParameter reference="Parameter_7202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1774">
              <SourceParameter reference="Metabolite_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_262" name="mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_192" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7200" name="mwa0cbd407_e863_4341_b66b_060977850e66" value="300"/>
          <Constant key="Parameter_7199" name="mw5ffbf3db_6003_4217_9bd8_796832a8ba27" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_344" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1984">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1985">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2006">
              <SourceParameter reference="Parameter_7199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2005">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2004">
              <SourceParameter reference="Parameter_7200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2003">
              <SourceParameter reference="Metabolite_192"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_263" name="mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7197" name="mw759eca19_9151_4ba3_acf0_89be22ebccd8" value="30"/>
          <Constant key="Parameter_7195" name="mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_345" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2020">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2019">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2030">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2029">
              <SourceParameter reference="Parameter_7197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2028">
              <SourceParameter reference="Parameter_7195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2027">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_264" name="mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7196" name="mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622" value="0.024"/>
        </ListOfConstants>
        <KineticLaw function="Function_346" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1775">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1632">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1997">
              <SourceParameter reference="Parameter_7196"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_265" name="mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_198" stoichiometry="1"/>
          <Product metabolite="Metabolite_190" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7201" name="mwdbe11a94_d411_4b68_aa97_8f09854129f2" value="0.012"/>
        </ListOfConstants>
        <KineticLaw function="Function_347" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2053">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2052">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2018">
              <SourceParameter reference="Parameter_7201"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_266" name="mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_191" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7206" name="mw0768058d_03e2_4673_8542_1f8cb39d4ec3" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_348" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2044">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2043">
              <SourceParameter reference="Parameter_7206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2060">
              <SourceParameter reference="Metabolite_198"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_267" name="mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_202" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7191" name="mw9031e56e_f709_472e_841a_f697866e9019" value="10"/>
          <Constant key="Parameter_7193" name="mwd24cd525_af85_43b1_afc4_c91d2d887a5b" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_349" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2077">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2076">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2073">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2083">
              <SourceParameter reference="Metabolite_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2084">
              <SourceParameter reference="Parameter_7191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2099">
              <SourceParameter reference="Parameter_7193"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_268" name="mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_202" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7194" name="mw9008fd58_dae9_4ff7_b526_e14558cae1c3" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_350" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1996">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2078">
              <SourceParameter reference="Metabolite_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1631">
              <SourceParameter reference="Parameter_7194"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_269" name="mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_192" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_203" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7198" name="mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525" value="10"/>
          <Constant key="Parameter_7192" name="mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_351" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2119">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2118">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2117">
              <SourceParameter reference="Parameter_7192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2131">
              <SourceParameter reference="Parameter_7198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2130">
              <SourceParameter reference="Metabolite_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2129">
              <SourceParameter reference="Metabolite_192"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_270" name="mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_203" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7169" name="mw980fee86_abb7_474c_acba_0aa345a38f0f" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_352" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2062">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2120">
              <SourceParameter reference="Metabolite_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2079">
              <SourceParameter reference="Parameter_7169"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_271" name="mwd9e27d2b_0794_4f96_b217_610230786396_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_204" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7164" name="mw93741c58_8277_4c4d_ae0b_f66c8b61386d" value="10"/>
          <Constant key="Parameter_7163" name="mwccff0caa_1476_405b_b13a_b17603ebf988" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_353" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2152">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2151">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2162">
              <SourceParameter reference="Parameter_7164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2161">
              <SourceParameter reference="Metabolite_204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2160">
              <SourceParameter reference="Parameter_7163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2159">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_272" name="mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_204" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
          <Product metabolite="Metabolite_211" stoichiometry="2"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7168" name="mw670653d9_4218_4df9_b303_5f293e77f990" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_354" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1998">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2109">
              <SourceParameter reference="Parameter_7168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2080">
              <SourceParameter reference="Metabolite_204"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_273" name="mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_198" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7170" name="mw880f4368_ff12_4fb4_8274_f28a85086459" value="10"/>
          <Constant key="Parameter_7174" name="mw9c569c82_9bbe_4254_be15_864725548e53" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_355" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2185">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2184">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2195">
              <SourceParameter reference="Metabolite_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2200">
              <SourceParameter reference="Parameter_7170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2199">
              <SourceParameter reference="Parameter_7174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2198">
              <SourceParameter reference="Metabolite_198"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_274" name="mw436881db_622f_457d_9adc_4d50e00496e9_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7183" name="mw31b03405_3b28_47bb_8821_50e7421ede27" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_356" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2187">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2186">
              <SourceParameter reference="Parameter_7183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2114">
              <SourceParameter reference="Metabolite_205"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_275" name="mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_206" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7171" name="mwaf2b763e_ef31_46f8_941a_79f8b7912007" value="10"/>
          <Constant key="Parameter_7189" name="mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_357" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2224">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2223">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2237">
              <SourceParameter reference="Parameter_7189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2236">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2235">
              <SourceParameter reference="Parameter_7171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2234">
              <SourceParameter reference="Metabolite_206"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_276" name="mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_206" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7188" name="mwef614928_eb66_47e0_9448_7e37ca1f9da6" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_358" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2182">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2210">
              <SourceParameter reference="Metabolite_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2113">
              <SourceParameter reference="Parameter_7188"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_277" name="mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_253" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7186" name="mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_359" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2248">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2249">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2264">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_278" name="mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_216" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_255" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_235" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7167" name="mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf" value="0.1"/>
          <Constant key="Parameter_7175" name="mw220339f8_94a8_4c76_a9f9_58d5c54662f3" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_360" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2266">
              <SourceParameter reference="Metabolite_255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2267">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2282">
              <SourceParameter reference="Parameter_7175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2281">
              <SourceParameter reference="Metabolite_235"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2280">
              <SourceParameter reference="Metabolite_216"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2279">
              <SourceParameter reference="Parameter_7167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_279" name="mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_214" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_215" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7184" name="mw95143b4c_189f_4371_9e49_c9203b9cbcbc" value="1.1"/>
          <Constant key="Parameter_7173" name="mw957daec6_ebbb_49d5_8167_3766b2a188d2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_361" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2188">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2299">
              <SourceParameter reference="Metabolite_215"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2298">
              <SourceParameter reference="Parameter_7184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2297">
              <SourceParameter reference="Parameter_7173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2311">
              <SourceParameter reference="Metabolite_214"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_280" name="mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_215" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_216" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7185" name="mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8" value="2"/>
          <Constant key="Parameter_7176" name="mw88e6b301_c19d_4176_a4ab_c796e1855157" value="250"/>
        </ListOfConstants>
        <KineticLaw function="Function_362" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2227">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2228">
              <SourceParameter reference="Metabolite_215"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2276">
              <SourceParameter reference="Parameter_7176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2329">
              <SourceParameter reference="Parameter_7185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2328">
              <SourceParameter reference="Metabolite_216"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_281" name="mw39391935_db59_4854_a7f3_d007a3c800e9_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_217" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_218" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7180" name="mwea067fb0_944c_4ea9_ad77_d6c4637982d5" value="0.2"/>
          <Constant key="Parameter_7177" name="mwaa2e8186_64eb_4461_8a31_8d0de39dc096" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_363" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2333">
              <SourceParameter reference="Metabolite_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2314">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2313">
              <SourceParameter reference="Metabolite_218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2318">
              <SourceParameter reference="Parameter_7177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2317">
              <SourceParameter reference="Metabolite_217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2316">
              <SourceParameter reference="Parameter_7180"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_282" name="mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_219" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_220" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7181" name="mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b" value="20"/>
          <Constant key="Parameter_7182" name="mw820bf2c5_8b99_479b_81a8_f87bd2e4993c" value="400"/>
        </ListOfConstants>
        <KineticLaw function="Function_364" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2369">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2365">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2364">
              <SourceParameter reference="Parameter_7182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2375">
              <SourceParameter reference="Parameter_7181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2371">
              <SourceParameter reference="Metabolite_219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2370">
              <SourceParameter reference="Metabolite_220"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_283" name="mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_220" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7179" name="mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc" value="0.74877"/>
        </ListOfConstants>
        <KineticLaw function="Function_365" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2265">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2181">
              <SourceParameter reference="Parameter_7179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2268">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_284" name="mwfdef4d20_4109_463d_b082_b17425eea08c_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_222" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_207" stoichiometry="1"/>
          <Product metabolite="Metabolite_219" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7190" name="mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_366" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2351">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2350">
              <SourceParameter reference="Metabolite_222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2349">
              <SourceParameter reference="Parameter_7190"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_285" name="mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_220" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_236" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7172" name="mw5d32e76c_c3b5_41f5_ab4d_a989739e976b" value="1000"/>
          <Constant key="Parameter_7178" name="mw2ae82278_adf1_4e1e_bc67_81fd0721e604" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_367" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2414">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2413">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2412">
              <SourceParameter reference="Parameter_7178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2411">
              <SourceParameter reference="Metabolite_236"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2422">
              <SourceParameter reference="Parameter_7172"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2421">
              <SourceParameter reference="Metabolite_220"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_286" name="mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_220" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_212" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_237" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7187" name="mwe97cb484_3f1f_4130_b862_68561e44f9e7" value="1000"/>
          <Constant key="Parameter_7205" name="mw8ab9985a_3984_4d46_8b30_0e80a32b67f1" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_368" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2424">
              <SourceParameter reference="Metabolite_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2425">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2426">
              <SourceParameter reference="Parameter_7205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2441">
              <SourceParameter reference="Metabolite_237"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2434">
              <SourceParameter reference="Metabolite_220"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2435">
              <SourceParameter reference="Parameter_7187"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_287" name="mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_236" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_212" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7204" name="mwdb1afb7b_616f_4514_aa03_8864294581f7" value="1"/>
          <Constant key="Parameter_7139" name="mw7afd6ea0_151a_485a_951e_95ad1b693ddb" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_369" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2459">
              <SourceParameter reference="Metabolite_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2467">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2466">
              <SourceParameter reference="Metabolite_236"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2465">
              <SourceParameter reference="Parameter_7139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2473">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2472">
              <SourceParameter reference="Parameter_7204"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_288" name="mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_237" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7207" name="mw324437a8_304c_4428_82a3_e4d0282c46a1" value="1"/>
          <Constant key="Parameter_7137" name="mw04494ba4_76c3_4733_9985_94acd310297b" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_370" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2396">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1981">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2491">
              <SourceParameter reference="Parameter_7137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2490">
              <SourceParameter reference="Parameter_7207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2489">
              <SourceParameter reference="Metabolite_237"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2488">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_289" name="mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_222" stoichiometry="1"/>
          <Product metabolite="Metabolite_217" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7210" name="mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113" value="0.00122951"/>
        </ListOfConstants>
        <KineticLaw function="Function_371" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2063">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2399">
              <SourceParameter reference="Parameter_7210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2397">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_290" name="mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_218" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_238" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7203" name="mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067" value="300"/>
          <Constant key="Parameter_7209" name="mw4749d6e8_391a_4fed_9840_574e826d220b" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_372" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2484">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2519">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2530">
              <SourceParameter reference="Parameter_7209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2529">
              <SourceParameter reference="Metabolite_218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2525">
              <SourceParameter reference="Parameter_7203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2536">
              <SourceParameter reference="Metabolite_238"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_291" name="mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_238" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7208" name="mweb0418ba_a652_4601_b6c9_0815d8c7fdd7" value="30"/>
          <Constant key="Parameter_7216" name="mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_373" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2541">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2513">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2551">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2550">
              <SourceParameter reference="Parameter_7208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2549">
              <SourceParameter reference="Metabolite_238"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2548">
              <SourceParameter reference="Parameter_7216"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_292" name="mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_224" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7220" name="mw91ca7fce_56fc_4796_be5f_31f2113d05ff" value="0.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_374" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2485">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2334">
              <SourceParameter reference="Parameter_7220"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2398">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_293" name="mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_224" stoichiometry="1"/>
          <Product metabolite="Metabolite_214" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7214" name="mw45c534f2_a178_4fda_9794_bb6a741ee891" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_375" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2568">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2567">
              <SourceParameter reference="Parameter_7214"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2564">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_294" name="mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_224" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_217" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7215" name="mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_376" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2574">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2575">
              <SourceParameter reference="Metabolite_224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2590">
              <SourceParameter reference="Parameter_7215"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_295" name="mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_217" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_239" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7219" name="mw5503e10b_b399_401c_85c1_34fcb4a75ef2" value="10"/>
          <Constant key="Parameter_7213" name="mwae4a630a_9af9_48e4_934e_06c84da51e82" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_377" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2607">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2606">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2605">
              <SourceParameter reference="Parameter_7219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2604">
              <SourceParameter reference="Parameter_7213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2603">
              <SourceParameter reference="Metabolite_239"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2600">
              <SourceParameter reference="Metabolite_217"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_296" name="mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_239" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7217" name="mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_378" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2481">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2608">
              <SourceParameter reference="Parameter_7217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2480">
              <SourceParameter reference="Metabolite_239"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_297" name="mw4db04782_491a_4679_8196_cafbc55b9f95_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_218" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_240" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7223" name="mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc" value="10"/>
          <Constant key="Parameter_7222" name="mwa7c866b1_be00_4def_b475_9f5439669d26" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_379" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2637">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2636">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2647">
              <SourceParameter reference="Metabolite_218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2646">
              <SourceParameter reference="Parameter_7222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2645">
              <SourceParameter reference="Parameter_7223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2644">
              <SourceParameter reference="Metabolite_240"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_298" name="mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_240" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7218" name="mw415d655e_9891_4a00_843a_4d3ea56c6961" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_380" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2269">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2638">
              <SourceParameter reference="Parameter_7218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2595">
              <SourceParameter reference="Metabolite_240"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_299" name="mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_223" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_241" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7224" name="mw33c60e2e_0342_44e5_9018_5b0afb2d9e37" value="10"/>
          <Constant key="Parameter_7227" name="mw743021d4_03be_46d4_8cfe_01c2a98abd72" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_381" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2634">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2633">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2662">
              <SourceParameter reference="Parameter_7224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2661">
              <SourceParameter reference="Parameter_7227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2660">
              <SourceParameter reference="Metabolite_241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2677">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_300" name="mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_241" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
          <Product metabolite="Metabolite_211" stoichiometry="2"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7226" name="mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_382" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2593">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2635">
              <SourceParameter reference="Metabolite_241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2625">
              <SourceParameter reference="Parameter_7226"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_301" name="mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_224" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_242" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7225" name="mw5ba0589c_de85_47f9_b4de_6521446eb626" value="10"/>
          <Constant key="Parameter_7221" name="mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_383" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2700">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2701">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2716">
              <SourceParameter reference="Parameter_7225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2715">
              <SourceParameter reference="Metabolite_224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2710">
              <SourceParameter reference="Parameter_7221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2725">
              <SourceParameter reference="Metabolite_242"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_302" name="mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_242" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7228" name="mw510ac102_ffdc_417a_aaf0_4e2404610fdf" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_384" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2639">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2699">
              <SourceParameter reference="Parameter_7228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2667">
              <SourceParameter reference="Metabolite_242"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_303" name="mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_238" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_243" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7232" name="mw98935be7_cc3a_45c9_82a1_60b4de40e60b" value="10"/>
          <Constant key="Parameter_7230" name="mw36bc145a_0803_475e_952d_f47300281d76" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_385" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2745">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2728">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2680">
              <SourceParameter reference="Parameter_7230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2679">
              <SourceParameter reference="Parameter_7232"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2678">
              <SourceParameter reference="Metabolite_243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2758">
              <SourceParameter reference="Metabolite_238"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_304" name="mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_243" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7231" name="mw6a9add31_478e_43ac_93dc_7ac72e1b235b" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_386" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2736">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2746">
              <SourceParameter reference="Parameter_7231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2669">
              <SourceParameter reference="Metabolite_243"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_305" name="mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_225" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_226" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7229" name="mwb58426aa_c779_4bf6_abcb_d9b102a11b01" value="0.00231049"/>
        </ListOfConstants>
        <KineticLaw function="Function_387" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2772">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2771">
              <SourceParameter reference="Metabolite_225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2749">
              <SourceParameter reference="Parameter_7229"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_306" name="mw662fff41_e987_4afc_a587_e68c159d727c_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_227" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_228" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7236" name="mw047616e8_0b14_42e1_aa37_4c17eb01c742" value="0.2"/>
          <Constant key="Parameter_7235" name="mw76a20dcd_87ed_43cb_9023_0c10a44bc081" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_388" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2778">
              <SourceParameter reference="Metabolite_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2777">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2794">
              <SourceParameter reference="Parameter_7236"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2793">
              <SourceParameter reference="Metabolite_228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2792">
              <SourceParameter reference="Metabolite_227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2806">
              <SourceParameter reference="Parameter_7235"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_307" name="mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_229" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_230" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7234" name="mwa4a57dad_68c2_457b_b8fe_5e44e0f79081" value="20"/>
          <Constant key="Parameter_7237" name="mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316" value="400"/>
        </ListOfConstants>
        <KineticLaw function="Function_389" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2811">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2821">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2820">
              <SourceParameter reference="Metabolite_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2819">
              <SourceParameter reference="Metabolite_230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2816">
              <SourceParameter reference="Parameter_7234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2817">
              <SourceParameter reference="Parameter_7237"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_308" name="mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_230" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7242" name="mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4" value="0.748529"/>
        </ListOfConstants>
        <KineticLaw function="Function_390" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2702">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2703">
              <SourceParameter reference="Parameter_7242"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2750">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_309" name="mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_232" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_207" stoichiometry="1"/>
          <Product metabolite="Metabolite_229" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7243" name="mw3d1a9380_01d0_445c_a000_7aef19654d03" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_391" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1643">
              <SourceParameter reference="Parameter_7243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1601">
              <SourceParameter reference="Metabolite_232"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_310" name="mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_230" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_244" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7244" name="mw2954d485_8830_42f7_9567_c5fb232a305e" value="1000"/>
          <Constant key="Parameter_7233" name="mwe2129027_42be_48a5_b1ac_08a8475a4489" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_392" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3038">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3039">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3040">
              <SourceParameter reference="Parameter_7244"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3041">
              <SourceParameter reference="Metabolite_230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3042">
              <SourceParameter reference="Metabolite_244"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3043">
              <SourceParameter reference="Parameter_7233"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_311" name="mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_230" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_212" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_245" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7239" name="mw861809d2_2f89_480e_8ac0_a22bd363ee4d" value="1000"/>
          <Constant key="Parameter_7240" name="mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_393" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3050">
              <SourceParameter reference="Metabolite_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3051">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3052">
              <SourceParameter reference="Metabolite_245"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3053">
              <SourceParameter reference="Metabolite_230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3054">
              <SourceParameter reference="Parameter_7240"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3055">
              <SourceParameter reference="Parameter_7239"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_312" name="mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_244" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_212" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7245" name="mw420d2b27_f423_4274_84cb_6cac151f0d41" value="1"/>
          <Constant key="Parameter_7248" name="mwae8d8860_b8ab_4267_b767_361c82045673" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_394" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3062">
              <SourceParameter reference="Metabolite_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3063">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3064">
              <SourceParameter reference="Parameter_7245"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3065">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3066">
              <SourceParameter reference="Parameter_7248"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3067">
              <SourceParameter reference="Metabolite_244"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_313" name="mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_245" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7247" name="mw7f4252d3_360b_4d1c_be74_de2dd056dd30" value="1"/>
          <Constant key="Parameter_7246" name="mw495d6006_2243_4a1b_8f99_da34ba8620c4" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_395" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3074">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3075">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3076">
              <SourceParameter reference="Parameter_7246"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3077">
              <SourceParameter reference="Metabolite_245"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3078">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3079">
              <SourceParameter reference="Parameter_7247"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_314" name="mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_232" stoichiometry="1"/>
          <Product metabolite="Metabolite_227" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7238" name="mw5c4b8017_d12f_4da7_844b_66866761e8a8" value="0.00147059"/>
        </ListOfConstants>
        <KineticLaw function="Function_396" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3035">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3036">
              <SourceParameter reference="Parameter_7238"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2779">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_315" name="mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_229" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_216" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_246" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7241" name="mw1f7cd54c_006a_4336_a29b_b8e165e47ffd" value="150"/>
          <Constant key="Parameter_7251" name="mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_397" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3092">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3093">
              <SourceParameter reference="Metabolite_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3094">
              <SourceParameter reference="Parameter_7241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3095">
              <SourceParameter reference="Parameter_7251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3096">
              <SourceParameter reference="Metabolite_246"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3097">
              <SourceParameter reference="Metabolite_216"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_316" name="mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_228" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_247" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7250" name="mw886360ca_3240_4b70_b2ed_71f6a14f6991" value="300"/>
          <Constant key="Parameter_7249" name="mw5f037ee6_02ab_416b_b171_6a8d50c40d98" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_398" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3104">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3105">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3106">
              <SourceParameter reference="Metabolite_228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3107">
              <SourceParameter reference="Parameter_7249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3108">
              <SourceParameter reference="Metabolite_247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3109">
              <SourceParameter reference="Parameter_7250"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_317" name="mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_247" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_211" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_233" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7252" name="mwd0db75ff_7917_4f48_8568_a6e4deaaef49" value="30"/>
          <Constant key="Parameter_7260" name="mwc11b606e_316e_4d71_9489_566accdec78f" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_399" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3116">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3117">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3118">
              <SourceParameter reference="Metabolite_233"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3119">
              <SourceParameter reference="Metabolite_247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3120">
              <SourceParameter reference="Parameter_7260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3121">
              <SourceParameter reference="Parameter_7252"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_318" name="mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_233" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_234" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7255" name="mwda5b89c3_b635_462b_99e8_64dcdb001557" value="0.024"/>
        </ListOfConstants>
        <KineticLaw function="Function_400" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3091">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3089">
              <SourceParameter reference="Metabolite_233"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2787">
              <SourceParameter reference="Parameter_7255"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_319" name="mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_233" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_234" stoichiometry="1"/>
          <Product metabolite="Metabolite_225" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7253" name="mw1f06627c_eca4_4a8e_95a3_0507a39254a8" value="0.012"/>
        </ListOfConstants>
        <KineticLaw function="Function_401" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3131">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3132">
              <SourceParameter reference="Parameter_7253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3133">
              <SourceParameter reference="Metabolite_233"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_320" name="mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_234" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_227" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7254" name="mw1ce3701e_a468_4bc4_8e8f_9490b0481417" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_402" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3137">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3138">
              <SourceParameter reference="Parameter_7254"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3139">
              <SourceParameter reference="Metabolite_234"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_321" name="mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_227" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_248" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7256" name="mwb8b2f665_972a_4fa5_b77b_65267d72d771" value="10"/>
          <Constant key="Parameter_7258" name="mw901997be_8666_4eaa_89ce_67dae645b596" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_403" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3146">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3147">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3148">
              <SourceParameter reference="Metabolite_248"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3149">
              <SourceParameter reference="Metabolite_227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3150">
              <SourceParameter reference="Parameter_7258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3151">
              <SourceParameter reference="Parameter_7256"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_322" name="mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_248" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7212" name="mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_404" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3144">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3145">
              <SourceParameter reference="Metabolite_248"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2735">
              <SourceParameter reference="Parameter_7212"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_323" name="mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_228" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_249" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7259" name="mw9095c419_1af6_423f_a17b_f35649e9b8e3" value="10"/>
          <Constant key="Parameter_7037" name="mw8495daea_5d03_48d8_9a63_049bb19938e1" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_405" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3164">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3165">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3166">
              <SourceParameter reference="Metabolite_228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3167">
              <SourceParameter reference="Metabolite_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3168">
              <SourceParameter reference="Parameter_7037"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3169">
              <SourceParameter reference="Parameter_7259"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_324" name="mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_249" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7211" name="mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_406" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3143">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3163">
              <SourceParameter reference="Metabolite_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3090">
              <SourceParameter reference="Parameter_7211"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_325" name="mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_233" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_250" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7257" name="mw93951f7c_0025_4fcb_b7aa_13011fab660e" value="10"/>
          <Constant key="Parameter_7268" name="mw16c052b6_5d10_4f5b_b210_7e2b014b2b09" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_407" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3182">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3183">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3184">
              <SourceParameter reference="Parameter_7268"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3185">
              <SourceParameter reference="Metabolite_233"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3186">
              <SourceParameter reference="Metabolite_250"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3187">
              <SourceParameter reference="Parameter_7257"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_326" name="mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_250" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
          <Product metabolite="Metabolite_211" stoichiometry="2"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7038" name="mwdb1c589a_02fe_4cbe_8254_348163ce6ad0" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_408" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3179">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3181">
              <SourceParameter reference="Metabolite_250"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3162">
              <SourceParameter reference="Parameter_7038"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_327" name="mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_234" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_251" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7272" name="mw67ee2769_d071_4e0c_8ae9_890a69369c1c" value="10"/>
          <Constant key="Parameter_7270" name="mw32cd40a9_406f_4471_8a5c_ccf548642a0b" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_409" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3200">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3201">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3202">
              <SourceParameter reference="Parameter_7270"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3203">
              <SourceParameter reference="Parameter_7272"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3204">
              <SourceParameter reference="Metabolite_251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3205">
              <SourceParameter reference="Metabolite_234"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_328" name="mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_251" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7269" name="mwc71a57e2_1da1_46e5_a212_4a2eddb53988" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_410" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3197">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3199">
              <SourceParameter reference="Metabolite_251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3161">
              <SourceParameter reference="Parameter_7269"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_329" name="mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_247" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_210" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_252" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7267" name="mw6e36b10f_0200_499f_802b_7186ac265e97" value="10"/>
          <Constant key="Parameter_7263" name="mw0e13e734_1441_4dd8_8bb2_6c45e689ce89" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_411" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3218">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3219">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3220">
              <SourceParameter reference="Parameter_7263"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3221">
              <SourceParameter reference="Metabolite_247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3222">
              <SourceParameter reference="Parameter_7267"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3223">
              <SourceParameter reference="Metabolite_252"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_330" name="mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_252" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_210" stoichiometry="1"/>
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
          <Product metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7266" name="mw47f65815_3810_49b1_98a8_e8576ae26c72" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_412" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3215">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3217">
              <SourceParameter reference="Parameter_7266"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3037">
              <SourceParameter reference="Metabolite_252"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_331" name="r1_" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_254" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_256" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_257" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7271" name="k1" value="1"/>
          <Constant key="Parameter_7276" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_254"/>
              <SourceParameter reference="Metabolite_256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_257"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_332" name="r2_" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_257" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_255" stoichiometry="1"/>
          <Product metabolite="Metabolite_256" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7277" name="k2f_" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_413" unitType="Default" scalingCompartment="CN=Root,Model=_1,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3237">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3238">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3239">
              <SourceParameter reference="Metabolite_257"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_2" name="mw4a0bd0e6_4b00_457f_b402_dc2c63365e45" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=_1,Reference=Time> le 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_1">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="mw83ae4da6_9284_42ad_964e_3155416186c7" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=_1,Reference=Time> gt 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_1">
            <Expression>
              0.00020000000000000001
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="mw6e9de745_2658_493a_86b8_d825837432c9" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=_1,Reference=Time> le 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="mwd9c0dae9_2cc7_4fa3_8036_3a7c9a202cb7" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=_1,Reference=Time> gt 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              0.00020000000000000001
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal]" value="4" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_external]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[DNA pOR1OR2--utr1--alHL]" value="1.00000066666711" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP:RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP]" value="100.00006666671101" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo]" value="30.000020000013301" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RecBCD]" value="5.0000033333355596" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNase]" value="100.00006666671101" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP]" value="3180048.20076943" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP]" value="1908028.92046166" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA]" value="31800482.0076943" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein lacIdimer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein lacItetramer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[DNA pOR1OR2--utr1--lacI]" value="20.000013333342199" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein deGFP*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[DNA plac--utr1--deGFP]" value="20.000013333342199" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:AGTP:RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[IPTG:protein lacItetramer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP:RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP:RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[DNA plac--utr1--deGFP:protein lacItetramer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP_USED]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_external],Vector=Metabolites[IPTG]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[IPTG]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein alHL*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[IPTG:protein alHL*]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=_1,Vector=Values[AGTPdeg_F]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Values[AGTPdeg_F_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Values[k1f]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Values[k1r]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=_1,Vector=Values[k2f]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1],ParameterGroup=Parameters,Parameter=mwe60d7d7d_697e_4455_a11e_eac9e72a433e" value="0.0023104906018664799" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1],ParameterGroup=Parameters,Parameter=mw3830ada9_8c1f_4408_8792_b352b9545092" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1],ParameterGroup=Parameters,Parameter=mw4b24730a_ba8b_4323_8c9e_c8d793425e60" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1],ParameterGroup=Parameters,Parameter=mw48cc8c87_2548_4333_b0d0_129277cd1fb4" value="20" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1],ParameterGroup=Parameters,Parameter=mw8b9a381a_163f_435c_934b_38e9d22433c5" value="400" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1],ParameterGroup=Parameters,Parameter=mw66da3667_22e0_4c78_82a4_32def7919cd0" value="0.748529411764706" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1],ParameterGroup=Parameters,Parameter=mwd0042ae4_1646_428b_99de_e8ca18f1d5a2" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1],ParameterGroup=Parameters,Parameter=mw490dcf1e_63bd_479e_a995_3f131fb43e97" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1],ParameterGroup=Parameters,Parameter=mw002f98bd_2b9a_40dd_93c4_225856292b8a" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1],ParameterGroup=Parameters,Parameter=mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1],ParameterGroup=Parameters,Parameter=mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1],ParameterGroup=Parameters,Parameter=mwf3f8bee7_7617_49f4_990a_afc7b5485ca7" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1],ParameterGroup=Parameters,Parameter=mw4ce1e65c_926e_4d3c_b3e6_396def864bd6" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1],ParameterGroup=Parameters,Parameter=mw710fb4f7_6073_42ed_a40d_41d009035891" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1],ParameterGroup=Parameters,Parameter=mw6aa3baca_c087_46d2_bf9e_75440163765a" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1],ParameterGroup=Parameters,Parameter=mw2996778c_c27b_4ec7_a7bb_34b2ceda6977" value="0.00147058823529412" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1],ParameterGroup=Parameters,Parameter=mwa0cbd407_e863_4341_b66b_060977850e66" value="300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1],ParameterGroup=Parameters,Parameter=mw5ffbf3db_6003_4217_9bd8_796832a8ba27" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1],ParameterGroup=Parameters,Parameter=mw759eca19_9151_4ba3_acf0_89be22ebccd8" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1],ParameterGroup=Parameters,Parameter=mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1],ParameterGroup=Parameters,Parameter=mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622" value="0.024" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1],ParameterGroup=Parameters,Parameter=mwdbe11a94_d411_4b68_aa97_8f09854129f2" value="0.012" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1],ParameterGroup=Parameters,Parameter=mw0768058d_03e2_4673_8542_1f8cb39d4ec3" value="50" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1],ParameterGroup=Parameters,Parameter=mw9031e56e_f709_472e_841a_f697866e9019" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1],ParameterGroup=Parameters,Parameter=mwd24cd525_af85_43b1_afc4_c91d2d887a5b" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1],ParameterGroup=Parameters,Parameter=mw9008fd58_dae9_4ff7_b526_e14558cae1c3" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1],ParameterGroup=Parameters,Parameter=mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1],ParameterGroup=Parameters,Parameter=mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1],ParameterGroup=Parameters,Parameter=mw980fee86_abb7_474c_acba_0aa345a38f0f" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwd9e27d2b_0794_4f96_b217_610230786396_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd9e27d2b_0794_4f96_b217_610230786396_SS1],ParameterGroup=Parameters,Parameter=mw93741c58_8277_4c4d_ae0b_f66c8b61386d" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd9e27d2b_0794_4f96_b217_610230786396_SS1],ParameterGroup=Parameters,Parameter=mwccff0caa_1476_405b_b13a_b17603ebf988" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1],ParameterGroup=Parameters,Parameter=mw670653d9_4218_4df9_b303_5f293e77f990" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1],ParameterGroup=Parameters,Parameter=mw880f4368_ff12_4fb4_8274_f28a85086459" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1],ParameterGroup=Parameters,Parameter=mw9c569c82_9bbe_4254_be15_864725548e53" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw436881db_622f_457d_9adc_4d50e00496e9_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw436881db_622f_457d_9adc_4d50e00496e9_SS1],ParameterGroup=Parameters,Parameter=mw31b03405_3b28_47bb_8821_50e7421ede27" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1],ParameterGroup=Parameters,Parameter=mwaf2b763e_ef31_46f8_941a_79f8b7912007" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1],ParameterGroup=Parameters,Parameter=mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1],ParameterGroup=Parameters,Parameter=mwef614928_eb66_47e0_9448_7e37ca1f9da6" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1],ParameterGroup=Parameters,Parameter=mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=_1,Vector=Values[AGTPdeg_F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2],ParameterGroup=Parameters,Parameter=mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2],ParameterGroup=Parameters,Parameter=mw220339f8_94a8_4c76_a9f9_58d5c54662f3" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2],ParameterGroup=Parameters,Parameter=mw95143b4c_189f_4371_9e49_c9203b9cbcbc" value="1.1000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2],ParameterGroup=Parameters,Parameter=mw957daec6_ebbb_49d5_8167_3766b2a188d2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2],ParameterGroup=Parameters,Parameter=mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2],ParameterGroup=Parameters,Parameter=mw88e6b301_c19d_4176_a4ab_c796e1855157" value="250" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw39391935_db59_4854_a7f3_d007a3c800e9_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw39391935_db59_4854_a7f3_d007a3c800e9_SS2],ParameterGroup=Parameters,Parameter=mwea067fb0_944c_4ea9_ad77_d6c4637982d5" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw39391935_db59_4854_a7f3_d007a3c800e9_SS2],ParameterGroup=Parameters,Parameter=mwaa2e8186_64eb_4461_8a31_8d0de39dc096" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2],ParameterGroup=Parameters,Parameter=mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b" value="20" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2],ParameterGroup=Parameters,Parameter=mw820bf2c5_8b99_479b_81a8_f87bd2e4993c" value="400" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2],ParameterGroup=Parameters,Parameter=mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc" value="0.74877049180327904" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwfdef4d20_4109_463d_b082_b17425eea08c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwfdef4d20_4109_463d_b082_b17425eea08c_SS2],ParameterGroup=Parameters,Parameter=mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2],ParameterGroup=Parameters,Parameter=mw5d32e76c_c3b5_41f5_ab4d_a989739e976b" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2],ParameterGroup=Parameters,Parameter=mw2ae82278_adf1_4e1e_bc67_81fd0721e604" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2],ParameterGroup=Parameters,Parameter=mwe97cb484_3f1f_4130_b862_68561e44f9e7" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2],ParameterGroup=Parameters,Parameter=mw8ab9985a_3984_4d46_8b30_0e80a32b67f1" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2],ParameterGroup=Parameters,Parameter=mwdb1afb7b_616f_4514_aa03_8864294581f7" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2],ParameterGroup=Parameters,Parameter=mw7afd6ea0_151a_485a_951e_95ad1b693ddb" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2],ParameterGroup=Parameters,Parameter=mw324437a8_304c_4428_82a3_e4d0282c46a1" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2],ParameterGroup=Parameters,Parameter=mw04494ba4_76c3_4733_9985_94acd310297b" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2],ParameterGroup=Parameters,Parameter=mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113" value="0.0012295081967213101" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2],ParameterGroup=Parameters,Parameter=mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067" value="300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2],ParameterGroup=Parameters,Parameter=mw4749d6e8_391a_4fed_9840_574e826d220b" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2],ParameterGroup=Parameters,Parameter=mweb0418ba_a652_4601_b6c9_0815d8c7fdd7" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2],ParameterGroup=Parameters,Parameter=mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2],ParameterGroup=Parameters,Parameter=mw91ca7fce_56fc_4796_be5f_31f2113d05ff" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2],ParameterGroup=Parameters,Parameter=mw45c534f2_a178_4fda_9794_bb6a741ee891" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2],ParameterGroup=Parameters,Parameter=mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36" value="50" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2],ParameterGroup=Parameters,Parameter=mw5503e10b_b399_401c_85c1_34fcb4a75ef2" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2],ParameterGroup=Parameters,Parameter=mwae4a630a_9af9_48e4_934e_06c84da51e82" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2],ParameterGroup=Parameters,Parameter=mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw4db04782_491a_4679_8196_cafbc55b9f95_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw4db04782_491a_4679_8196_cafbc55b9f95_SS2],ParameterGroup=Parameters,Parameter=mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw4db04782_491a_4679_8196_cafbc55b9f95_SS2],ParameterGroup=Parameters,Parameter=mwa7c866b1_be00_4def_b475_9f5439669d26" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2],ParameterGroup=Parameters,Parameter=mw415d655e_9891_4a00_843a_4d3ea56c6961" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2],ParameterGroup=Parameters,Parameter=mw33c60e2e_0342_44e5_9018_5b0afb2d9e37" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2],ParameterGroup=Parameters,Parameter=mw743021d4_03be_46d4_8cfe_01c2a98abd72" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2],ParameterGroup=Parameters,Parameter=mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2],ParameterGroup=Parameters,Parameter=mw5ba0589c_de85_47f9_b4de_6521446eb626" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2],ParameterGroup=Parameters,Parameter=mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2],ParameterGroup=Parameters,Parameter=mw510ac102_ffdc_417a_aaf0_4e2404610fdf" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2],ParameterGroup=Parameters,Parameter=mw98935be7_cc3a_45c9_82a1_60b4de40e60b" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2],ParameterGroup=Parameters,Parameter=mw36bc145a_0803_475e_952d_f47300281d76" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2],ParameterGroup=Parameters,Parameter=mw6a9add31_478e_43ac_93dc_7ac72e1b235b" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2],ParameterGroup=Parameters,Parameter=mwb58426aa_c779_4bf6_abcb_d9b102a11b01" value="0.0023104906018664799" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw662fff41_e987_4afc_a587_e68c159d727c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw662fff41_e987_4afc_a587_e68c159d727c_SS2],ParameterGroup=Parameters,Parameter=mw047616e8_0b14_42e1_aa37_4c17eb01c742" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw662fff41_e987_4afc_a587_e68c159d727c_SS2],ParameterGroup=Parameters,Parameter=mw76a20dcd_87ed_43cb_9023_0c10a44bc081" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2],ParameterGroup=Parameters,Parameter=mwa4a57dad_68c2_457b_b8fe_5e44e0f79081" value="20" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2],ParameterGroup=Parameters,Parameter=mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316" value="400" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2],ParameterGroup=Parameters,Parameter=mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4" value="0.748529411764706" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2],ParameterGroup=Parameters,Parameter=mw3d1a9380_01d0_445c_a000_7aef19654d03" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2],ParameterGroup=Parameters,Parameter=mw2954d485_8830_42f7_9567_c5fb232a305e" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2],ParameterGroup=Parameters,Parameter=mwe2129027_42be_48a5_b1ac_08a8475a4489" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2],ParameterGroup=Parameters,Parameter=mw861809d2_2f89_480e_8ac0_a22bd363ee4d" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2],ParameterGroup=Parameters,Parameter=mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2],ParameterGroup=Parameters,Parameter=mw420d2b27_f423_4274_84cb_6cac151f0d41" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2],ParameterGroup=Parameters,Parameter=mwae8d8860_b8ab_4267_b767_361c82045673" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2],ParameterGroup=Parameters,Parameter=mw7f4252d3_360b_4d1c_be74_de2dd056dd30" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2],ParameterGroup=Parameters,Parameter=mw495d6006_2243_4a1b_8f99_da34ba8620c4" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2],ParameterGroup=Parameters,Parameter=mw5c4b8017_d12f_4da7_844b_66866761e8a8" value="0.00147058823529412" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2],ParameterGroup=Parameters,Parameter=mw1f7cd54c_006a_4336_a29b_b8e165e47ffd" value="150" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2],ParameterGroup=Parameters,Parameter=mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2],ParameterGroup=Parameters,Parameter=mw886360ca_3240_4b70_b2ed_71f6a14f6991" value="300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2],ParameterGroup=Parameters,Parameter=mw5f037ee6_02ab_416b_b171_6a8d50c40d98" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2],ParameterGroup=Parameters,Parameter=mwd0db75ff_7917_4f48_8568_a6e4deaaef49" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2],ParameterGroup=Parameters,Parameter=mwc11b606e_316e_4d71_9489_566accdec78f" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2],ParameterGroup=Parameters,Parameter=mwda5b89c3_b635_462b_99e8_64dcdb001557" value="0.024" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2],ParameterGroup=Parameters,Parameter=mw1f06627c_eca4_4a8e_95a3_0507a39254a8" value="0.012" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2],ParameterGroup=Parameters,Parameter=mw1ce3701e_a468_4bc4_8e8f_9490b0481417" value="50" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2],ParameterGroup=Parameters,Parameter=mwb8b2f665_972a_4fa5_b77b_65267d72d771" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2],ParameterGroup=Parameters,Parameter=mw901997be_8666_4eaa_89ce_67dae645b596" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2],ParameterGroup=Parameters,Parameter=mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2],ParameterGroup=Parameters,Parameter=mw9095c419_1af6_423f_a17b_f35649e9b8e3" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2],ParameterGroup=Parameters,Parameter=mw8495daea_5d03_48d8_9a63_049bb19938e1" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2],ParameterGroup=Parameters,Parameter=mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2],ParameterGroup=Parameters,Parameter=mw93951f7c_0025_4fcb_b7aa_13011fab660e" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2],ParameterGroup=Parameters,Parameter=mw16c052b6_5d10_4f5b_b210_7e2b014b2b09" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2],ParameterGroup=Parameters,Parameter=mwdb1c589a_02fe_4cbe_8254_348163ce6ad0" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2],ParameterGroup=Parameters,Parameter=mw67ee2769_d071_4e0c_8ae9_890a69369c1c" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2],ParameterGroup=Parameters,Parameter=mw32cd40a9_406f_4471_8a5c_ccf548642a0b" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2],ParameterGroup=Parameters,Parameter=mwc71a57e2_1da1_46e5_a212_4a2eddb53988" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2],ParameterGroup=Parameters,Parameter=mw6e36b10f_0200_499f_802b_7186ac265e97" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2],ParameterGroup=Parameters,Parameter=mw0e13e734_1441_4dd8_8bb2_6c45e689ce89" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2],ParameterGroup=Parameters,Parameter=mw47f65815_3810_49b1_98a8_e8576ae26c72" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[r1_]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[r1_],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=_1,Vector=Values[k1f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[r1_],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=_1,Vector=Values[k1r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=_1,Vector=Reactions[r2_]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=_1,Vector=Reactions[r2_],ParameterGroup=Parameters,Parameter=k2f_" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=_1,Vector=Values[k2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_210"/>
      <StateTemplateVariable objectReference="Metabolite_208"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="Metabolite_212"/>
      <StateTemplateVariable objectReference="Metabolite_214"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="Metabolite_198"/>
      <StateTemplateVariable objectReference="Metabolite_234"/>
      <StateTemplateVariable objectReference="Metabolite_195"/>
      <StateTemplateVariable objectReference="Metabolite_221"/>
      <StateTemplateVariable objectReference="Metabolite_231"/>
      <StateTemplateVariable objectReference="Metabolite_224"/>
      <StateTemplateVariable objectReference="Metabolite_230"/>
      <StateTemplateVariable objectReference="Metabolite_220"/>
      <StateTemplateVariable objectReference="Metabolite_194"/>
      <StateTemplateVariable objectReference="Metabolite_191"/>
      <StateTemplateVariable objectReference="Metabolite_227"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_256"/>
      <StateTemplateVariable objectReference="Metabolite_197"/>
      <StateTemplateVariable objectReference="Metabolite_233"/>
      <StateTemplateVariable objectReference="Metabolite_238"/>
      <StateTemplateVariable objectReference="Metabolite_192"/>
      <StateTemplateVariable objectReference="Metabolite_228"/>
      <StateTemplateVariable objectReference="Metabolite_229"/>
      <StateTemplateVariable objectReference="Metabolite_223"/>
      <StateTemplateVariable objectReference="Metabolite_240"/>
      <StateTemplateVariable objectReference="Metabolite_255"/>
      <StateTemplateVariable objectReference="Metabolite_201"/>
      <StateTemplateVariable objectReference="Metabolite_252"/>
      <StateTemplateVariable objectReference="Metabolite_225"/>
      <StateTemplateVariable objectReference="Metabolite_242"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_251"/>
      <StateTemplateVariable objectReference="Metabolite_202"/>
      <StateTemplateVariable objectReference="Metabolite_222"/>
      <StateTemplateVariable objectReference="Metabolite_241"/>
      <StateTemplateVariable objectReference="Metabolite_190"/>
      <StateTemplateVariable objectReference="Metabolite_248"/>
      <StateTemplateVariable objectReference="Metabolite_196"/>
      <StateTemplateVariable objectReference="Metabolite_250"/>
      <StateTemplateVariable objectReference="Metabolite_206"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_232"/>
      <StateTemplateVariable objectReference="Metabolite_253"/>
      <StateTemplateVariable objectReference="Metabolite_199"/>
      <StateTemplateVariable objectReference="Metabolite_237"/>
      <StateTemplateVariable objectReference="Metabolite_239"/>
      <StateTemplateVariable objectReference="Metabolite_216"/>
      <StateTemplateVariable objectReference="Metabolite_204"/>
      <StateTemplateVariable objectReference="Metabolite_244"/>
      <StateTemplateVariable objectReference="Metabolite_218"/>
      <StateTemplateVariable objectReference="Metabolite_226"/>
      <StateTemplateVariable objectReference="Metabolite_254"/>
      <StateTemplateVariable objectReference="Metabolite_200"/>
      <StateTemplateVariable objectReference="Metabolite_235"/>
      <StateTemplateVariable objectReference="Metabolite_236"/>
      <StateTemplateVariable objectReference="Metabolite_249"/>
      <StateTemplateVariable objectReference="Metabolite_245"/>
      <StateTemplateVariable objectReference="Metabolite_247"/>
      <StateTemplateVariable objectReference="Metabolite_243"/>
      <StateTemplateVariable objectReference="Metabolite_193"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="Metabolite_246"/>
      <StateTemplateVariable objectReference="Metabolite_257"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3180048.20076943 100.00006666671101 30.000020000013301 31800482.0076943 100.00006666671101 1908028.92046166 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20.000013333342199 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.00000066666711 20.000013333342199 0 0 5.0000033333355596 4 1 0 0 1 1 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="740"/>
        <Parameter name="Duration" type="float" value="74000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_23" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_22" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_15" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_17" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Protein deGFP" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[protein deGFP*]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=_1,Vector=Compartments[cell_internal],Vector=Metabolites[protein deGFP*],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="cell_transport_model.xml">
    <SBMLMap SBMLid="AA_combined" COPASIkey="Metabolite_213"/>
    <SBMLMap SBMLid="AGTP_USED_combined" COPASIkey="Metabolite_253"/>
    <SBMLMap SBMLid="AGTP_combined" COPASIkey="Metabolite_211"/>
    <SBMLMap SBMLid="CUTP_combined" COPASIkey="Metabolite_212"/>
    <SBMLMap SBMLid="IPTG_" COPASIkey="Metabolite_254"/>
    <SBMLMap SBMLid="IPTG_combined" COPASIkey="Metabolite_255"/>
    <SBMLMap SBMLid="RNAP_combined" COPASIkey="Metabolite_207"/>
    <SBMLMap SBMLid="RNase_combined" COPASIkey="Metabolite_210"/>
    <SBMLMap SBMLid="RecBCD_combined" COPASIkey="Metabolite_209"/>
    <SBMLMap SBMLid="Ribo_combined" COPASIkey="Metabolite_208"/>
    <SBMLMap SBMLid="cell_external" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="cell_internal" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="k1f_" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k1r_" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k2f_" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2" COPASIkey="Reaction_321"/>
    <SBMLMap SBMLid="mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1" COPASIkey="Metabolite_199"/>
    <SBMLMap SBMLid="mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2" COPASIkey="Metabolite_229"/>
    <SBMLMap SBMLid="mw117ae676_633e_4f3a_be8d_eacdbdddfeea_SS2" COPASIkey="Metabolite_222"/>
    <SBMLMap SBMLid="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" COPASIkey="Metabolite_228"/>
    <SBMLMap SBMLid="mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2" COPASIkey="Reaction_285"/>
    <SBMLMap SBMLid="mw20c9d2b7_2d30_489e_82d1_e71648158436_SS1" COPASIkey="Metabolite_190"/>
    <SBMLMap SBMLid="mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2" COPASIkey="Reaction_302"/>
    <SBMLMap SBMLid="mw27bf35db_2b1d_439b_a0c4_81972bf226ef_SS1" COPASIkey="Metabolite_193"/>
    <SBMLMap SBMLid="mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2" COPASIkey="Reaction_308"/>
    <SBMLMap SBMLid="mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1" COPASIkey="Metabolite_203"/>
    <SBMLMap SBMLid="mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1" COPASIkey="Reaction_275"/>
    <SBMLMap SBMLid="mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1" COPASIkey="Reaction_254"/>
    <SBMLMap SBMLid="mw36dad171_05d7_4907_8d71_c2b3b5e51352_SS2" COPASIkey="Metabolite_235"/>
    <SBMLMap SBMLid="mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2" COPASIkey="Reaction_280"/>
    <SBMLMap SBMLid="mw39391935_db59_4854_a7f3_d007a3c800e9_SS2" COPASIkey="Reaction_281"/>
    <SBMLMap SBMLid="mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2" COPASIkey="Reaction_299"/>
    <SBMLMap SBMLid="mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2" COPASIkey="Reaction_314"/>
    <SBMLMap SBMLid="mw3df01083_618d_4509_9811_8b63adf5cb42_SS1" COPASIkey="Metabolite_191"/>
    <SBMLMap SBMLid="mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2" COPASIkey="Reaction_328"/>
    <SBMLMap SBMLid="mw42ea34c3_4490_4d8a_8ee5_dd1c4ac5319c_SS1" COPASIkey="Metabolite_196"/>
    <SBMLMap SBMLid="mw436881db_622f_457d_9adc_4d50e00496e9_SS1" COPASIkey="Reaction_274"/>
    <SBMLMap SBMLid="mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2" COPASIkey="Metabolite_236"/>
    <SBMLMap SBMLid="mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1" COPASIkey="Reaction_259"/>
    <SBMLMap SBMLid="mw49de218b_1e29_45e1_862c_0dc03a516700_SS2" COPASIkey="Metabolite_245"/>
    <SBMLMap SBMLid="mw4a0bd0e6_4b00_457f_b402_dc2c63365e45" COPASIkey="Event_2"/>
    <SBMLMap SBMLid="mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2" COPASIkey="Reaction_283"/>
    <SBMLMap SBMLid="mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1" COPASIkey="Reaction_256"/>
    <SBMLMap SBMLid="mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2" COPASIkey="Reaction_287"/>
    <SBMLMap SBMLid="mw4db04782_491a_4679_8196_cafbc55b9f95_SS2" COPASIkey="Reaction_297"/>
    <SBMLMap SBMLid="mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2" COPASIkey="Reaction_320"/>
    <SBMLMap SBMLid="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" COPASIkey="Metabolite_233"/>
    <SBMLMap SBMLid="mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1" COPASIkey="Metabolite_205"/>
    <SBMLMap SBMLid="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" COPASIkey="Metabolite_230"/>
    <SBMLMap SBMLid="mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1" COPASIkey="Reaction_265"/>
    <SBMLMap SBMLid="mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2" COPASIkey="Reaction_319"/>
    <SBMLMap SBMLid="mw5c94996f_4533_4f46_813f_fb42fa7356f3_SS2" COPASIkey="Metabolite_225"/>
    <SBMLMap SBMLid="mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2" COPASIkey="Metabolite_215"/>
    <SBMLMap SBMLid="mw611fccdf_157e_40db_8702_848bfb75c079_SS2" COPASIkey="Metabolite_248"/>
    <SBMLMap SBMLid="mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2" COPASIkey="Reaction_323"/>
    <SBMLMap SBMLid="mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1" COPASIkey="Reaction_270"/>
    <SBMLMap SBMLid="mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2" COPASIkey="Reaction_307"/>
    <SBMLMap SBMLid="mw6600ba7f_5b6d_4e5d_89a2_4d798f44476d_SS2" COPASIkey="Metabolite_226"/>
    <SBMLMap SBMLid="mw662fff41_e987_4afc_a587_e68c159d727c_SS2" COPASIkey="Reaction_306"/>
    <SBMLMap SBMLid="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" COPASIkey="Metabolite_247"/>
    <SBMLMap SBMLid="mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2" COPASIkey="Reaction_324"/>
    <SBMLMap SBMLid="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" COPASIkey="Metabolite_231"/>
    <SBMLMap SBMLid="mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2" COPASIkey="Reaction_313"/>
    <SBMLMap SBMLid="mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2" COPASIkey="Metabolite_227"/>
    <SBMLMap SBMLid="mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2" COPASIkey="Metabolite_251"/>
    <SBMLMap SBMLid="mw6e9de745_2658_493a_86b8_d825837432c9" COPASIkey="Event_4"/>
    <SBMLMap SBMLid="mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2" COPASIkey="Reaction_296"/>
    <SBMLMap SBMLid="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" COPASIkey="Metabolite_218"/>
    <SBMLMap SBMLid="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" COPASIkey="Metabolite_201"/>
    <SBMLMap SBMLid="mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2" COPASIkey="Metabolite_224"/>
    <SBMLMap SBMLid="mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1" COPASIkey="Metabolite_202"/>
    <SBMLMap SBMLid="mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2" COPASIkey="Reaction_312"/>
    <SBMLMap SBMLid="mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1" COPASIkey="Reaction_267"/>
    <SBMLMap SBMLid="mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2" COPASIkey="Reaction_318"/>
    <SBMLMap SBMLid="mw7da17532_fa9d_4ff2_8436_cb08e7696382_SS2" COPASIkey="Metabolite_246"/>
    <SBMLMap SBMLid="mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1" COPASIkey="Reaction_261"/>
    <SBMLMap SBMLid="mw7e686ddd_072e_4ab7_8512_92481d978201_SS2" COPASIkey="Metabolite_249"/>
    <SBMLMap SBMLid="mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1" COPASIkey="Reaction_262"/>
    <SBMLMap SBMLid="mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1" COPASIkey="Reaction_264"/>
    <SBMLMap SBMLid="mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1" COPASIkey="Reaction_269"/>
    <SBMLMap SBMLid="mw83ae4da6_9284_42ad_964e_3155416186c7" COPASIkey="Event_3"/>
    <SBMLMap SBMLid="mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2" COPASIkey="Reaction_310"/>
    <SBMLMap SBMLid="mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2" COPASIkey="Reaction_290"/>
    <SBMLMap SBMLid="mw87bea200_227d_4010_9616_9bee4d30458b_SS2" COPASIkey="Metabolite_241"/>
    <SBMLMap SBMLid="mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2" COPASIkey="Reaction_317"/>
    <SBMLMap SBMLid="mw88722339_572e_456f_85da_875cfc4e92bc_SS2" COPASIkey="Metabolite_250"/>
    <SBMLMap SBMLid="mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2" COPASIkey="Reaction_291"/>
    <SBMLMap SBMLid="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" COPASIkey="Metabolite_223"/>
    <SBMLMap SBMLid="mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2" COPASIkey="Reaction_305"/>
    <SBMLMap SBMLid="mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2" COPASIkey="Reaction_292"/>
    <SBMLMap SBMLid="mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2" COPASIkey="Reaction_316"/>
    <SBMLMap SBMLid="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" COPASIkey="Metabolite_195"/>
    <SBMLMap SBMLid="mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1" COPASIkey="Reaction_273"/>
    <SBMLMap SBMLid="mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2" COPASIkey="Reaction_309"/>
    <SBMLMap SBMLid="mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2" COPASIkey="Metabolite_252"/>
    <SBMLMap SBMLid="mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2" COPASIkey="Reaction_325"/>
    <SBMLMap SBMLid="mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2" COPASIkey="Reaction_282"/>
    <SBMLMap SBMLid="mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2" COPASIkey="Reaction_289"/>
    <SBMLMap SBMLid="mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2" COPASIkey="Reaction_288"/>
    <SBMLMap SBMLid="mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2" COPASIkey="Reaction_293"/>
    <SBMLMap SBMLid="mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1" COPASIkey="Reaction_258"/>
    <SBMLMap SBMLid="mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2" COPASIkey="Reaction_322"/>
    <SBMLMap SBMLid="mwb668d480_993b_469d_8925_7393c33b0558_SS1" COPASIkey="Metabolite_200"/>
    <SBMLMap SBMLid="mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2" COPASIkey="Metabolite_237"/>
    <SBMLMap SBMLid="mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2" COPASIkey="Reaction_326"/>
    <SBMLMap SBMLid="mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1" COPASIkey="Reaction_257"/>
    <SBMLMap SBMLid="mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1" COPASIkey="Reaction_255"/>
    <SBMLMap SBMLid="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" COPASIkey="Metabolite_221"/>
    <SBMLMap SBMLid="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" COPASIkey="Metabolite_194"/>
    <SBMLMap SBMLid="mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2" COPASIkey="Reaction_301"/>
    <SBMLMap SBMLid="mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1" COPASIkey="Metabolite_204"/>
    <SBMLMap SBMLid="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" COPASIkey="Metabolite_216"/>
    <SBMLMap SBMLid="mwc200e475_c73f_465a_8de3_97b93a64c967_SS2" COPASIkey="Metabolite_232"/>
    <SBMLMap SBMLid="mwc2ce705a_11c4_429d_a1e9_4163d818c21e_SS2" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1" COPASIkey="Reaction_268"/>
    <SBMLMap SBMLid="mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1" COPASIkey="Reaction_260"/>
    <SBMLMap SBMLid="mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1" COPASIkey="Reaction_276"/>
    <SBMLMap SBMLid="mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2" COPASIkey="Reaction_329"/>
    <SBMLMap SBMLid="mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2" COPASIkey="Metabolite_239"/>
    <SBMLMap SBMLid="mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1" COPASIkey="Reaction_263"/>
    <SBMLMap SBMLid="mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2" COPASIkey="Metabolite_217"/>
    <SBMLMap SBMLid="mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2" COPASIkey="Reaction_279"/>
    <SBMLMap SBMLid="mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2" COPASIkey="Reaction_286"/>
    <SBMLMap SBMLid="mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2" COPASIkey="Reaction_315"/>
    <SBMLMap SBMLid="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" COPASIkey="Metabolite_197"/>
    <SBMLMap SBMLid="mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2" COPASIkey="Metabolite_244"/>
    <SBMLMap SBMLid="mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1" COPASIkey="Reaction_253"/>
    <SBMLMap SBMLid="mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1" COPASIkey="Reaction_266"/>
    <SBMLMap SBMLid="mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2" COPASIkey="Metabolite_242"/>
    <SBMLMap SBMLid="mwd9c0dae9_2cc7_4fa3_8036_3a7c9a202cb7" COPASIkey="Event_5"/>
    <SBMLMap SBMLid="mwd9e27d2b_0794_4f96_b217_610230786396_SS1" COPASIkey="Reaction_271"/>
    <SBMLMap SBMLid="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" COPASIkey="Metabolite_192"/>
    <SBMLMap SBMLid="mwdb801a58_028d_43ff_90eb_830d15b4bc7f_SS2" COPASIkey="Metabolite_219"/>
    <SBMLMap SBMLid="mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2" COPASIkey="Reaction_303"/>
    <SBMLMap SBMLid="mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1" COPASIkey="Reaction_252"/>
    <SBMLMap SBMLid="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" COPASIkey="Metabolite_220"/>
    <SBMLMap SBMLid="mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1" COPASIkey="Reaction_277"/>
    <SBMLMap SBMLid="mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2" COPASIkey="Metabolite_234"/>
    <SBMLMap SBMLid="mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2" COPASIkey="Reaction_330"/>
    <SBMLMap SBMLid="mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1" COPASIkey="Metabolite_206"/>
    <SBMLMap SBMLid="mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2" COPASIkey="Reaction_295"/>
    <SBMLMap SBMLid="mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2" COPASIkey="Reaction_304"/>
    <SBMLMap SBMLid="mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2" COPASIkey="Reaction_294"/>
    <SBMLMap SBMLid="mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1" COPASIkey="Reaction_272"/>
    <SBMLMap SBMLid="mweb04477f_13a4_4d28_8518_06b1c5bae4de_SS2" COPASIkey="Metabolite_214"/>
    <SBMLMap SBMLid="mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2" COPASIkey="Reaction_300"/>
    <SBMLMap SBMLid="mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1" COPASIkey="Metabolite_198"/>
    <SBMLMap SBMLid="mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2" COPASIkey="Reaction_327"/>
    <SBMLMap SBMLid="mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2" COPASIkey="Metabolite_243"/>
    <SBMLMap SBMLid="mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2" COPASIkey="Metabolite_240"/>
    <SBMLMap SBMLid="mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" COPASIkey="Metabolite_238"/>
    <SBMLMap SBMLid="mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2" COPASIkey="Reaction_311"/>
    <SBMLMap SBMLid="mwfdef4d20_4109_463d_b082_b17425eea08c_SS2" COPASIkey="Reaction_284"/>
    <SBMLMap SBMLid="mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2" COPASIkey="Reaction_278"/>
    <SBMLMap SBMLid="mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2" COPASIkey="Reaction_298"/>
    <SBMLMap SBMLid="r1_" COPASIkey="Reaction_331"/>
    <SBMLMap SBMLid="r2_" COPASIkey="Reaction_332"/>
    <SBMLMap SBMLid="xxIPTG_protein_alHL_" COPASIkey="Metabolite_257"/>
    <SBMLMap SBMLid="xxprotein_alHL_combined" COPASIkey="Metabolite_256"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="liter" symbol="l">
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
