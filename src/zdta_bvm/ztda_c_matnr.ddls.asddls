@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_MATNR'
@Search.searchable: true
define root view entity ZTDA_C_MATNR
  provider contract transactional_query
  as projection on ZTDA_I_MATNR
{
  key     UUID,
          @EndUserText.label: 'Material ID'
          ID,
          @EndUserText.label: 'Articul'
          Articul,
          @Search.defaultSearchElement: true
          @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_BRAND', element: 'ID'} } ]
          @EndUserText.label: 'Brand ID'
          BrandID,
          @EndUserText.label: 'Brand Name'
          BrandName,
          ImgURL,
          //  virtual ImgUrl : abap.string( 256 ),
          @EndUserText.label: 'Material Name'
          MatnrName,
          @Search.defaultSearchElement: true
          @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_SH_MATERIAL_TYPE' , element: 'Low' }, distinctValues: true }]
          @UI.textArrangement: #TEXT_ONLY
          @EndUserText.label: 'Material Type'
          MatnrType,
          @EndUserText.label: 'OKEI'
          OKEI,
          @EndUserText.label: 'Currency Code'
          CurrencyCode,
          @EndUserText.label: 'Price'
          Price,
          LocLastChanged,

          _Trip,
          _Car,
          _Brand,
          _MatnrTypeSH

}
