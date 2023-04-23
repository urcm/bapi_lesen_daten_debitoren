*  bapi_customer_getdetail2
* importing value(customerno)  type kunnr
*  value(companycode)  type bukrs optional
* exporting value(customeraddress)  type bapicustomer_04
*  value(customergeneraldetail)  type bapicustomer_kna1
*  value(customercompanydetail)  type bapicustomer_05
*  value(return)  type bapiret1
* tables customerbankdetail  type standard table of bapicustomer_02 with header line optional
*  customeribandetail  type standard table of bapicustomer_03 with header line optional
*  customersepadetail  type standard table of bapicustomer_06 with header line optional
*
*
*Documentation
*
*Customer Detail Information
*
*Longtext Documentation  Longtext Documentation
*
*Parameters
*
*
*importing  customerno   Customer
*importing  companycode   Company code
*exporting  customeraddress   Address Data
*exporting  customergeneraldetail   General data
*exporting  customercompanydetail   Company code-specific data
*exporting  return   Return code
*tables


data: lv_customerno            type kunnr value '0000000045',
      lv_customeraddress       type bapicustomer_04,
      lv_customergeneraldetail type bapicustomer_kna1,
      lv_customercompanydetail type bapicustomer_05,
      gt_return                type bapiret1.
      
data: gt_customerbankdetail type standard table of bapicustomer_02,
      gt_customeribandetail type standard table of bapicustomer_03,
      gt_customersepadetail type standard table of bapicustomer_06.

