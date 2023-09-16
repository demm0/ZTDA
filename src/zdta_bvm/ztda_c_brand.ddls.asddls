@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_BRAND'
define root view entity ZTDA_C_BRAND
  provider contract transactional_query
  as projection on ZTDA_I_BRAND
{
  key     UUID,
          @EndUserText.label: 'Brand ID'
          ID,
          @EndUserText.label: 'Brand Name'
          BrandName,
          Imgurl,
//  virtual ImgUrl : abap.string( 256 ),
          LocLastChanged,

          _Material,
          _Car,
          _Trailler

}
