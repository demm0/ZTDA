@AbapCatalog.sqlViewName: 'ZTDA_CDS_TCTYPE'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@EndUserText.label: 'Domain fixed value help'

define view ZTDA_I_SH_TECHNIC_TYPE
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZTDA_DM_TECHNIC_TYPE' ) as ValueFix
{
      @UI.hidden: true
  key ValueFix.domain_name    as DomainName,
      @UI.hidden: true
  key ValueFix.value_position as ValuePos,
      @UI.hidden: true
      @Semantics.language: true
  key ValueFix.language       as Language,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      ValueFix.value_low      as Low,
      @Semantics.text: true -- identifies the text field
      ValueFix.text           as Text
}

where
  ValueFix.language = $session.system_language
