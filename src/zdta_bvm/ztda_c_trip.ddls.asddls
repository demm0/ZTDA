@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_TRIP'
@Search.searchable: true
define view entity ZTDA_C_TRIP
  as projection on ZTDA_i_trip
{
  key UUID,
      BookUUID,
      @EndUserText.label: 'Trip ID'
      TripID,
      @EndUserText.label: 'Trip No'
      TripNumber,
      @EndUserText.label: 'Begin date'
      BegDate,
      @EndUserText.label: 'Begin time'
      BegTime,
      @EndUserText.label: 'End date'
      EndDate,
      @EndUserText.label: 'End time'
      EndTime,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:  { name: 'ZTDA_I_MATNR', element: 'ID'}, distinctValues: true }]
      @EndUserText.label: 'Material ID'
      MaterialID,
      @EndUserText.label: 'Material Name'
      MaterialName,
      @EndUserText.label: 'Weight'
      Weight,
//      @Search.defaultSearchElement: true
//      @Consumption.valueHelpDefinition: [{ entity:  { name: 'ZTDA_I_ADDR', element: 'ID'}, distinctValues: true }]
//      @EndUserText.label: 'Address ID'
//      AddressID,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:  { name: 'ZTDA_I_SH_DRIVER', element: 'ID'}, distinctValues: true }]
      @EndUserText.label: 'Driver ID'
      DriverID,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:  { name: 'ZTDA_I_CAR', element: 'ID'}, distinctValues: true }]
      @EndUserText.label: 'Car ID'
      CarID,
      @EndUserText.label: 'Driver Name'
      DriverName,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:  { name: 'ZTDA_I_TRAILLER', element: 'ID'}, distinctValues: true }]
      @EndUserText.label: 'Trailler ID'
      TraillerID,
      @EndUserText.label: 'Status'
      @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_SH_DELIVERY_STATUS' , element: 'Text' }, distinctValues: true }]
      TripStatus,
      @EndUserText.label: 'Criticality'
      Criticality,
      LocLastChanged,

      _Booking : redirected to parent ZTDA_C_BOOK,
      _Car,
      _Trailler,
      _Employee,
      _Material,
//      _Address,
      _TripStatusSH
}
