@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_EMPL'
@Search.searchable: true
define root view entity ZTDA_C_EMPL
  provider contract transactional_query
  as projection on ZTDA_I_EMPL
{
  key UUID,
  
      @EndUserText.label: 'Employee ID'
      ID,

      @Search.defaultSearchElement: true
      //      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_i_addr_pool', element: 'ID'} } ]
      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_i_addr', element: 'ID'} } ]
      @EndUserText.label: 'Address ID'
      AddressID,

      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_POS', element: 'ID'} } ]
      @EndUserText.label: 'Position ID'
      PositionID,

      @EndUserText.label: 'Position Name'
      PositionName,

      @EndUserText.label: 'Birth date'
      BirthDate,

      @EndUserText.label: 'Begining Date'
      BegDate,

      @EndUserText.label: 'End date'
      EndDate,

      @EndUserText.label: 'Surname'
      Surname,

      @EndUserText.label: 'Name'
      Name,

      @EndUserText.label: 'Patronic name'
      PatronycName,

      //      ImgURL,

      LocLastChanged,



      _Booking,
      _Trip,
      _Position,
      _Address

}
