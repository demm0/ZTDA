@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_CAR'
@Search.searchable: true
define root view entity ZTDA_C_CAR
  provider contract transactional_query
  as projection on ZTDA_I_CAR
{
  key     UUID,
          @EndUserText.label: 'Car ID'
          ID,
          @Search.defaultSearchElement: true
          @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_BRAND', element: 'ID'} } ]
          @EndUserText.label: 'Brand ID'
          BrandID,
          @EndUserText.label: 'Brand Name'
          BrandName,
          ImgURL,
          //  virtual ImgUrl : abap.string( 256 ),
          @EndUserText.label: 'Model'
          Model,
          @Search.defaultSearchElement: true
          @EndUserText.label: 'Color'
          @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_SH_COLOR' , element: 'Low' }, distinctValues: true }]
          @UI.textArrangement: #TEXT_ONLY
          Color,
          @EndUserText.label: 'Color Name'
          ColorName,
          @EndUserText.label: 'Creation year'
          YerCreation,
          @Search.defaultSearchElement: true
          @EndUserText.label: 'Technic type'
          @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_SH_TECHNIC_TYPE' , element: 'Low' }, distinctValues: true }]
          @UI.textArrangement: #TEXT_ONLY
          TechnicType,
          @Search.defaultSearchElement: true
          @EndUserText.label: 'Body type'
          @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_SH_BODY_TYPE' , element: 'Low' }, distinctValues: true }]
          @UI.textArrangement: #TEXT_ONLY
          BodyType,
          @EndUserText.label: 'Reg. date'
          DateRegistration,
          @EndUserText.label: 'Body number'
          BodyNumber,
          @EndUserText.label: 'Reg. number'
          RegNumber,
          @EndUserText.label: 'Consumption'
          Consumption,
          @EndUserText.label: 'Capacity'
          Capacity,
          @EndUserText.label: 'Axes number'
          AxesNumber,
          @EndUserText.label: 'Tool of payment to road ID'
          PaytoolID,
          @Search.defaultSearchElement: true
          @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_MATNR', element: 'ID'} } ]
          @EndUserText.label: 'Fuel ID'
          Fuel,
          @EndUserText.label: 'Fuel Name'
          FuelName,
          @Search.defaultSearchElement: true
          @EndUserText.label: 'Car status'
          @Consumption.valueHelpDefinition: [{ entity:  {name: 'ZTDA_I_SH_CAR_STATUS' , element: 'Low' }, distinctValues: true }]
          @UI.textArrangement: #TEXT_ONLY
          CarStatus,
          @EndUserText.label: 'Criticality'
          Criticality,
          LocLastChanged,

          _Trip,
          _Material,
          _Brand,
          _TechTypeSH,
          _BodyTypeSH,
          _CarStatusSH,
          _ColorSH

}
