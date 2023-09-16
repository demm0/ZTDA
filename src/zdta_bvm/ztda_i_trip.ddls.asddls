@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Trip'
define view entity ZTDA_i_trip
  as select from ztda_a_trip as Trip

  association        to parent ZTDA_I_BOOK        as _Booking      on $projection.BookUUID = _Booking.UUID
  association [0..*] to ZTDA_I_CAR                as _Car          on $projection.CarID = _Car.ID
  association [0..*] to ZTDA_I_Trailler           as _Trailler     on $projection.TraillerID = _Trailler.ID
  association [0..*] to ZTDA_I_EMPL               as _Employee     on $projection.DriverID = _Employee.ID
  association [0..*] to ZTDA_I_MATNR              as _Material     on $projection.MaterialID = _Material.ID
//  association [0..*] to ZTDA_I_ADDR_POOL          as _Address      on $projection.AddressID = _Address.ID
//  association [0..*] to ZTDA_I_ADDR               as _Address      on $projection.AddressID = _Address.ID
  association [0..1] to ztda_i_SH_delivery_status as _TripStatusSH on $projection.TripStatus = _TripStatusSH.Low
{
      @Semantics.uuid: true
  key uuid                 as UUID,
      @Semantics.uuid: true
      book_uuid            as BookUUID,
      trip_id              as TripID,
      trip_number          as TripNumber,
      beg_date             as BegDate,
      beg_time             as BegTime,
      end_date             as EndDate,
      end_time             as EndTime,
      material_id          as MaterialID,
      _Material.MatnrName  as MaterialName,
      weight               as Weight,
//      addr_id              as AddressID,
      driver_id            as DriverID,
      concat_with_space(_Employee.Surname,
                        concat(concat(substring( _Employee.Name, 1, 1), '.'),
                               concat(substring( _Employee.PatronycName, 1, 1), '.')),
                        1) as DriverName,
      car_id               as CarID,
      trailler_id          as TraillerID,
      trip_status          as TripStatus,
      case trip_status
      when '1' then 0   // application accepted
      when '2' then 0   // in progress
      when '3' then 3   // delivered
      when '4' then 1   // not delivered
      when '5' then 1   // order cancelled
      when '6' then 2   // delayed
      else 0
      end                  as Criticality,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      loc_last_changed     as LocLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed         as LastChanged,

      _Booking,
      _Car,
      _Trailler,
      _Employee,
      _Material,
//      _Address,
      _TripStatusSH

}
