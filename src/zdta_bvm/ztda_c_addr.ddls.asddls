@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_ADDR'
@Search.searchable: true
define root view entity ZTDA_C_ADDR
    provider contract transactional_query
  as projection on ZTDA_I_ADDR
{
  key UUID,
      AddrPoolUUID,
      @EndUserText.label: 'Address ID'
      ID,
//      test
//      @EndUserText.label: 'Address Pool ID'
//      @Search.defaultSearchElement: true
//      @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_ADDR_POOL' , element: 'ID' }, distinctValues: true }]
//      AddressPoolID,
      @EndUserText.label: 'Post Code'
      PostCode,
      @EndUserText.label: 'Country Code'
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:  {name: 'I_COUNTRY' , element: 'Country' }, distinctValues: true }]
      CountryCode,
      @EndUserText.label: 'Region'
      Region,
      @EndUserText.label: 'City'
      City,
      @EndUserText.label: 'Street'
      Street,
      @EndUserText.label: 'Building'
      Building,
      @EndUserText.label: 'Block'
      Block,
      @EndUserText.label: 'Apartment'
      Apartment,
      @EndUserText.label: 'Phone'
      Phone,
      @EndUserText.label: 'Email'
      Email,
      @EndUserText.label: 'GPS Position'
      GPSPos,
      @EndUserText.label: 'Distance'
      Distance,
      LocLastChanged,

//      _AddressPool : redirected to parent ZTDA_C_ADDR_POOL,
//      _Trip,
      _Employee,
      _Customer,
      _Bank,
      _Country

}
