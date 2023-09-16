@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_BOOK'
@Search.searchable: true
define root view entity ZTDA_C_BOOK
  provider contract transactional_query
  as projection on ZTDA_I_BOOK
{
  key UUID,
      @EndUserText.label: 'Booking ID'
      ID,
      @EndUserText.label: 'Begining date'
      BegDate,
      @EndUserText.label: 'Begining time'
      BegTime,
      @EndUserText.label: 'End date'
      EndDate,
      @EndUserText.label: 'End time'
      EndTime,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_CUST', element: 'ID'}, distinctValues: true }]
      @EndUserText.label: 'Customer ID'
      CustID,
      @EndUserText.label: 'Customer Name'
      CustName,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:  { name: 'ZTDA_I_SH_MANAGER', element: 'ID'}, distinctValues: true }]
      @EndUserText.label: 'Manager ID'
      ManagID,
      @EndUserText.label: 'Manager Name'
      ManagName,
      @EndUserText.label: 'Weight of delivery'
      WeightDeliv,
      @EndUserText.label: 'Status'
      @ObjectModel.text.element: ['_BookStatusSH.Text']
      @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_SH_DELIVERY_STATUS' , element: 'Low' }, distinctValues: true }]
      BookStatus,
      @EndUserText.label: 'Criticality'
      Criticality,
      LocLastChanged,

      _Trip : redirected to composition child ZTDA_C_TRIP,
      _Employee,
      _Customer,
      _BookStatusSH

}
