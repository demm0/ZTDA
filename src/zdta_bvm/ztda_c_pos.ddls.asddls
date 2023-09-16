@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_POS'
define root view entity ZTDA_C_POS
  provider contract transactional_query
  as projection on ZTDA_I_POS
{
  key UUID,
      @EndUserText.label: 'Position ID'
      ID,
      @EndUserText.label: 'Position Name'
      PosName,
      @EndUserText.label: 'Currency Code'
      CurrencyCode,
      @EndUserText.label: 'Salary'
      Salary,
      LocLastChanged,
      
      _Employee

}
