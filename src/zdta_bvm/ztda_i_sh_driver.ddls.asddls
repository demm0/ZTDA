@AbapCatalog.sqlViewName: 'ZTDA_CDS_SHDRIVR'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Domain fixed value help'

define view ZTDA_I_SH_DRIVER
  as select from ZTDA_I_EMPL as SH_DRIVER
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

    where (   PositionID = '1000000046'
           or PositionID = '1000000047'
           or PositionID = '1000000048' )
      and BegDate > EndDate
