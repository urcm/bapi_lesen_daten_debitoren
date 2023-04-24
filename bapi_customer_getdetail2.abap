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
      

call function 'BAPI_CUSTOMER_GETDETAIL2'
  exporting
    customerno            = lv_customerno    " Customer
*   companycode           =     " Company code
  importing
    customeraddress       = lv_customeraddress    " Address Data
    customergeneraldetail = lv_customergeneraldetail    " General data
    customercompanydetail = lv_customercompanydetail    " Company code-specific data
    return                = gt_return    " Return code
  tables
    customerbankdetail    = gt_customerbankdetail   " Bank data
    customeribandetail    = gt_customeribandetail
    customersepadetail    = gt_customersepadetail.
    
    
cl_demo_output=>write_data( lv_customerno ).
cl_demo_output=>write_data( lv_customeraddress ).
cl_demo_output=>write_data( lv_customergeneraldetail ).
cl_demo_output=>write_data( lv_customercompanydetail ).
cl_demo_output=>write_data( gt_return ).
cl_demo_output=>write_data( gt_customerbankdetail ).
cl_demo_output=>write_data( gt_customeribandetail ).
cl_demo_output=>write_data( gt_customersepadetail ).
cl_demo_output=>display(  ).

