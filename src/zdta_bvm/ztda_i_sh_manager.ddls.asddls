@AbapCatalog.sqlViewName: 'ZTDA_CDS_SHMANAG'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Domain fixed value help'

define view ZTDA_I_SH_MANAGER
  as select from ZTDA_I_EMPL as SH_MANAGER
{
    key UUID,
        ID,
        AddressID,
        PositionID,
        PositionName,
        BirthDate,
        BegDate,
        EndDate,
        Surname,
        Name,
        PatronycName,
        LocLastChanged,
        LastChanged,
        
        /* Associations */
        _Address,
        _Booking,
        _Position,
        _Trip
}

    where PositionID = '1000000041'
      and BegDate    > EndDate
