@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Brand'
define root view entity ZTDA_I_BRAND
  as select from ztda_a_brand as Brand
  association [0..*] to ZTDA_I_MATNR    as _Material on $projection.ID = _Material.BrandID
  association [0..*] to ZTDA_I_CAR      as _Car      on $projection.ID = _Car.BrandID
  association [0..*] to ZTDA_I_Trailler as _Trailler on $projection.ID = _Trailler.BrandID
{
      @Semantics.uuid: true
  key uuid             as UUID,
      id               as ID,
      brand_name       as BrandName,
      @Semantics.uuid: true      
      imgurl           as Imgurl,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed     as LastChanged,
      
      _Material,
      _Car,
      _Trailler

}
