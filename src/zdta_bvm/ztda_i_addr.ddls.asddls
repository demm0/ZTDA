@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Address'
@Metadata.allowExtensions: true
define root view entity ZTDA_I_ADDR
  as select from ztda_a_addr as Address
//  association        to parent ZTDA_I_ADDR_POOL as _AddressPool on $projection.AddrPoolUUID = _AddressPool.UUID
//  association [0..*] to ZTDA_i_trip             as _Trip        on $projection.ID = _Trip.AddressID
  association [0..*] to ZTDA_I_EMPL             as _Employee    on $projection.ID = _Employee.AddressID
  association [0..1] to ZTDA_I_CUST             as _Customer    on $projection.ID = _Customer.AddrID
  association [0..1] to ZTDA_I_BANK             as _Bank        on $projection.ID = _Bank.AddrID
  association [0..1] to I_Country               as _Country     on $projection.CountryCode = _Country.Country
{
      @Semantics.uuid: true
  key uuid             as UUID,
      @Semantics.uuid: true
      addr_pool_uuid   as AddrPoolUUID,
      id               as ID,
//      _AddressPool.ID  as AddressPoolID,
      @Semantics.address.zipCode: true
      post_code        as PostCode,
      @Semantics.address.country: true
      country_code     as CountryCode,
      @Semantics.address.region: true
      region           as Region,
      @Semantics.address.city: true
      city             as City,
      @Semantics.address.street: true
      street           as Street,
      @Semantics.address.number: true
      building         as Building,
      @Semantics.address.number: true
      block            as Block,
      @Semantics.address.number: true
      apartment        as Apartment,
      phone            as Phone,
      @Semantics.eMail.address: true
      email            as Email,
      gps_pos          as GPSPos,
      distance         as Distance,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed     as LastChanged,

//      _AddressPool,
//      _Trip,
      _Employee,
      _Customer,
      _Bank,
      _Country

}
