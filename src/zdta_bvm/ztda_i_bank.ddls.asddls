@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Bank'
@Metadata.allowExtensions: true
define root view entity ZTDA_I_BANK
  as select from ztda_a_bank as Bank
  association [0..*] to ZTDA_I_CUST      as _Customer on $projection.ID = _Customer.BankID
//  association [0..*] to ZTDA_I_ADDR_POOL as _Address  on $projection.AddrID = _Address.ID
    association [0..1] to ZTDA_I_ADDR as _Address  on $projection.AddrID = _Address.ID
{
      @Semantics.uuid: true
  key uuid             as UUID,
      id               as ID,
      bank_name        as BankName,
      addr_id          as AddrID,
      @Semantics.imageUrl: true      
      imgurl           as ImgURL,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed     as LastChanged,

      _Customer,
      _Address

}
