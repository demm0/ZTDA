@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Employee'
@Metadata.allowExtensions: true
define root view entity ZTDA_I_EMPL
  as select from ztda_a_empl as Employee
  association [0..*] to ZTDA_I_BOOK as _Booking  on $projection.ID = _Booking.ManagID
  association [0..*] to ZTDA_i_trip as _Trip     on $projection.ID = _Trip.DriverID
  association [0..1] to ZTDA_I_POS  as _Position on $projection.PositionID = _Position.ID
  //  association [0..*] to ZTDA_I_ADDR_POOL as _Address  on $projection.AddressID = _Address.ID
  association [0..1] to ZTDA_I_ADDR as _Address  on $projection.AddressID = _Address.ID
{
      @Semantics.uuid: true
  key uuid              as UUID,
      id                as ID,
      address_id        as AddressID,
      pos_id            as PositionID,
      _Position.PosName as PositionName,
      @Semantics.dateTime: true
      birth_date        as BirthDate,
      @Semantics.dateTime: true
      beg_date          as BegDate,
      @Semantics.dateTime: true
      end_date          as EndDate,
      @Semantics.name.fullName: true
      surname           as Surname,
      @Semantics.name.familyName: true
      name              as Name,
      @Semantics.name.fullName: true
      patronyc_name     as PatronycName,
      //      @Semantics.imageUrl: true
      //      imgurl            as ImgURL,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed  as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed      as LastChanged,

      _Booking,
      _Trip,
      _Position,
      _Address
}
