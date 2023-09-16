@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Material'
@Metadata.allowExtensions: true
define root view entity ZTDA_I_MATNR
  as select from ztda_a_matnr as Material
  association [0..*] to ZTDA_i_trip             as _Trip        on $projection.ID = _Trip.MaterialID
  association [0..*] to ZTDA_I_CAR              as _Car         on $projection.ID = _Car.Fuel
  association [0..*] to ZTDA_I_BRAND            as _Brand       on $projection.BrandID = _Brand.ID
  association [0..1] to ZTDA_I_SH_MATERIAL_TYPE as _MatnrTypeSH on $projection.MatnrType = _MatnrTypeSH.Low
{
      @Semantics.uuid: true
  key uuid             as UUID,
      id               as ID,
      articul          as Articul,
      brand_id         as BrandID,
      _Brand.BrandName as BrandName,      
      @Semantics.imageUrl: true      
      _Brand.Imgurl    as ImgURL,      
      matnr_name       as MatnrName,
      matnr_type       as MatnrType,
      okei             as OKEI,
      currency_code    as CurrencyCode,
      price            as Price,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed     as LastChanged,

      _Trip,
      _Car,
      _Brand,
      _MatnrTypeSH

}
