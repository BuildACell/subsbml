<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-08-13 08:40:34 UTC -->
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
        <ParameterDescription key="FunctionParameter_1620" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1619" name="mw20c9d2b7_2d30_489e_82d1_e71648158436_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1618" name="mwe60d7d7d_697e_4455_a11e_eac9e72a433e" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_335" name="Function for mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw3830ada9_8c1f_4408_8792_b352b9545092*mw3df01083_618d_4509_9811_8b63adf5cb42_SS1*Ribo_combined-mw4b24730a_ba8b_4323_8c9e_c8d793425e60*mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1662" name="Ribo_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1661" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1660" name="mw3830ada9_8c1f_4408_8792_b352b9545092" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1650" name="mw3df01083_618d_4509_9811_8b63adf5cb42_SS1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1649" name="mw4b24730a_ba8b_4323_8c9e_c8d793425e60" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1648" name="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_336" name="Function for mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw48cc8c87_2548_4333_b0d0_129277cd1fb4*mw27bf35db_2b1d_439b_a0c4_81972bf226ef_SS1*RNAP_combined-mw8b9a381a_163f_435c_934b_38e9d22433c5*mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1701" name="RNAP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1700" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1699" name="mw27bf35db_2b1d_439b_a0c4_81972bf226ef_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1698" name="mw48cc8c87_2548_4333_b0d0_129277cd1fb4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1697" name="mw8b9a381a_163f_435c_934b_38e9d22433c5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1696" name="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_337" name="Function for mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw66da3667_22e0_4c78_82a4_32def7919cd0*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1604" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1605" name="mw66da3667_22e0_4c78_82a4_32def7919cd0" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1630" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_338" name="Function for mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwd0042ae4_1646_428b_99de_e8ca18f1d5a2*mw42ea34c3_4490_4d8a_8ee5_dd1c4ac5319c_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1764" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1763" name="mw42ea34c3_4490_4d8a_8ee5_dd1c4ac5319c_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1762" name="mwd0042ae4_1646_428b_99de_e8ca18f1d5a2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_339" name="Function for mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw490dcf1e_63bd_479e_a995_3f131fb43e97*mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1*AGTP_combined-mw002f98bd_2b9a_40dd_93c4_225856292b8a*mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1812" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1811" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1810" name="mw002f98bd_2b9a_40dd_93c4_225856292b8a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1800" name="mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1799" name="mw490dcf1e_63bd_479e_a995_3f131fb43e97" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1798" name="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_340" name="Function for mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda*mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1*CUTP_combined-mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4*mwb668d480_993b_469d_8925_7393c33b0558_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1854" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1853" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1852" name="mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1836" name="mwb668d480_993b_469d_8925_7393c33b0558_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1835" name="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1834" name="mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_341" name="Function for mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwf3f8bee7_7617_49f4_990a_afc7b5485ca7*mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1*CUTP_combined-mw4ce1e65c_926e_4d3c_b3e6_396def864bd6*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1896" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1895" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1894" name="mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1884" name="mw4ce1e65c_926e_4d3c_b3e6_396def864bd6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1883" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1882" name="mwf3f8bee7_7617_49f4_990a_afc7b5485ca7" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_342" name="Function for mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw710fb4f7_6073_42ed_a40d_41d009035891*mwb668d480_993b_469d_8925_7393c33b0558_SS1*AGTP_combined-mw6aa3baca_c087_46d2_bf9e_75440163765a*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1938" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1937" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1936" name="mw6aa3baca_c087_46d2_bf9e_75440163765a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1935" name="mw710fb4f7_6073_42ed_a40d_41d009035891" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1934" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1933" name="mwb668d480_993b_469d_8925_7393c33b0558_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_343" name="Function for mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw2996778c_c27b_4ec7_a7bb_34b2ceda6977*mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1774" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1776" name="mw2996778c_c27b_4ec7_a7bb_34b2ceda6977" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1603" name="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_344" name="Function for mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwa0cbd407_e863_4341_b66b_060977850e66*mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1*AA_combined-mw5ffbf3db_6003_4217_9bd8_796832a8ba27*mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2003" name="AA_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2004" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2005" name="mw5ffbf3db_6003_4217_9bd8_796832a8ba27" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2006" name="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1985" name="mwa0cbd407_e863_4341_b66b_060977850e66" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1984" name="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_345" name="Function for mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw759eca19_9151_4ba3_acf0_89be22ebccd8*mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1*AGTP_combined^2-mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2027" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2028" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2029" name="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2030" name="mw759eca19_9151_4ba3_acf0_89be22ebccd8" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2019" name="mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2020" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_346" name="Function for mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1997" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1632" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1775" name="mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_347" name="Function for mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwdbe11a94_d411_4b68_aa97_8f09854129f2*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2018" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2052" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2053" name="mwdbe11a94_d411_4b68_aa97_8f09854129f2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_348" name="Function for mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw0768058d_03e2_4673_8542_1f8cb39d4ec3*mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2060" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2043" name="mw0768058d_03e2_4673_8542_1f8cb39d4ec3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2044" name="mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_349" name="Function for mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw9031e56e_f709_472e_841a_f697866e9019*mw3df01083_618d_4509_9811_8b63adf5cb42_SS1*RNase_combined-mwd24cd525_af85_43b1_afc4_c91d2d887a5b*mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2099" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2084" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2083" name="mw3df01083_618d_4509_9811_8b63adf5cb42_SS1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2073" name="mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2076" name="mw9031e56e_f709_472e_841a_f697866e9019" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2077" name="mwd24cd525_af85_43b1_afc4_c91d2d887a5b" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_350" name="Function for mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw9008fd58_dae9_4ff7_b526_e14558cae1c3*mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1631" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2078" name="mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1996" name="mw9008fd58_dae9_4ff7_b526_e14558cae1c3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_351" name="Function for mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525*mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1*RNase_combined-mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599*mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2129" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2130" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2131" name="mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2117" name="mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2118" name="mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2119" name="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_352" name="Function for mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw980fee86_abb7_474c_acba_0aa345a38f0f*mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2079" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2120" name="mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2062" name="mw980fee86_abb7_474c_acba_0aa345a38f0f" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_353" name="Function for mwd9e27d2b_0794_4f96_b217_610230786396_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw93741c58_8277_4c4d_ae0b_f66c8b61386d*mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1*RNase_combined-mwccff0caa_1476_405b_b13a_b17603ebf988*mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2159" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2160" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2161" name="mw93741c58_8277_4c4d_ae0b_f66c8b61386d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2162" name="mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2151" name="mwccff0caa_1476_405b_b13a_b17603ebf988" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2152" name="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_354" name="Function for mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw670653d9_4218_4df9_b303_5f293e77f990*mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2080" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2109" name="mw670653d9_4218_4df9_b303_5f293e77f990" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1998" name="mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_355" name="Function for mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mw880f4368_ff12_4fb4_8274_f28a85086459*mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1*RNase_combined-mw9c569c82_9bbe_4254_be15_864725548e53*mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2198" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2199" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2200" name="mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_2195" name="mw880f4368_ff12_4fb4_8274_f28a85086459" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2184" name="mw9c569c82_9bbe_4254_be15_864725548e53" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2185" name="mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_356" name="Function for mw436881db_622f_457d_9adc_4d50e00496e9_SS1" type="UserDefined" reversible="false">
      <Expression>
        mw31b03405_3b28_47bb_8821_50e7421ede27*mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2114" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2186" name="mw31b03405_3b28_47bb_8821_50e7421ede27" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2187" name="mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_357" name="Function for mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1" type="UserDefined" reversible="true">
      <Expression>
        (mwaf2b763e_ef31_46f8_941a_79f8b7912007*mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1*RNase_combined-mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf*mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2234" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2235" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2236" name="mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2237" name="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2223" name="mwaf2b763e_ef31_46f8_941a_79f8b7912007" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2224" name="mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_358" name="Function for mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwef614928_eb66_47e0_9448_7e37ca1f9da6*mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2113" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2210" name="mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2182" name="mwef614928_eb66_47e0_9448_7e37ca1f9da6" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_359" name="Function for mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1" type="UserDefined" reversible="false">
      <Expression>
        mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1*AGTP_combined/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2264" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2249" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2248" name="mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_360" name="Function for mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf*mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2*IPTG_combined-mw220339f8_94a8_4c76_a9f9_58d5c54662f3*mw36dad171_05d7_4907_8d71_c2b3b5e51352_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2279" name="IPTG_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2280" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2281" name="mw220339f8_94a8_4c76_a9f9_58d5c54662f3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2282" name="mw36dad171_05d7_4907_8d71_c2b3b5e51352_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2267" name="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2266" name="mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_361" name="Function for mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw95143b4c_189f_4371_9e49_c9203b9cbcbc*mweb04477f_13a4_4d28_8518_06b1c5bae4de_SS2^2-mw957daec6_ebbb_49d5_8167_3766b2a188d2*mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2311" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2297" name="mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_2298" name="mw95143b4c_189f_4371_9e49_c9203b9cbcbc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2299" name="mw957daec6_ebbb_49d5_8167_3766b2a188d2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2188" name="mweb04477f_13a4_4d28_8518_06b1c5bae4de_SS2" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_362" name="Function for mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8*mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2^2-mw88e6b301_c19d_4176_a4ab_c796e1855157*mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2328" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2329" name="mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2276" name="mw88e6b301_c19d_4176_a4ab_c796e1855157" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2228" name="mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2227" name="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_363" name="Function for mw39391935_db59_4854_a7f3_d007a3c800e9_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwea067fb0_944c_4ea9_ad77_d6c4637982d5*mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2*Ribo_combined-mwaa2e8186_64eb_4461_8a31_8d0de39dc096*mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2316" name="Ribo_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2317" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2318" name="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_2313" name="mwaa2e8186_64eb_4461_8a31_8d0de39dc096" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2314" name="mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2333" name="mwea067fb0_944c_4ea9_ad77_d6c4637982d5" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_364" name="Function for mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b*mwdb801a58_028d_43ff_90eb_830d15b4bc7f_SS2*RNAP_combined-mw820bf2c5_8b99_479b_81a8_f87bd2e4993c*mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2370" name="RNAP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2371" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2375" name="mw820bf2c5_8b99_479b_81a8_f87bd2e4993c" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2364" name="mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2365" name="mwdb801a58_028d_43ff_90eb_830d15b4bc7f_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2369" name="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_365" name="Function for mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2268" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2181" name="mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2265" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_366" name="Function for mwfdef4d20_4109_463d_b082_b17425eea08c_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99*mw117ae676_633e_4f3a_be8d_eacdbdddfeea_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2349" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2350" name="mw117ae676_633e_4f3a_be8d_eacdbdddfeea_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2351" name="mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_367" name="Function for mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw5d32e76c_c3b5_41f5_ab4d_a989739e976b*mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2*AGTP_combined-mw2ae82278_adf1_4e1e_bc67_81fd0721e604*mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2421" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2422" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2411" name="mw2ae82278_adf1_4e1e_bc67_81fd0721e604" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2412" name="mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2413" name="mw5d32e76c_c3b5_41f5_ab4d_a989739e976b" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2414" name="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_368" name="Function for mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwe97cb484_3f1f_4130_b862_68561e44f9e7*mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2*CUTP_combined-mw8ab9985a_3984_4d46_8b30_0e80a32b67f1*mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2435" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2434" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2441" name="mw8ab9985a_3984_4d46_8b30_0e80a32b67f1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2426" name="mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2425" name="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2424" name="mwe97cb484_3f1f_4130_b862_68561e44f9e7" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_369" name="Function for mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwdb1afb7b_616f_4514_aa03_8864294581f7*mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2*CUTP_combined-mw7afd6ea0_151a_485a_951e_95ad1b693ddb*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2472" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2473" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2465" name="mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2466" name="mw7afd6ea0_151a_485a_951e_95ad1b693ddb" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2467" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2459" name="mwdb1afb7b_616f_4514_aa03_8864294581f7" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_370" name="Function for mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw324437a8_304c_4428_82a3_e4d0282c46a1*mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2*AGTP_combined-mw04494ba4_76c3_4733_9985_94acd310297b*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2488" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2489" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2490" name="mw04494ba4_76c3_4733_9985_94acd310297b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2491" name="mw324437a8_304c_4428_82a3_e4d0282c46a1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1981" name="mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2396" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_371" name="Function for mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113*mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2397" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2399" name="mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2063" name="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_372" name="Function for mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067*mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2*AA_combined-mw4749d6e8_391a_4fed_9840_574e826d220b*mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2536" name="AA_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2525" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2529" name="mw4749d6e8_391a_4fed_9840_574e826d220b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2530" name="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2519" name="mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2484" name="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_373" name="Function for mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mweb0418ba_a652_4601_b6c9_0815d8c7fdd7*mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2*AGTP_combined^2-mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a*mw969018c5_d898_4ea0_bb80_35de71266464_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2548" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2549" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2550" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_2551" name="mweb0418ba_a652_4601_b6c9_0815d8c7fdd7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2513" name="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2541" name="mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_374" name="Function for mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw91ca7fce_56fc_4796_be5f_31f2113d05ff*mw969018c5_d898_4ea0_bb80_35de71266464_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2398" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2334" name="mw91ca7fce_56fc_4796_be5f_31f2113d05ff" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2485" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_375" name="Function for mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw45c534f2_a178_4fda_9794_bb6a741ee891*mw969018c5_d898_4ea0_bb80_35de71266464_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2564" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2567" name="mw45c534f2_a178_4fda_9794_bb6a741ee891" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2568" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_376" name="Function for mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36*mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2590" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2575" name="mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2574" name="mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_377" name="Function for mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw5503e10b_b399_401c_85c1_34fcb4a75ef2*mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2*RNase_combined-mwae4a630a_9af9_48e4_934e_06c84da51e82*mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2600" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2603" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2604" name="mw5503e10b_b399_401c_85c1_34fcb4a75ef2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2605" name="mwae4a630a_9af9_48e4_934e_06c84da51e82" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2606" name="mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2607" name="mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_378" name="Function for mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3*mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2480" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2608" name="mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2481" name="mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_379" name="Function for mw4db04782_491a_4679_8196_cafbc55b9f95_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc*mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2*RNase_combined-mwa7c866b1_be00_4def_b475_9f5439669d26*mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2644" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2645" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2646" name="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2647" name="mwa7c866b1_be00_4def_b475_9f5439669d26" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2636" name="mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2637" name="mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_380" name="Function for mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw415d655e_9891_4a00_843a_4d3ea56c6961*mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2595" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2638" name="mw415d655e_9891_4a00_843a_4d3ea56c6961" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2269" name="mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_381" name="Function for mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw33c60e2e_0342_44e5_9018_5b0afb2d9e37*mw969018c5_d898_4ea0_bb80_35de71266464_SS2*RNase_combined-mw743021d4_03be_46d4_8cfe_01c2a98abd72*mw87bea200_227d_4010_9616_9bee4d30458b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2677" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2660" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2661" name="mw33c60e2e_0342_44e5_9018_5b0afb2d9e37" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2662" name="mw743021d4_03be_46d4_8cfe_01c2a98abd72" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2633" name="mw87bea200_227d_4010_9616_9bee4d30458b_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2634" name="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_382" name="Function for mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb*mw87bea200_227d_4010_9616_9bee4d30458b_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2625" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2635" name="mw87bea200_227d_4010_9616_9bee4d30458b_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2593" name="mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_383" name="Function for mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw5ba0589c_de85_47f9_b4de_6521446eb626*mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2*RNase_combined-mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6*mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2725" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2710" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2715" name="mw5ba0589c_de85_47f9_b4de_6521446eb626" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2716" name="mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2701" name="mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2700" name="mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_384" name="Function for mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw510ac102_ffdc_417a_aaf0_4e2404610fdf*mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2667" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2699" name="mw510ac102_ffdc_417a_aaf0_4e2404610fdf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2639" name="mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_385" name="Function for mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw98935be7_cc3a_45c9_82a1_60b4de40e60b*mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2*RNase_combined-mw36bc145a_0803_475e_952d_f47300281d76*mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2758" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2678" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2679" name="mw36bc145a_0803_475e_952d_f47300281d76" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2680" name="mw98935be7_cc3a_45c9_82a1_60b4de40e60b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_2728" name="mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_2745" name="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_386" name="Function for mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw6a9add31_478e_43ac_93dc_7ac72e1b235b*mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2669" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2746" name="mw6a9add31_478e_43ac_93dc_7ac72e1b235b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2736" name="mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_387" name="Function for mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwb58426aa_c779_4bf6_abcb_d9b102a11b01*mw5c94996f_4533_4f46_813f_fb42fa7356f3_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2749" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2771" name="mw5c94996f_4533_4f46_813f_fb42fa7356f3_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2772" name="mwb58426aa_c779_4bf6_abcb_d9b102a11b01" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_388" name="Function for mw662fff41_e987_4afc_a587_e68c159d727c_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw047616e8_0b14_42e1_aa37_4c17eb01c742*mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2*Ribo_combined-mw76a20dcd_87ed_43cb_9023_0c10a44bc081*mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2806" name="Ribo_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2792" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2793" name="mw047616e8_0b14_42e1_aa37_4c17eb01c742" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_2794" name="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2777" name="mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2778" name="mw76a20dcd_87ed_43cb_9023_0c10a44bc081" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_389" name="Function for mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwa4a57dad_68c2_457b_b8fe_5e44e0f79081*mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2*RNAP_combined-mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316*mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2817" name="RNAP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2816" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_2819" name="mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_2820" name="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_2821" name="mwa4a57dad_68c2_457b_b8fe_5e44e0f79081" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_2811" name="mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_390" name="Function for mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2750" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_2703" name="mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_2702" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_391" name="Function for mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw3d1a9380_01d0_445c_a000_7aef19654d03*mwc200e475_c73f_465a_8de3_97b93a64c967_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1601" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1643" name="mw3d1a9380_01d0_445c_a000_7aef19654d03" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_776" name="mwc200e475_c73f_465a_8de3_97b93a64c967_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_392" name="Function for mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw2954d485_8830_42f7_9567_c5fb232a305e*mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2*AGTP_combined-mwe2129027_42be_48a5_b1ac_08a8475a4489*mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3043" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3042" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3041" name="mw2954d485_8830_42f7_9567_c5fb232a305e" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3040" name="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3039" name="mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3038" name="mwe2129027_42be_48a5_b1ac_08a8475a4489" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_393" name="Function for mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw861809d2_2f89_480e_8ac0_a22bd363ee4d*mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2*CUTP_combined-mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc*mw49de218b_1e29_45e1_862c_0dc03a516700_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3055" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3054" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3053" name="mw49de218b_1e29_45e1_862c_0dc03a516700_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_3052" name="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3051" name="mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3050" name="mw861809d2_2f89_480e_8ac0_a22bd363ee4d" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_394" name="Function for mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw420d2b27_f423_4274_84cb_6cac151f0d41*mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2*CUTP_combined-mwae8d8860_b8ab_4267_b767_361c82045673*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3067" name="CUTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3066" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3065" name="mw420d2b27_f423_4274_84cb_6cac151f0d41" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3064" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_3063" name="mwae8d8860_b8ab_4267_b767_361c82045673" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3062" name="mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_395" name="Function for mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw7f4252d3_360b_4d1c_be74_de2dd056dd30*mw49de218b_1e29_45e1_862c_0dc03a516700_SS2*AGTP_combined-mw495d6006_2243_4a1b_8f99_da34ba8620c4*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3079" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3078" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3077" name="mw495d6006_2243_4a1b_8f99_da34ba8620c4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3076" name="mw49de218b_1e29_45e1_862c_0dc03a516700_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3075" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3074" name="mw7f4252d3_360b_4d1c_be74_de2dd056dd30" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_396" name="Function for mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw5c4b8017_d12f_4da7_844b_66866761e8a8*mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2779" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3036" name="mw5c4b8017_d12f_4da7_844b_66866761e8a8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3035" name="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_397" name="Function for mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw1f7cd54c_006a_4336_a29b_b8e165e47ffd*mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2*mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2-mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4*mw7da17532_fa9d_4ff2_8436_cb08e7696382_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3097" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3096" name="mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3095" name="mw1f7cd54c_006a_4336_a29b_b8e165e47ffd" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3094" name="mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_3093" name="mw7da17532_fa9d_4ff2_8436_cb08e7696382_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3092" name="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_398" name="Function for mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw886360ca_3240_4b70_b2ed_71f6a14f6991*mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2*AA_combined-mw5f037ee6_02ab_416b_b171_6a8d50c40d98*mw6729d170_4447_449b_9e97_0908b0caab6b_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3109" name="AA_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3108" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3107" name="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3106" name="mw5f037ee6_02ab_416b_b171_6a8d50c40d98" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_3105" name="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3104" name="mw886360ca_3240_4b70_b2ed_71f6a14f6991" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_399" name="Function for mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwd0db75ff_7917_4f48_8568_a6e4deaaef49*mw6729d170_4447_449b_9e97_0908b0caab6b_SS2*AGTP_combined^2-mwc11b606e_316e_4d71_9489_566accdec78f*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3121" name="AGTP_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3120" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3119" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_3118" name="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3117" name="mwc11b606e_316e_4d71_9489_566accdec78f" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3116" name="mwd0db75ff_7917_4f48_8568_a6e4deaaef49" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_400" name="Function for mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwda5b89c3_b635_462b_99e8_64dcdb001557*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2787" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3089" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3091" name="mwda5b89c3_b635_462b_99e8_64dcdb001557" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_401" name="Function for mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw1f06627c_eca4_4a8e_95a3_0507a39254a8*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3133" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3132" name="mw1f06627c_eca4_4a8e_95a3_0507a39254a8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3131" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_402" name="Function for mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw1ce3701e_a468_4bc4_8e8f_9490b0481417*mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3139" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3138" name="mw1ce3701e_a468_4bc4_8e8f_9490b0481417" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3137" name="mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_403" name="Function for mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mwb8b2f665_972a_4fa5_b77b_65267d72d771*mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2*RNase_combined-mw901997be_8666_4eaa_89ce_67dae645b596*mw611fccdf_157e_40db_8702_848bfb75c079_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3151" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3150" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3149" name="mw611fccdf_157e_40db_8702_848bfb75c079_SS2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_3148" name="mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3147" name="mw901997be_8666_4eaa_89ce_67dae645b596" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3146" name="mwb8b2f665_972a_4fa5_b77b_65267d72d771" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_404" name="Function for mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b*mw611fccdf_157e_40db_8702_848bfb75c079_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_2735" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3145" name="mw611fccdf_157e_40db_8702_848bfb75c079_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3144" name="mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_405" name="Function for mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw9095c419_1af6_423f_a17b_f35649e9b8e3*mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2*RNase_combined-mw8495daea_5d03_48d8_9a63_049bb19938e1*mw7e686ddd_072e_4ab7_8512_92481d978201_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3169" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3168" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3167" name="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3166" name="mw7e686ddd_072e_4ab7_8512_92481d978201_SS2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_3165" name="mw8495daea_5d03_48d8_9a63_049bb19938e1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3164" name="mw9095c419_1af6_423f_a17b_f35649e9b8e3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_406" name="Function for mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc*mw7e686ddd_072e_4ab7_8512_92481d978201_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3090" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3163" name="mw7e686ddd_072e_4ab7_8512_92481d978201_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3143" name="mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_407" name="Function for mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw93951f7c_0025_4fcb_b7aa_13011fab660e*mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2*RNase_combined-mw16c052b6_5d10_4f5b_b210_7e2b014b2b09*mw88722339_572e_456f_85da_875cfc4e92bc_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3187" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3186" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3185" name="mw16c052b6_5d10_4f5b_b210_7e2b014b2b09" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3184" name="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3183" name="mw88722339_572e_456f_85da_875cfc4e92bc_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3182" name="mw93951f7c_0025_4fcb_b7aa_13011fab660e" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_408" name="Function for mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwdb1c589a_02fe_4cbe_8254_348163ce6ad0*mw88722339_572e_456f_85da_875cfc4e92bc_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3162" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3181" name="mw88722339_572e_456f_85da_875cfc4e92bc_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3179" name="mwdb1c589a_02fe_4cbe_8254_348163ce6ad0" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_409" name="Function for mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw67ee2769_d071_4e0c_8ae9_890a69369c1c*mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2*RNase_combined-mw32cd40a9_406f_4471_8a5c_ccf548642a0b*mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3205" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3204" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3203" name="mw32cd40a9_406f_4471_8a5c_ccf548642a0b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3202" name="mw67ee2769_d071_4e0c_8ae9_890a69369c1c" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_3201" name="mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_3200" name="mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_410" name="Function for mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2" type="UserDefined" reversible="false">
      <Expression>
        mwc71a57e2_1da1_46e5_a212_4a2eddb53988*mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3161" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3199" name="mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3197" name="mwc71a57e2_1da1_46e5_a212_4a2eddb53988" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_411" name="Function for mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2" type="UserDefined" reversible="true">
      <Expression>
        (mw6e36b10f_0200_499f_802b_7186ac265e97*mw6729d170_4447_449b_9e97_0908b0caab6b_SS2*RNase_combined-mw0e13e734_1441_4dd8_8bb2_6c45e689ce89*mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2)/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3223" name="RNase_combined" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3222" name="cell_internal" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_3221" name="mw0e13e734_1441_4dd8_8bb2_6c45e689ce89" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_3220" name="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_3219" name="mw6e36b10f_0200_499f_802b_7186ac265e97" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_3218" name="mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_412" name="Function for mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2" type="UserDefined" reversible="false">
      <Expression>
        mw47f65815_3810_49b1_98a8_e8576ae26c72*mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3037" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3217" name="mw47f65815_3810_49b1_98a8_e8576ae26c72" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3215" name="mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_413" name="Function for r2_" type="UserDefined" reversible="false">
      <Expression>
        k2f_*xxIPTG_protein_alHL_/cell_internal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_3239" name="cell_internal" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_3238" name="k2f_" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_3237" name="xxIPTG_protein_alHL_" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="NoName" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="1" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-13T01:37:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell_internal" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
      <Compartment key="Compartment_3" name="cell_external" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_51" name="protein alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_52" name="RNA utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_54" name="DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_55" name="RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_56" name="CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_57" name="term_RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_58" name="AA:2AGTP:Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_59" name="term_Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_60" name="AGTP:RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_61" name="CUTP:RNAP:DNA pOR1OR2--utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_62" name="AA:Ribo:RNA utr1--alHL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_63" name="RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_64" name="Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_65" name="AA:2AGTP:Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_66" name="term_Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_67" name="AA:Ribo:RNA utr1--alHL:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_68" name="RNAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_69" name="Ribo" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_70" name="RecBCD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_71" name="RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_72" name="AGTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_73" name="CUTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_74" name="AA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_75" name="protein lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_76" name="protein lacIdimer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_77" name="protein lacItetramer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_78" name="RNA utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_79" name="Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_80" name="DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_81" name="RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_82" name="CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_83" name="term_RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_84" name="AA:2AGTP:Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_85" name="term_Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_86" name="protein deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_87" name="protein deGFP*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_88" name="RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_89" name="Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_90" name="DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_91" name="RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_92" name="CUTP:AGTP:RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_93" name="term_RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_94" name="AA:2AGTP:Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_95" name="term_Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_96" name="IPTG:protein lacItetramer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_97" name="AGTP:RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_98" name="CUTP:RNAP:DNA pOR1OR2--utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_99" name="AA:Ribo:RNA utr1--lacI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_100" name="RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_101" name="Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_102" name="AA:2AGTP:Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_103" name="term_Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_104" name="AA:Ribo:RNA utr1--lacI:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_105" name="AGTP:RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_106" name="CUTP:RNAP:DNA plac--utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_107" name="DNA plac--utr1--deGFP:protein lacItetramer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_108" name="AA:Ribo:RNA utr1--deGFP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_109" name="RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_110" name="Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_111" name="AA:2AGTP:Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_112" name="term_Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_113" name="AA:Ribo:RNA utr1--deGFP:RNase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_114" name="AGTP_USED" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_115" name="IPTG" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_116" name="IPTG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_117" name="protein alHL*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_118" name="IPTG:protein alHL*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_2" name="AGTPdeg_F" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="AGTPdeg_F_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k1f" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k1r" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k2f" simulationType="fixed" addNoise="false">
        <Unit>
          1/s
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_70" name="mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7145" name="mwe60d7d7d_697e_4455_a11e_eac9e72a433e" value="0.00231049"/>
        </ListOfConstants>
        <KineticLaw function="Function_334" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1620">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1619">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1618">
              <SourceParameter reference="Parameter_7145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7146" name="mw3830ada9_8c1f_4408_8792_b352b9545092" value="0.2"/>
          <Constant key="Parameter_7110" name="mw4b24730a_ba8b_4323_8c9e_c8d793425e60" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_335" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1662">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1661">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1660">
              <SourceParameter reference="Parameter_7146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1650">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1649">
              <SourceParameter reference="Parameter_7110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1648">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7087" name="mw48cc8c87_2548_4333_b0d0_129277cd1fb4" value="20"/>
          <Constant key="Parameter_7116" name="mw8b9a381a_163f_435c_934b_38e9d22433c5" value="400"/>
        </ListOfConstants>
        <KineticLaw function="Function_336" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1701">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1700">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1699">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1698">
              <SourceParameter reference="Parameter_7087"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1697">
              <SourceParameter reference="Parameter_7116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1696">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7109" name="mw66da3667_22e0_4c78_82a4_32def7919cd0" value="0.748529"/>
        </ListOfConstants>
        <KineticLaw function="Function_337" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1604">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1605">
              <SourceParameter reference="Parameter_7109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1630">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7105" name="mwd0042ae4_1646_428b_99de_e8ca18f1d5a2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_338" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1764">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1763">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1762">
              <SourceParameter reference="Parameter_7105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7108" name="mw490dcf1e_63bd_479e_a995_3f131fb43e97" value="1000"/>
          <Constant key="Parameter_7111" name="mw002f98bd_2b9a_40dd_93c4_225856292b8a" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_339" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1812">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1811">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1810">
              <SourceParameter reference="Parameter_7111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1800">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1799">
              <SourceParameter reference="Parameter_7108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1798">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7104" name="mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda" value="1000"/>
          <Constant key="Parameter_7106" name="mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_340" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1854">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1853">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1852">
              <SourceParameter reference="Parameter_7106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1836">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1835">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1834">
              <SourceParameter reference="Parameter_7104"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7072" name="mwf3f8bee7_7617_49f4_990a_afc7b5485ca7" value="1"/>
          <Constant key="Parameter_7065" name="mw4ce1e65c_926e_4d3c_b3e6_396def864bd6" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_341" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1896">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1895">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1894">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1884">
              <SourceParameter reference="Parameter_7065"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1883">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1882">
              <SourceParameter reference="Parameter_7072"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="mw710fb4f7_6073_42ed_a40d_41d009035891" value="1"/>
          <Constant key="Parameter_7144" name="mw6aa3baca_c087_46d2_bf9e_75440163765a" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_342" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1938">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1937">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1936">
              <SourceParameter reference="Parameter_7144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1935">
              <SourceParameter reference="Parameter_4999"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1934">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1933">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7143" name="mw2996778c_c27b_4ec7_a7bb_34b2ceda6977" value="0.00147059"/>
        </ListOfConstants>
        <KineticLaw function="Function_343" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1774">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1776">
              <SourceParameter reference="Parameter_7143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1603">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7150" name="mwa0cbd407_e863_4341_b66b_060977850e66" value="300"/>
          <Constant key="Parameter_7148" name="mw5ffbf3db_6003_4217_9bd8_796832a8ba27" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_344" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2003">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2004">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2005">
              <SourceParameter reference="Parameter_7148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2006">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1985">
              <SourceParameter reference="Parameter_7150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1984">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2775" name="mw759eca19_9151_4ba3_acf0_89be22ebccd8" value="30"/>
          <Constant key="Parameter_7068" name="mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_345" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2027">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2028">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2029">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2030">
              <SourceParameter reference="Parameter_2775"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2019">
              <SourceParameter reference="Parameter_7068"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2020">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622" value="0.024"/>
        </ListOfConstants>
        <KineticLaw function="Function_346" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1997">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1632">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1775">
              <SourceParameter reference="Parameter_4998"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4874" name="mwdbe11a94_d411_4b68_aa97_8f09854129f2" value="0.012"/>
        </ListOfConstants>
        <KineticLaw function="Function_347" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2018">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2052">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2053">
              <SourceParameter reference="Parameter_4874"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4877" name="mw0768058d_03e2_4673_8542_1f8cb39d4ec3" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_348" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2060">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2043">
              <SourceParameter reference="Parameter_4877"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2044">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4878" name="mw9031e56e_f709_472e_841a_f697866e9019" value="10"/>
          <Constant key="Parameter_4872" name="mwd24cd525_af85_43b1_afc4_c91d2d887a5b" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_349" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2099">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2084">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2083">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2073">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2076">
              <SourceParameter reference="Parameter_4878"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2077">
              <SourceParameter reference="Parameter_4872"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4875" name="mw9008fd58_dae9_4ff7_b526_e14558cae1c3" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_350" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1631">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2078">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1996">
              <SourceParameter reference="Parameter_4875"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4870" name="mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525" value="10"/>
          <Constant key="Parameter_4869" name="mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_351" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2129">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2130">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2131">
              <SourceParameter reference="Parameter_4869"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2117">
              <SourceParameter reference="Parameter_4870"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2118">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2119">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4866" name="mw980fee86_abb7_474c_acba_0aa345a38f0f" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_352" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2079">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2120">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2062">
              <SourceParameter reference="Parameter_4866"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="mwd9e27d2b_0794_4f96_b217_610230786396_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4876" name="mw93741c58_8277_4c4d_ae0b_f66c8b61386d" value="10"/>
          <Constant key="Parameter_4867" name="mwccff0caa_1476_405b_b13a_b17603ebf988" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_353" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2159">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2160">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2161">
              <SourceParameter reference="Parameter_4876"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2162">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2151">
              <SourceParameter reference="Parameter_4867"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2152">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
          <Product metabolite="Metabolite_72" stoichiometry="2"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4873" name="mw670653d9_4218_4df9_b303_5f293e77f990" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_354" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2080">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2109">
              <SourceParameter reference="Parameter_4873"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1998">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4871" name="mw880f4368_ff12_4fb4_8274_f28a85086459" value="10"/>
          <Constant key="Parameter_4868" name="mw9c569c82_9bbe_4254_be15_864725548e53" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_355" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2198">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2199">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2200">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2195">
              <SourceParameter reference="Parameter_4871"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2184">
              <SourceParameter reference="Parameter_4868"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2185">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="mw436881db_622f_457d_9adc_4d50e00496e9_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="mw31b03405_3b28_47bb_8821_50e7421ede27" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_356" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2114">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2186">
              <SourceParameter reference="Parameter_4992"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2187">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="mwaf2b763e_ef31_46f8_941a_79f8b7912007" value="10"/>
          <Constant key="Parameter_4991" name="mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_357" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2234">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2235">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2236">
              <SourceParameter reference="Parameter_4991"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2237">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2223">
              <SourceParameter reference="Parameter_4996"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2224">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="mwef614928_eb66_47e0_9448_7e37ca1f9da6" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_358" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2113">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2210">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2182">
              <SourceParameter reference="Parameter_4989"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_359" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2264">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2249">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2248">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf" value="0.1"/>
          <Constant key="Parameter_4993" name="mw220339f8_94a8_4c76_a9f9_58d5c54662f3" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_360" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2279">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2280">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2281">
              <SourceParameter reference="Parameter_4993"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2282">
              <SourceParameter reference="Metabolite_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2267">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2266">
              <SourceParameter reference="Parameter_4997"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="mw95143b4c_189f_4371_9e49_c9203b9cbcbc" value="1.1"/>
          <Constant key="Parameter_4995" name="mw957daec6_ebbb_49d5_8167_3766b2a188d2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_361" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2311">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2297">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2298">
              <SourceParameter reference="Parameter_4994"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2299">
              <SourceParameter reference="Parameter_4995"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2188">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8" value="2"/>
          <Constant key="Parameter_4985" name="mw88e6b301_c19d_4176_a4ab_c796e1855157" value="250"/>
        </ListOfConstants>
        <KineticLaw function="Function_362" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2328">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2329">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2276">
              <SourceParameter reference="Parameter_4985"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2228">
              <SourceParameter reference="Parameter_4988"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2227">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="mw39391935_db59_4854_a7f3_d007a3c800e9_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4982" name="mwea067fb0_944c_4ea9_ad77_d6c4637982d5" value="0.2"/>
          <Constant key="Parameter_4983" name="mwaa2e8186_64eb_4461_8a31_8d0de39dc096" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_363" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2316">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2317">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2318">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2313">
              <SourceParameter reference="Parameter_4983"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2314">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2333">
              <SourceParameter reference="Parameter_4982"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b" value="20"/>
          <Constant key="Parameter_4987" name="mw820bf2c5_8b99_479b_81a8_f87bd2e4993c" value="400"/>
        </ListOfConstants>
        <KineticLaw function="Function_364" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2370">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2371">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2375">
              <SourceParameter reference="Parameter_4987"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2364">
              <SourceParameter reference="Parameter_4981"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2365">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2369">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc" value="0.74877"/>
        </ListOfConstants>
        <KineticLaw function="Function_365" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2268">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2181">
              <SourceParameter reference="Parameter_4986"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2265">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="mwfdef4d20_4109_463d_b082_b17425eea08c_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_366" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2349">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2350">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2351">
              <SourceParameter reference="Parameter_4984"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="mw5d32e76c_c3b5_41f5_ab4d_a989739e976b" value="1000"/>
          <Constant key="Parameter_4980" name="mw2ae82278_adf1_4e1e_bc67_81fd0721e604" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_367" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2421">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2422">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2411">
              <SourceParameter reference="Parameter_4980"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2412">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2413">
              <SourceParameter reference="Parameter_4978"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2414">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4976" name="mwe97cb484_3f1f_4130_b862_68561e44f9e7" value="1000"/>
          <Constant key="Parameter_4977" name="mw8ab9985a_3984_4d46_8b30_0e80a32b67f1" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_368" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2435">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2434">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2441">
              <SourceParameter reference="Parameter_4977"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2426">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2425">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2424">
              <SourceParameter reference="Parameter_4976"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="mwdb1afb7b_616f_4514_aa03_8864294581f7" value="1"/>
          <Constant key="Parameter_4973" name="mw7afd6ea0_151a_485a_951e_95ad1b693ddb" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_369" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2472">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2473">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2465">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2466">
              <SourceParameter reference="Parameter_4973"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2467">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2459">
              <SourceParameter reference="Parameter_4979"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_98" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4974" name="mw324437a8_304c_4428_82a3_e4d0282c46a1" value="1"/>
          <Constant key="Parameter_4975" name="mw04494ba4_76c3_4733_9985_94acd310297b" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_370" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2488">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2489">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2490">
              <SourceParameter reference="Parameter_4975"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2491">
              <SourceParameter reference="Parameter_4974"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1981">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2396">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113" value="0.00122951"/>
        </ListOfConstants>
        <KineticLaw function="Function_371" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2397">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2399">
              <SourceParameter reference="Parameter_4968"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2063">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4970" name="mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067" value="300"/>
          <Constant key="Parameter_4971" name="mw4749d6e8_391a_4fed_9840_574e826d220b" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_372" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2536">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2525">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2529">
              <SourceParameter reference="Parameter_4971"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2530">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2519">
              <SourceParameter reference="Parameter_4970"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2484">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="mweb0418ba_a652_4601_b6c9_0815d8c7fdd7" value="30"/>
          <Constant key="Parameter_4972" name="mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_373" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2548">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2549">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2550">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2551">
              <SourceParameter reference="Parameter_4969"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2513">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2541">
              <SourceParameter reference="Parameter_4972"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4964" name="mw91ca7fce_56fc_4796_be5f_31f2113d05ff" value="0.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_374" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2398">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2334">
              <SourceParameter reference="Parameter_4964"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2485">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4967" name="mw45c534f2_a178_4fda_9794_bb6a741ee891" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_375" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2564">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2567">
              <SourceParameter reference="Parameter_4967"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2568">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4966" name="mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_376" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2590">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2575">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2574">
              <SourceParameter reference="Parameter_4966"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_100" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4965" name="mw5503e10b_b399_401c_85c1_34fcb4a75ef2" value="10"/>
          <Constant key="Parameter_4959" name="mwae4a630a_9af9_48e4_934e_06c84da51e82" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_377" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2600">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2603">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2604">
              <SourceParameter reference="Parameter_4965"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2605">
              <SourceParameter reference="Parameter_4959"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2606">
              <SourceParameter reference="Metabolite_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2607">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_100" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4954" name="mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_378" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2480">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2608">
              <SourceParameter reference="Parameter_4954"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2481">
              <SourceParameter reference="Metabolite_100"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="mw4db04782_491a_4679_8196_cafbc55b9f95_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4962" name="mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc" value="10"/>
          <Constant key="Parameter_4960" name="mwa7c866b1_be00_4def_b475_9f5439669d26" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_379" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2644">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2645">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2646">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2647">
              <SourceParameter reference="Parameter_4960"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2636">
              <SourceParameter reference="Parameter_4962"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2637">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="mw415d655e_9891_4a00_843a_4d3ea56c6961" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_380" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2595">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2638">
              <SourceParameter reference="Parameter_4961"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2269">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="mw33c60e2e_0342_44e5_9018_5b0afb2d9e37" value="10"/>
          <Constant key="Parameter_4952" name="mw743021d4_03be_46d4_8cfe_01c2a98abd72" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_381" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2677">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2660">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2661">
              <SourceParameter reference="Parameter_4963"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2662">
              <SourceParameter reference="Parameter_4952"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2633">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2634">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
          <Product metabolite="Metabolite_72" stoichiometry="2"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4953" name="mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_382" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2625">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2635">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2593">
              <SourceParameter reference="Parameter_4953"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4951" name="mw5ba0589c_de85_47f9_b4de_6521446eb626" value="10"/>
          <Constant key="Parameter_4956" name="mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_383" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2725">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2710">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2715">
              <SourceParameter reference="Parameter_4951"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2716">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2701">
              <SourceParameter reference="Parameter_4956"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2700">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4957" name="mw510ac102_ffdc_417a_aaf0_4e2404610fdf" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_384" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2667">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2699">
              <SourceParameter reference="Parameter_4957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2639">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4958" name="mw98935be7_cc3a_45c9_82a1_60b4de40e60b" value="10"/>
          <Constant key="Parameter_4955" name="mw36bc145a_0803_475e_952d_f47300281d76" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_385" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2758">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2678">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2679">
              <SourceParameter reference="Parameter_4955"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2680">
              <SourceParameter reference="Parameter_4958"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2728">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2745">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4950" name="mw6a9add31_478e_43ac_93dc_7ac72e1b235b" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_386" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2669">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2746">
              <SourceParameter reference="Parameter_4950"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2736">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4949" name="mwb58426aa_c779_4bf6_abcb_d9b102a11b01" value="0.00231049"/>
        </ListOfConstants>
        <KineticLaw function="Function_387" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2749">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2771">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2772">
              <SourceParameter reference="Parameter_4949"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="mw662fff41_e987_4afc_a587_e68c159d727c_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4948" name="mw047616e8_0b14_42e1_aa37_4c17eb01c742" value="0.2"/>
          <Constant key="Parameter_4947" name="mw76a20dcd_87ed_43cb_9023_0c10a44bc081" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_388" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2806">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2792">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2793">
              <SourceParameter reference="Parameter_4948"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2794">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2777">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2778">
              <SourceParameter reference="Parameter_4947"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4945" name="mwa4a57dad_68c2_457b_b8fe_5e44e0f79081" value="20"/>
          <Constant key="Parameter_4946" name="mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316" value="400"/>
        </ListOfConstants>
        <KineticLaw function="Function_389" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2817">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2816">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2819">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2820">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2821">
              <SourceParameter reference="Parameter_4945"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2811">
              <SourceParameter reference="Parameter_4946"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4944" name="mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4" value="0.748529"/>
        </ListOfConstants>
        <KineticLaw function="Function_390" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2750">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2703">
              <SourceParameter reference="Parameter_4944"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_2702">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4936" name="mw3d1a9380_01d0_445c_a000_7aef19654d03" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_391" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1601">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1643">
              <SourceParameter reference="Parameter_4936"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="mw2954d485_8830_42f7_9567_c5fb232a305e" value="1000"/>
          <Constant key="Parameter_4943" name="mwe2129027_42be_48a5_b1ac_08a8475a4489" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_392" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3043">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3042">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3041">
              <SourceParameter reference="Parameter_4939"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3040">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3039">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3038">
              <SourceParameter reference="Parameter_4943"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_106" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4719" name="mw861809d2_2f89_480e_8ac0_a22bd363ee4d" value="1000"/>
          <Constant key="Parameter_4720" name="mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc" value="1.2e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_393" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3055">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3054">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3053">
              <SourceParameter reference="Metabolite_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3052">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3051">
              <SourceParameter reference="Parameter_4720"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3050">
              <SourceParameter reference="Parameter_4719"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4721" name="mw420d2b27_f423_4274_84cb_6cac151f0d41" value="1"/>
          <Constant key="Parameter_4722" name="mwae8d8860_b8ab_4267_b767_361c82045673" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_394" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3067">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3066">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3065">
              <SourceParameter reference="Parameter_4721"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3064">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3063">
              <SourceParameter reference="Parameter_4722"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3062">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_106" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4723" name="mw7f4252d3_360b_4d1c_be74_de2dd056dd30" value="1"/>
          <Constant key="Parameter_4724" name="mw495d6006_2243_4a1b_8f99_da34ba8620c4" value="120000"/>
        </ListOfConstants>
        <KineticLaw function="Function_395" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3079">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3078">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3077">
              <SourceParameter reference="Parameter_4724"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3076">
              <SourceParameter reference="Metabolite_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3075">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3074">
              <SourceParameter reference="Parameter_4723"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4725" name="mw5c4b8017_d12f_4da7_844b_66866761e8a8" value="0.00147059"/>
        </ListOfConstants>
        <KineticLaw function="Function_396" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2779">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3036">
              <SourceParameter reference="Parameter_4725"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3035">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4726" name="mw1f7cd54c_006a_4336_a29b_b8e165e47ffd" value="150"/>
          <Constant key="Parameter_4727" name="mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_397" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3097">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3096">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3095">
              <SourceParameter reference="Parameter_4726"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3094">
              <SourceParameter reference="Parameter_4727"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3093">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3092">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_108" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4728" name="mw886360ca_3240_4b70_b2ed_71f6a14f6991" value="300"/>
          <Constant key="Parameter_4729" name="mw5f037ee6_02ab_416b_b171_6a8d50c40d98" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_398" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3109">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3108">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3107">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3106">
              <SourceParameter reference="Parameter_4729"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3105">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3104">
              <SourceParameter reference="Parameter_4728"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_108" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4730" name="mwd0db75ff_7917_4f48_8568_a6e4deaaef49" value="30"/>
          <Constant key="Parameter_4731" name="mwc11b606e_316e_4d71_9489_566accdec78f" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_399" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3121">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3120">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3119">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3118">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3117">
              <SourceParameter reference="Parameter_4731"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3116">
              <SourceParameter reference="Parameter_4730"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4732" name="mwda5b89c3_b635_462b_99e8_64dcdb001557" value="0.024"/>
        </ListOfConstants>
        <KineticLaw function="Function_400" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2787">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3089">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3091">
              <SourceParameter reference="Parameter_4732"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4733" name="mw1f06627c_eca4_4a8e_95a3_0507a39254a8" value="0.012"/>
        </ListOfConstants>
        <KineticLaw function="Function_401" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3133">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3132">
              <SourceParameter reference="Parameter_4733"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3131">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4734" name="mw1ce3701e_a468_4bc4_8e8f_9490b0481417" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_402" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3139">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3138">
              <SourceParameter reference="Parameter_4734"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3137">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4735" name="mwb8b2f665_972a_4fa5_b77b_65267d72d771" value="10"/>
          <Constant key="Parameter_4736" name="mw901997be_8666_4eaa_89ce_67dae645b596" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_403" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3151">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3150">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3149">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3148">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3147">
              <SourceParameter reference="Parameter_4736"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3146">
              <SourceParameter reference="Parameter_4735"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4737" name="mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_404" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_2735">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3145">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3144">
              <SourceParameter reference="Parameter_4737"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_110" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4738" name="mw9095c419_1af6_423f_a17b_f35649e9b8e3" value="10"/>
          <Constant key="Parameter_4739" name="mw8495daea_5d03_48d8_9a63_049bb19938e1" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_405" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3169">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3168">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3167">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3166">
              <SourceParameter reference="Metabolite_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3165">
              <SourceParameter reference="Parameter_4739"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3164">
              <SourceParameter reference="Parameter_4738"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_110" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4740" name="mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_406" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3090">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3163">
              <SourceParameter reference="Metabolite_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3143">
              <SourceParameter reference="Parameter_4740"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4741" name="mw93951f7c_0025_4fcb_b7aa_13011fab660e" value="10"/>
          <Constant key="Parameter_4742" name="mw16c052b6_5d10_4f5b_b210_7e2b014b2b09" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_407" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3187">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3186">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3185">
              <SourceParameter reference="Parameter_4742"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3184">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3183">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3182">
              <SourceParameter reference="Parameter_4741"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
          <Product metabolite="Metabolite_72" stoichiometry="2"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4743" name="mwdb1c589a_02fe_4cbe_8254_348163ce6ad0" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_408" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3162">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3181">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3179">
              <SourceParameter reference="Parameter_4743"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4744" name="mw67ee2769_d071_4e0c_8ae9_890a69369c1c" value="10"/>
          <Constant key="Parameter_4745" name="mw32cd40a9_406f_4471_8a5c_ccf548642a0b" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_409" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3205">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3204">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3203">
              <SourceParameter reference="Parameter_4745"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3202">
              <SourceParameter reference="Parameter_4744"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3201">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3200">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4746" name="mwc71a57e2_1da1_46e5_a212_4a2eddb53988" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_410" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3161">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3199">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3197">
              <SourceParameter reference="Parameter_4746"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_108" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4747" name="mw6e36b10f_0200_499f_802b_7186ac265e97" value="10"/>
          <Constant key="Parameter_4748" name="mw0e13e734_1441_4dd8_8bb2_6c45e689ce89" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_411" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3223">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3222">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3221">
              <SourceParameter reference="Parameter_4748"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3220">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3219">
              <SourceParameter reference="Parameter_4747"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3218">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4749" name="mw47f65815_3810_49b1_98a8_e8576ae26c72" value="0.00277778"/>
        </ListOfConstants>
        <KineticLaw function="Function_412" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3037">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3217">
              <SourceParameter reference="Parameter_4749"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3215">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="r1_" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4750" name="k1" value="1"/>
          <Constant key="Parameter_4751" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_115"/>
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="r2_" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4752" name="k2f_" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_413" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[cell_internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_3239">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3238">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_3237">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="mw4a0bd0e6_4b00_457f_b402_dc2c63365e45" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=NoName,Reference=Time> le 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_2">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="mw83ae4da6_9284_42ad_964e_3155416186c7" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=NoName,Reference=Time> gt 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_2">
            <Expression>
              0.00020000000000000001
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="mw6e9de745_2658_493a_86b8_d825837432c9" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=NoName,Reference=Time> le 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_6">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="mwd9c0dae9_2cc7_4fa3_8036_3a7c9a202cb7" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=NoName,Reference=Time> gt 5400
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_6">
            <Expression>
              0.00020000000000000001
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal]" value="4" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_external]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[DNA pOR1OR2--utr1--alHL]" value="1.00000066666711" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP:RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:RNAP:DNA pOR1OR2--utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--alHL]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--alHL:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP]" value="100.00006666671101" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo]" value="30.000020000013301" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RecBCD]" value="5.0000033333355596" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNase]" value="100.00006666671101" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP]" value="3180048.20076943" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP]" value="1908028.92046166" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA]" value="31800482.0076943" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein lacIdimer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein lacItetramer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[DNA pOR1OR2--utr1--lacI]" value="20.000013333342199" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:AGTP:RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein deGFP*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[DNA plac--utr1--deGFP]" value="20.000013333342199" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:AGTP:RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[IPTG:protein lacItetramer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP:RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:RNAP:DNA pOR1OR2--utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--lacI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--lacI:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP:RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[CUTP:RNAP:DNA plac--utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[DNA plac--utr1--deGFP:protein lacItetramer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--deGFP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:2AGTP:Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[term_Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AA:Ribo:RNA utr1--deGFP:RNase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[AGTP_USED]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_external],Vector=Metabolites[IPTG]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[IPTG]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein alHL*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[IPTG:protein alHL*]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[AGTPdeg_F]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[AGTPdeg_F_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[k1f]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[k1r]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[k2f]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1],ParameterGroup=Parameters,Parameter=mwe60d7d7d_697e_4455_a11e_eac9e72a433e" value="0.0023104906018664799" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1],ParameterGroup=Parameters,Parameter=mw3830ada9_8c1f_4408_8792_b352b9545092" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1],ParameterGroup=Parameters,Parameter=mw4b24730a_ba8b_4323_8c9e_c8d793425e60" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1],ParameterGroup=Parameters,Parameter=mw48cc8c87_2548_4333_b0d0_129277cd1fb4" value="20" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1],ParameterGroup=Parameters,Parameter=mw8b9a381a_163f_435c_934b_38e9d22433c5" value="400" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1],ParameterGroup=Parameters,Parameter=mw66da3667_22e0_4c78_82a4_32def7919cd0" value="0.748529411764706" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1],ParameterGroup=Parameters,Parameter=mwd0042ae4_1646_428b_99de_e8ca18f1d5a2" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1],ParameterGroup=Parameters,Parameter=mw490dcf1e_63bd_479e_a995_3f131fb43e97" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1],ParameterGroup=Parameters,Parameter=mw002f98bd_2b9a_40dd_93c4_225856292b8a" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1],ParameterGroup=Parameters,Parameter=mwec2a5da9_9f9d_42c6_b2de_a4a19dae0dda" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1],ParameterGroup=Parameters,Parameter=mw4286f6bc_9ea0_4368_8609_a95ebe1ba7e4" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1],ParameterGroup=Parameters,Parameter=mwf3f8bee7_7617_49f4_990a_afc7b5485ca7" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1],ParameterGroup=Parameters,Parameter=mw4ce1e65c_926e_4d3c_b3e6_396def864bd6" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1],ParameterGroup=Parameters,Parameter=mw710fb4f7_6073_42ed_a40d_41d009035891" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1],ParameterGroup=Parameters,Parameter=mw6aa3baca_c087_46d2_bf9e_75440163765a" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1],ParameterGroup=Parameters,Parameter=mw2996778c_c27b_4ec7_a7bb_34b2ceda6977" value="0.00147058823529412" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1],ParameterGroup=Parameters,Parameter=mwa0cbd407_e863_4341_b66b_060977850e66" value="300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1],ParameterGroup=Parameters,Parameter=mw5ffbf3db_6003_4217_9bd8_796832a8ba27" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1],ParameterGroup=Parameters,Parameter=mw759eca19_9151_4ba3_acf0_89be22ebccd8" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1],ParameterGroup=Parameters,Parameter=mw7bf223f7_b7b0_4026_acb1_17191e7ef4e6" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1],ParameterGroup=Parameters,Parameter=mwf2243644_7dd8_4cd5_8e7f_523d1ee6c622" value="0.024" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1],ParameterGroup=Parameters,Parameter=mwdbe11a94_d411_4b68_aa97_8f09854129f2" value="0.012" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1],ParameterGroup=Parameters,Parameter=mw0768058d_03e2_4673_8542_1f8cb39d4ec3" value="50" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1],ParameterGroup=Parameters,Parameter=mw9031e56e_f709_472e_841a_f697866e9019" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1],ParameterGroup=Parameters,Parameter=mwd24cd525_af85_43b1_afc4_c91d2d887a5b" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1],ParameterGroup=Parameters,Parameter=mw9008fd58_dae9_4ff7_b526_e14558cae1c3" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1],ParameterGroup=Parameters,Parameter=mw0d51dc68_2890_43f9_bdd4_ac1b1ef92525" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1],ParameterGroup=Parameters,Parameter=mw0cd5d8d1_dfe6_40ba_8503_81c9e1ea0599" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1],ParameterGroup=Parameters,Parameter=mw980fee86_abb7_474c_acba_0aa345a38f0f" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwd9e27d2b_0794_4f96_b217_610230786396_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd9e27d2b_0794_4f96_b217_610230786396_SS1],ParameterGroup=Parameters,Parameter=mw93741c58_8277_4c4d_ae0b_f66c8b61386d" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd9e27d2b_0794_4f96_b217_610230786396_SS1],ParameterGroup=Parameters,Parameter=mwccff0caa_1476_405b_b13a_b17603ebf988" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1],ParameterGroup=Parameters,Parameter=mw670653d9_4218_4df9_b303_5f293e77f990" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1],ParameterGroup=Parameters,Parameter=mw880f4368_ff12_4fb4_8274_f28a85086459" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1],ParameterGroup=Parameters,Parameter=mw9c569c82_9bbe_4254_be15_864725548e53" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw436881db_622f_457d_9adc_4d50e00496e9_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw436881db_622f_457d_9adc_4d50e00496e9_SS1],ParameterGroup=Parameters,Parameter=mw31b03405_3b28_47bb_8821_50e7421ede27" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1],ParameterGroup=Parameters,Parameter=mwaf2b763e_ef31_46f8_941a_79f8b7912007" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1],ParameterGroup=Parameters,Parameter=mw1d8f2bbb_07a6_402b_9ffc_d24aac2a1edf" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1],ParameterGroup=Parameters,Parameter=mwef614928_eb66_47e0_9448_7e37ca1f9da6" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1],ParameterGroup=Parameters,Parameter=mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[AGTPdeg_F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2],ParameterGroup=Parameters,Parameter=mwed97bcbd_4d1b_4df8_9cc5_6efe8dc18edf" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2],ParameterGroup=Parameters,Parameter=mw220339f8_94a8_4c76_a9f9_58d5c54662f3" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2],ParameterGroup=Parameters,Parameter=mw95143b4c_189f_4371_9e49_c9203b9cbcbc" value="1.1000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2],ParameterGroup=Parameters,Parameter=mw957daec6_ebbb_49d5_8167_3766b2a188d2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2],ParameterGroup=Parameters,Parameter=mwa09a7a9d_81cc_4ec4_bba4_36d8e79b88d8" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2],ParameterGroup=Parameters,Parameter=mw88e6b301_c19d_4176_a4ab_c796e1855157" value="250" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw39391935_db59_4854_a7f3_d007a3c800e9_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw39391935_db59_4854_a7f3_d007a3c800e9_SS2],ParameterGroup=Parameters,Parameter=mwea067fb0_944c_4ea9_ad77_d6c4637982d5" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw39391935_db59_4854_a7f3_d007a3c800e9_SS2],ParameterGroup=Parameters,Parameter=mwaa2e8186_64eb_4461_8a31_8d0de39dc096" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2],ParameterGroup=Parameters,Parameter=mwd1e6aca1_12f3_4a1c_8a72_af7a96b9813b" value="20" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2],ParameterGroup=Parameters,Parameter=mw820bf2c5_8b99_479b_81a8_f87bd2e4993c" value="400" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2],ParameterGroup=Parameters,Parameter=mw78a7da0a_3e7e_491f_ad91_2ed5d734d5fc" value="0.74877049180327904" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwfdef4d20_4109_463d_b082_b17425eea08c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwfdef4d20_4109_463d_b082_b17425eea08c_SS2],ParameterGroup=Parameters,Parameter=mwce5fddb7_71c3_4e98_ac81_ec0a3b001d99" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2],ParameterGroup=Parameters,Parameter=mw5d32e76c_c3b5_41f5_ab4d_a989739e976b" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2],ParameterGroup=Parameters,Parameter=mw2ae82278_adf1_4e1e_bc67_81fd0721e604" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2],ParameterGroup=Parameters,Parameter=mwe97cb484_3f1f_4130_b862_68561e44f9e7" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2],ParameterGroup=Parameters,Parameter=mw8ab9985a_3984_4d46_8b30_0e80a32b67f1" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2],ParameterGroup=Parameters,Parameter=mwdb1afb7b_616f_4514_aa03_8864294581f7" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2],ParameterGroup=Parameters,Parameter=mw7afd6ea0_151a_485a_951e_95ad1b693ddb" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2],ParameterGroup=Parameters,Parameter=mw324437a8_304c_4428_82a3_e4d0282c46a1" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2],ParameterGroup=Parameters,Parameter=mw04494ba4_76c3_4733_9985_94acd310297b" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2],ParameterGroup=Parameters,Parameter=mw8dbd1384_dfe7_407c_bb2f_4c6a60ece113" value="0.0012295081967213101" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2],ParameterGroup=Parameters,Parameter=mwa454e0eb_5b9b_4abe_97fb_c8fecd1a5067" value="300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2],ParameterGroup=Parameters,Parameter=mw4749d6e8_391a_4fed_9840_574e826d220b" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2],ParameterGroup=Parameters,Parameter=mweb0418ba_a652_4601_b6c9_0815d8c7fdd7" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2],ParameterGroup=Parameters,Parameter=mwfc57ef0b_083f_47a2_a7fb_bd77e7ea271a" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2],ParameterGroup=Parameters,Parameter=mw91ca7fce_56fc_4796_be5f_31f2113d05ff" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2],ParameterGroup=Parameters,Parameter=mw45c534f2_a178_4fda_9794_bb6a741ee891" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2],ParameterGroup=Parameters,Parameter=mw9e438038_4cdf_47fe_9fd8_8c153f1d0d36" value="50" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2],ParameterGroup=Parameters,Parameter=mw5503e10b_b399_401c_85c1_34fcb4a75ef2" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2],ParameterGroup=Parameters,Parameter=mwae4a630a_9af9_48e4_934e_06c84da51e82" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2],ParameterGroup=Parameters,Parameter=mwb96a1d2a_b5f8_44f4_b227_80f66fda9cc3" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw4db04782_491a_4679_8196_cafbc55b9f95_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw4db04782_491a_4679_8196_cafbc55b9f95_SS2],ParameterGroup=Parameters,Parameter=mwb6485fb2_9c6d_49a4_8420_c7c4c53a90cc" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw4db04782_491a_4679_8196_cafbc55b9f95_SS2],ParameterGroup=Parameters,Parameter=mwa7c866b1_be00_4def_b475_9f5439669d26" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2],ParameterGroup=Parameters,Parameter=mw415d655e_9891_4a00_843a_4d3ea56c6961" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2],ParameterGroup=Parameters,Parameter=mw33c60e2e_0342_44e5_9018_5b0afb2d9e37" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2],ParameterGroup=Parameters,Parameter=mw743021d4_03be_46d4_8cfe_01c2a98abd72" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2],ParameterGroup=Parameters,Parameter=mw9cee779f_46f7_454d_bdfc_0fdc67ae9dbb" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2],ParameterGroup=Parameters,Parameter=mw5ba0589c_de85_47f9_b4de_6521446eb626" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2],ParameterGroup=Parameters,Parameter=mwb009fcc9_b90f_4dc5_ab36_f7cb4afaa2a6" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2],ParameterGroup=Parameters,Parameter=mw510ac102_ffdc_417a_aaf0_4e2404610fdf" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2],ParameterGroup=Parameters,Parameter=mw98935be7_cc3a_45c9_82a1_60b4de40e60b" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2],ParameterGroup=Parameters,Parameter=mw36bc145a_0803_475e_952d_f47300281d76" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2],ParameterGroup=Parameters,Parameter=mw6a9add31_478e_43ac_93dc_7ac72e1b235b" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2],ParameterGroup=Parameters,Parameter=mwb58426aa_c779_4bf6_abcb_d9b102a11b01" value="0.0023104906018664799" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw662fff41_e987_4afc_a587_e68c159d727c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw662fff41_e987_4afc_a587_e68c159d727c_SS2],ParameterGroup=Parameters,Parameter=mw047616e8_0b14_42e1_aa37_4c17eb01c742" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw662fff41_e987_4afc_a587_e68c159d727c_SS2],ParameterGroup=Parameters,Parameter=mw76a20dcd_87ed_43cb_9023_0c10a44bc081" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2],ParameterGroup=Parameters,Parameter=mwa4a57dad_68c2_457b_b8fe_5e44e0f79081" value="20" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2],ParameterGroup=Parameters,Parameter=mwdb5eda20_e9dc_4fa3_b7a8_4bb243cfa316" value="400" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2],ParameterGroup=Parameters,Parameter=mw3ea9c4de_2ae2_4c10_bcc0_779417a5a6f4" value="0.748529411764706" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2],ParameterGroup=Parameters,Parameter=mw3d1a9380_01d0_445c_a000_7aef19654d03" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2],ParameterGroup=Parameters,Parameter=mw2954d485_8830_42f7_9567_c5fb232a305e" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2],ParameterGroup=Parameters,Parameter=mwe2129027_42be_48a5_b1ac_08a8475a4489" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2],ParameterGroup=Parameters,Parameter=mw861809d2_2f89_480e_8ac0_a22bd363ee4d" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2],ParameterGroup=Parameters,Parameter=mw5b6e5883_a3b1_41fd_b446_96fd580cb6fc" value="120000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2],ParameterGroup=Parameters,Parameter=mw420d2b27_f423_4274_84cb_6cac151f0d41" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2],ParameterGroup=Parameters,Parameter=mwae8d8860_b8ab_4267_b767_361c82045673" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2],ParameterGroup=Parameters,Parameter=mw7f4252d3_360b_4d1c_be74_de2dd056dd30" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2],ParameterGroup=Parameters,Parameter=mw495d6006_2243_4a1b_8f99_da34ba8620c4" value="120000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2],ParameterGroup=Parameters,Parameter=mw5c4b8017_d12f_4da7_844b_66866761e8a8" value="0.00147058823529412" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2],ParameterGroup=Parameters,Parameter=mw1f7cd54c_006a_4336_a29b_b8e165e47ffd" value="150" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2],ParameterGroup=Parameters,Parameter=mw2f5f58cf_40d2_46e1_b838_f65fc5977fe4" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2],ParameterGroup=Parameters,Parameter=mw886360ca_3240_4b70_b2ed_71f6a14f6991" value="300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2],ParameterGroup=Parameters,Parameter=mw5f037ee6_02ab_416b_b171_6a8d50c40d98" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2],ParameterGroup=Parameters,Parameter=mwd0db75ff_7917_4f48_8568_a6e4deaaef49" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2],ParameterGroup=Parameters,Parameter=mwc11b606e_316e_4d71_9489_566accdec78f" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2],ParameterGroup=Parameters,Parameter=mwda5b89c3_b635_462b_99e8_64dcdb001557" value="0.024" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2],ParameterGroup=Parameters,Parameter=mw1f06627c_eca4_4a8e_95a3_0507a39254a8" value="0.012" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2],ParameterGroup=Parameters,Parameter=mw1ce3701e_a468_4bc4_8e8f_9490b0481417" value="50" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2],ParameterGroup=Parameters,Parameter=mwb8b2f665_972a_4fa5_b77b_65267d72d771" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2],ParameterGroup=Parameters,Parameter=mw901997be_8666_4eaa_89ce_67dae645b596" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2],ParameterGroup=Parameters,Parameter=mw9a0d61ce_d19f_491d_8a8b_e7185dd6407b" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2],ParameterGroup=Parameters,Parameter=mw9095c419_1af6_423f_a17b_f35649e9b8e3" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2],ParameterGroup=Parameters,Parameter=mw8495daea_5d03_48d8_9a63_049bb19938e1" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2],ParameterGroup=Parameters,Parameter=mw97572d63_c62e_4bbf_bdc1_2e74c31eaafc" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2],ParameterGroup=Parameters,Parameter=mw93951f7c_0025_4fcb_b7aa_13011fab660e" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2],ParameterGroup=Parameters,Parameter=mw16c052b6_5d10_4f5b_b210_7e2b014b2b09" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2],ParameterGroup=Parameters,Parameter=mwdb1c589a_02fe_4cbe_8254_348163ce6ad0" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2],ParameterGroup=Parameters,Parameter=mw67ee2769_d071_4e0c_8ae9_890a69369c1c" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2],ParameterGroup=Parameters,Parameter=mw32cd40a9_406f_4471_8a5c_ccf548642a0b" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2],ParameterGroup=Parameters,Parameter=mwc71a57e2_1da1_46e5_a212_4a2eddb53988" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2],ParameterGroup=Parameters,Parameter=mw6e36b10f_0200_499f_802b_7186ac265e97" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2],ParameterGroup=Parameters,Parameter=mw0e13e734_1441_4dd8_8bb2_6c45e689ce89" value="2000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2],ParameterGroup=Parameters,Parameter=mw47f65815_3810_49b1_98a8_e8576ae26c72" value="0.0027777777777777801" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[r1_]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[r1_],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[k1f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[r1_],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[k1r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[r2_]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[r2_],ParameterGroup=Parameters,Parameter=k2f_" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[k2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_112"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_102"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_114"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_98"/>
      <StateTemplateVariable objectReference="Metabolite_100"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_96"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_110"/>
      <StateTemplateVariable objectReference="Metabolite_106"/>
      <StateTemplateVariable objectReference="Metabolite_108"/>
      <StateTemplateVariable objectReference="Metabolite_104"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3180048.20076943 100.00006666671101 30.000020000013301 31800482.0076943 100.00006666671101 1908028.92046166 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20.000013333342199 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.00000066666711 20.000013333342199 0 0 5.0000033333355596 4 1 0 0 1 1 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
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
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Protein deGFP (without IPTG)" type="Plot2D" active="1" taskTypes="">
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
            <ChannelSpec cn="CN=Root,Model=NoName,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NoName,Vector=Compartments[cell_internal],Vector=Metabolites[protein deGFP*],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="cell_transport_model.xml">
    <SBMLMap SBMLid="AA_combined" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="AGTP_USED_combined" COPASIkey="Metabolite_114"/>
    <SBMLMap SBMLid="AGTP_combined" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="CUTP_combined" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="IPTG_" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="IPTG_combined" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="RNAP_combined" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="RNase_combined" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="RecBCD_combined" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="Ribo_combined" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="cell_external" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="cell_internal" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="k1f_" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k1r_" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="k2f_" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="mw02c6a3ac_95fe_4064_9ee1_8d2ea4e0fb42_SS2" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="mw0d097c9c_0e16_42d5_a990_888eb21274ba_SS1" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="mw0f006cd4_e78e_48c5_b532_eb6e2f3c6121_SS2" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="mw117ae676_633e_4f3a_be8d_eacdbdddfeea_SS2" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="mw11bfe9cd_0d22_4115_b9f7_163fa42fa97b_SS2" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="mw1f48fbad_07b8_4e1d_bbe5_fd536dbd34bb_SS2" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="mw20c9d2b7_2d30_489e_82d1_e71648158436_SS1" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="mw26898fb3_ee4b_481d_a532_0cbdbd5fc17d_SS2" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="mw27bf35db_2b1d_439b_a0c4_81972bf226ef_SS1" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="mw2db33076_5d6d_4b30_8fc6_4a0e38c7f22c_SS2" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="mw3222fc51_b8a6_481b_adcf_8fa66964731e_SS1" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="mw3270dad3_c7a3_4305_ad64_dca872557e9c_SS1" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="mw32c43fdc_054d_44c4_944e_c7628d4180f7_SS1" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="mw36dad171_05d7_4907_8d71_c2b3b5e51352_SS2" COPASIkey="Metabolite_96"/>
    <SBMLMap SBMLid="mw3701a3c9_013e_4850_a56f_d955ac7b1af5_SS2" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="mw39391935_db59_4854_a7f3_d007a3c800e9_SS2" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="mw3d049690_08fa_4d0a_ba4c_0a9b22df2891_SS2" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="mw3d0ed74a_6798_4c0b_969d_48ad2e8c8e02_SS2" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="mw3df01083_618d_4509_9811_8b63adf5cb42_SS1" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="mw3f39d269_c02c_4365_a0ab_dc7a7c17d03b_SS2" COPASIkey="Reaction_146"/>
    <SBMLMap SBMLid="mw42ea34c3_4490_4d8a_8ee5_dd1c4ac5319c_SS1" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="mw436881db_622f_457d_9adc_4d50e00496e9_SS1" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="mw4740c413_fa03_405b_a56e_3a2fd6375f6c_SS2" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="mw483b2885_4e32_40d4_ae03_ecc24729a62d_SS1" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="mw49de218b_1e29_45e1_862c_0dc03a516700_SS2" COPASIkey="Metabolite_106"/>
    <SBMLMap SBMLid="mw4a0bd0e6_4b00_457f_b402_dc2c63365e45" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="mw4a66ddbd_47a7_43ce_af40_6e87913f3535_SS2" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="mw4c3c07d8_d9c7_4a98_901d_a1b666222614_SS1" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="mw4c9145df_8b24_4aaa_a454_8036c6007b39_SS2" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="mw4db04782_491a_4679_8196_cafbc55b9f95_SS2" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="mw4f5fe0af_785d_49d5_b933_2f5c065fce88_SS2" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="mw50cebc13_eef8_41ce_9a71_72ef3e078558_SS2" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="mw5453f37e_770a_422a_ba2f_43c5372ca7be_SS1" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="mw55a8259b_29cf_445a_a79e_f0229fbc33d2_SS2" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="mw5c15d96d_0b86_4a69_bb1d_6b7934ef3298_SS1" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="mw5c80f96c_3d4b_4e22_876a_054655c1bf29_SS2" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="mw5c94996f_4533_4f46_813f_fb42fa7356f3_SS2" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="mw609aa47a_fc0e_418c_a186_aa3a658fb203_SS2" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="mw611fccdf_157e_40db_8702_848bfb75c079_SS2" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="mw61e9151f_eb11_4ec4_89ee_3abff528e7a3_SS2" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="mw61fc5e2b_a2f0_48e0_932d_d8cae7c04c26_SS1" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="mw63c8c74c_e420_4859_bc9d_f3cd3b410fed_SS2" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="mw6600ba7f_5b6d_4e5d_89a2_4d798f44476d_SS2" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="mw662fff41_e987_4afc_a587_e68c159d727c_SS2" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="mw6729d170_4447_449b_9e97_0908b0caab6b_SS2" COPASIkey="Metabolite_108"/>
    <SBMLMap SBMLid="mw672e4b6a_34a1_4d9f_8b84_dc9d39af0453_SS2" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="mw68ff84bd_5ee7_416e_8ada_d4f9bad9d42b_SS2" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="mw6a52a681_b8b0_446c_a757_b22fbc312241_SS2" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="mw6a8ec7cf_9ce3_4f43_a91b_8cf54a67e9cb_SS2" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="mw6b40acd5_0395_4c2b_a5d8_eae734923797_SS2" COPASIkey="Metabolite_112"/>
    <SBMLMap SBMLid="mw6e9de745_2658_493a_86b8_d825837432c9" COPASIkey="Event_6"/>
    <SBMLMap SBMLid="mw6f4a87f4_3466_4884_b88c_642b912e202f_SS2" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="mw6fb7f787_57b9_494d_a431_121e3ccbcda9_SS2" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="mw722ec4ac_80c5_4501_a092_98560b5118e5_SS1" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="mw7416e86a_aa61_4745_b4bc_072c5e137891_SS2" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="mw773fc4b1_f808_4bf3_85ad_07ce9b454369_SS1" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="mw7ad9678a_3fe9_40fc_843b_1f49e071adf1_SS2" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="mw7d29a1c1_af88_4806_a677_0ff5ed99d36d_SS1" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="mw7d42552a_2eb5_4d3e_9a91_c978c2293ae0_SS2" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="mw7da17532_fa9d_4ff2_8436_cb08e7696382_SS2" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="mw7df5af94_e685_46a1_beee_1ac0a9c4a9b7_SS1" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="mw7e686ddd_072e_4ab7_8512_92481d978201_SS2" COPASIkey="Metabolite_110"/>
    <SBMLMap SBMLid="mw7ee44b56_392b_44bf_9f64_65be6c0343c2_SS1" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="mw8025e3c3_09ab_48c9_8537_6e61bcd29c5f_SS1" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="mw808ed454_cf22_4658_8b50_9e7938af39f6_SS1" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="mw83ae4da6_9284_42ad_964e_3155416186c7" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="mw8486db3d_08d8_4c71_a449_c98a2309d0c0_SS2" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="mw84c3bc07_76f7_4c44_a07f_2bc8abfa4bc2_SS2" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="mw87bea200_227d_4010_9616_9bee4d30458b_SS2" COPASIkey="Metabolite_102"/>
    <SBMLMap SBMLid="mw886cdd23_9cc1_4a2c_988e_4e7847ce9edb_SS2" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="mw88722339_572e_456f_85da_875cfc4e92bc_SS2" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="mw93caaec5_11f1_4f31_ab8f_aff6bbb0d5dc_SS2" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="mw969018c5_d898_4ea0_bb80_35de71266464_SS2" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="mw96c464c0_18c2_4178_82dd_e41acc33fb34_SS2" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="mw97df6501_7bfc_4165_945f_baf68c2be0e8_SS2" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="mw9b7e5a40_78d9_4ae0_8175_8c704b3e5e15_SS2" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="mw9c2e00f3_d345_4af1_918d_b211abb46cda_SS1" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="mw9c8debee_f20e_46af_adcb_7bf420e4dea2_SS1" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="mw9fa51c7f_e24a_43d0_a99c_9a123f64c696_SS2" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="mwa029c0f1_d85f_44ba_a505_84310ebae4b0_SS2" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="mwa1246a57_cc2a_492f_a329_0d7575269aac_SS2" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="mwa1f4ef50_1840_44c6_b67d_a4e5a1a3c6fd_SS2" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="mwa28f59ba_7f2e_49a2_979b_4a26d5a45d5f_SS2" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="mwaa070dd1_2fdb_4813_8e3e_0e4755cfbdd6_SS2" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="mwab45a163_e2fe_4937_b582_ccdec790dcb5_SS2" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="mwb0019472_5c22_4b20_9ba8_5b184acbdc4b_SS1" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="mwb06ed782_368d_4da8_84b0_d1f9a6cfabfd_SS2" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="mwb668d480_993b_469d_8925_7393c33b0558_SS1" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="mwb71129fd_b0dc_41ce_a833_e547a1c07b4f_SS2" COPASIkey="Metabolite_98"/>
    <SBMLMap SBMLid="mwb7a568a8_418c_4172_aae2_974d59a9300a_SS2" COPASIkey="Reaction_144"/>
    <SBMLMap SBMLid="mwb80aa33f_0e67_4823_8723_f9c93b9cfacd_SS1" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="mwb85b8fb2_3c0b_4472_aaef_b45b3f328d17_SS1" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="mwb8e6b1d7_6c72_4a9b_a640_24ba06276629_SS2" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="mwb9ed4bd5_8cd9_4f48_9f51_256760be89c7_SS1" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="mwbd81f83f_4a97_4d53_b31d_ece9ad1375d6_SS2" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="mwbd8bbca4_ad12_4dd6_80fc_656686d30456_SS1" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="mwc00961a6_47d1_4f5a_9c49_00fb0d02cd8a_SS2" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="mwc200e475_c73f_465a_8de3_97b93a64c967_SS2" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="mwc2ce705a_11c4_429d_a1e9_4163d818c21e_SS2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="mwc34d382a_d7ec_4899_9d7c_b16f4e2c4783_SS1" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="mwc743b64f_a6a6_493c_8445_a454771ea4b8_SS1" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="mwc77fda0b_ed7c_4043_b4e8_7db21fa3ea74_SS1" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="mwc81c8682_5085_488d_b949_d8b342a4bd66_SS2" COPASIkey="Reaction_147"/>
    <SBMLMap SBMLid="mwcb7850c8_3801_4d30_9282_42269ca72cc2_SS2" COPASIkey="Metabolite_100"/>
    <SBMLMap SBMLid="mwcba69707_7d63_4853_bdc3_d04b7d068da7_SS1" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="mwcbd6bcc3_2c61_4e12_a6f7_e1ac7bc57188_SS2" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="mwcd3b81cf_3a79_46e8_8b86_b4ff4ce2eebe_SS2" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="mwd1f72a45_72cd_40ec_960f_1239c4292778_SS2" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="mwd2561193_1367_4f4f_b059_18f9b02de6a1_SS2" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="mwd4771b8c_b1d7_4c13_997f_683e301a502a_SS1" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="mwd6c5bf43_5a9f_455e_8341_73d1b30d0264_SS2" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="mwd7ab1eef_1416_40d7_a256_da7b194a4b64_SS1" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="mwd88172cc_70fa_4226_a3b4_de8ced26a0bb_SS1" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="mwd91c4e55_95af_42a7_ac6d_2c307d96e1fe_SS2" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="mwd9c0dae9_2cc7_4fa3_8036_3a7c9a202cb7" COPASIkey="Event_7"/>
    <SBMLMap SBMLid="mwd9e27d2b_0794_4f96_b217_610230786396_SS1" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="mwdad3b651_3698_4347_a3af_13c2fd1cd4eb_SS1" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="mwdb801a58_028d_43ff_90eb_830d15b4bc7f_SS2" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="mwdba62f7f_eedb_4972_bd0f_2056dfa80482_SS2" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="mwdd72ac09_0203_423a_a52d_0f5873e2fabd_SS1" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="mwde89bce9_6b96_41b5_ab10_47fdb6f84323_SS2" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="mwdf2c0f1e_af7c_4b62_9d47_6cc4f9f42a01_SS1" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="mwe03e3eea_a713_4196_a6d8_44a14c926596_SS2" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="mwe07c9a9d_6c42_4bf2_b230_0d74190adf43_SS2" COPASIkey="Reaction_148"/>
    <SBMLMap SBMLid="mwe1a34348_ddac_4a4e_be5b_0895f8905865_SS1" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="mwe24cd258_a7e7_40f5_833d_c3d41e0ef046_SS2" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="mwe4c90670_b834_4436_a2a3_a0cade5efa4f_SS2" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="mwe75db1d4_7d1f_4ac9_94fb_4ec0ae693fcf_SS2" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="mwe9e8bed5_b0c6_4b78_88d2_06babe473757_SS1" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="mweb04477f_13a4_4d28_8518_06b1c5bae4de_SS2" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="mwecbf84a6_a947_4d45_ab03_ff2e84d9393e_SS2" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="mwecef8e3a_4d8c_4f45_87ff_436093b9076f_SS1" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="mwee1494a3_9573_4d5d_89b8_02246c41395c_SS2" COPASIkey="Reaction_145"/>
    <SBMLMap SBMLid="mwf056a433_e0f6_461e_bfe3_c2b3c62486ca_SS2" COPASIkey="Metabolite_104"/>
    <SBMLMap SBMLid="mwf0fa4e98_5b94_43bf_9fd1_16e075a088f9_SS2" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="mwf1bae5f6_117f_478f_bafa_33e07e694fc4_SS1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="mwf36a5d62_cdc5_4e90_af35_a9fa5ddb33e2_SS2" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="mwfab17263_0776_4af5_82cc_4b5f841b645f_SS2" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="mwfdef4d20_4109_463d_b082_b17425eea08c_SS2" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="mwff1cec63_4a3e_4cb5_8e16_57bef83e3ddf_SS2" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="mwff98d8db_9eb8_4b79_8b38_e7e04bbc7217_SS2" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="r1_" COPASIkey="Reaction_149"/>
    <SBMLMap SBMLid="r2_" COPASIkey="Reaction_150"/>
    <SBMLMap SBMLid="xxIPTG_protein_alHL_" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="xxprotein_alHL_combined" COPASIkey="Metabolite_117"/>
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
