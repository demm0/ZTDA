@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZTDA_I_BANK'
@Search.searchable: true
define root view entity ZTDA_C_BANK
  provider contract transactional_query
  as projection on ZTDA_I_BANK
{
  key     UUID,
          @EndUserText.label: 'Bank ID'
          ID,
          @EndUserText.label: 'Bank Name'
          BankName,
          @Search.defaultSearchElement: true
          @Consumption.valueHelpDefinition: [{ entity : { name: 'ZTDA_I_ADDR', element: 'ID'} } ]
          @EndUserText.label: 'Address ID'
          AddrID,
          @EndUserText.label: ''
          @Semantics.imageUrl: true
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZTDA_CL_VE_IMAGEURL'
          ImgURL,
//  virtual ImgUrl : abap.string( 256 ),
          LocLastChanged,

          _Customer,
          _Address
}
