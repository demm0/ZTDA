@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_CUST'
@Search.searchable: true
define root view entity ZTDA_C_CUST
  provider contract transactional_query
  as projection on ZTDA_I_CUST
{
  key UUID,
      @EndUserText.label: 'Customer ID'
      ID,
      @EndUserText.label: 'INN'
      Inn,
      @EndUserText.label: 'KPP'
      Kpp,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_ADDR', element: 'ID'} } ]
      @EndUserText.label: 'Address ID'
      AddrID,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_BANK', element: 'ID'} } ]
      @EndUserText.label: 'Bank ID'
      BankID,
      @EndUserText.label: 'Bank Name'
      BankName,
      @EndUserText.label: 'Accounting'
      Acc,
      @EndUserText.label: 'Customer Name'
      CustName,
//      ImgURL,
      LocLastChanged,

      _Booking,
      _Bank,
      _Address

}
