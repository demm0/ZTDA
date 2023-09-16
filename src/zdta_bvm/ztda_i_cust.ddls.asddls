@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Customer'
@Metadata.allowExtensions: true
define root view entity ZTDA_I_CUST
  as select from ztda_a_cust as Customer
  association [0..*] to ZTDA_I_BOOK as _Booking on $projection.ID = _Booking.CustID
  association [0..*] to ZTDA_I_BANK as _Bank    on $projection.BankID = _Bank.ID
  //  association [0..*] to ZTDA_I_ADDR_POOL as _Address on $projection.AddrID = _Address.ID
  association [0..*] to ZTDA_I_ADDR as _Address on $projection.AddrID = _Address.ID
{
      @Semantics.uuid: true
  key uuid             as UUID,
      id               as ID,
      inn              as Inn,
      kpp              as Kpp,
      addr_id          as AddrID,
      bank_id          as BankID,
      _Bank.BankName   as BankName,
      acc              as Acc,
      cust_name        as CustName,
//      @Semantics.imageUrl: true 
//      imgurl           as ImgURL,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed     as LastChanged,

      _Booking,
      _Bank,
      _Address

}
