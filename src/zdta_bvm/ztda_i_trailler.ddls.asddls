@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Car'
@Metadata.allowExtensions: true
define root view entity ZTDA_I_Trailler
  as select from ztda_a_car as Car
  association [0..*] to ZTDA_i_trip            as _Trip        on $projection.ID = _Trip.TraillerID
  association [0..*] to ZTDA_I_BRAND           as _Brand       on $projection.BrandID = _Brand.ID  
  association [0..1] to ZTDA_I_SH_TECHNIC_TYPE as _TechTypeSH  on $projection.TechnicType = _TechTypeSH.Low
  association [0..1] to ZTDA_I_SH_BODY_TYPE    as _BodyTypeSH  on $projection.BodyType = _BodyTypeSH.Low
  association [0..1] to ZTDA_I_SH_car_STATUS   as _CarStatusSH on $projection.TraillerStatus = _CarStatusSH.Low
  association [0..1] to ZTDA_I_SH_COLOR        as _ColorSH     on $projection.Color = _ColorSH.Low

{
      @Semantics.uuid: true
  key uuid                as UUID,
      id                  as ID,
      brand_id            as BrandID,
      _Brand.BrandName    as BrandName,
      @Semantics.imageUrl: true
      _Brand.Imgurl       as ImgURL,
      model               as Model,
      color               as Color,
      _ColorSH.Text       as ColorName,      
      yer_creation        as YerCreation,
      technic_type        as TechnicType,
      body_type           as BodyType,
      date_registration   as DateRegistration,
      body_number         as BodyNumber,
      reg_number          as RegNumber,
      consumption         as Consumption,
      capacity            as Capacity,
      axes_number         as AxesNumber,
      car_status          as TraillerStatus,
      case car_status
      when '1' then 3   // application accepted
      when '2' then 2   // in progress
      when '3' then 1   // delivered
      when '4' then 1   // not delivered
      else 0
      end                  as Criticality,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed    as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed        as LastChanged,

      _Trip,
      _Brand,      
      _TechTypeSH,
      _BodyTypeSH,
      _CarStatusSH,
      _ColorSH

}

where technic_type = '3'
