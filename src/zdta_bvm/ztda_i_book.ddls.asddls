@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED Booking'
define root view entity ZTDA_I_BOOK
  as select from ztda_a_book as Booking
  composition [0..*] of ZTDA_i_trip               as _Trip
  association [0..*] to ZTDA_I_EMPL               as _Employee     on $projection.ManagID = _Employee.ID
  association [0..*] to ZTDA_I_CUST               as _Customer     on $projection.CustID = _Customer.ID
  association [0..*] to ztda_i_SH_delivery_status as _BookStatusSH on $projection.BookStatus = _BookStatusSH.Low

{
      @Semantics.uuid: true
  key uuid                 as UUID,
      id                   as ID,
      @Semantics.dateTime: true
      beg_date             as BegDate,
      @Semantics.dateTime: true
      beg_time             as BegTime,
      @Semantics.dateTime: true
      end_date             as EndDate,
      @Semantics.dateTime: true
      end_time             as EndTime,
      cust_id              as CustID,
      _Customer.CustName   as CustName,
      manag_id             as ManagID,
      concat_with_space(_Employee.Surname,
                        concat(concat(substring( _Employee.Name, 1, 1), '.'),
                               concat(substring( _Employee.PatronycName, 1, 1), '.')),
                        1) as ManagName,
      weight_deliv         as WeightDeliv,
      book_status          as BookStatus,
      case book_status
      when '1' then 0   // accepted
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

      _Trip,
      _Employee,
      _Customer,
      _BookStatusSH
}
