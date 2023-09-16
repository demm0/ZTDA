@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Position'
@Metadata.allowExtensions: true
define root view entity ZTDA_I_POS
  as select from ztda_a_pos as Position
  association [0..*] to ZTDA_I_EMPL as _Employee on $projection.ID = _Employee.PositionID
{
      @Semantics.uuid: true
  key uuid             as UUID,
      id               as ID,
      pos_name         as PosName,
      currency_code    as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      salary           as Salary,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed     as LastChanged,

      _Employee

}
