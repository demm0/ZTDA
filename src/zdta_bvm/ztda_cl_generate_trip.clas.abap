CLASS ztda_cl_generate_trip DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztda_cl_generate_trip IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-trip.   " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_trip.                                 " Имя таблицы БД в словаре
    DATA lo_guid    TYPE REF TO if_system_uuid.
*   fill internal travel table (itab)

    itab = VALUE #(
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47BD4A3' TRIP_number = '1' beg_date = '20220302' beg_time = '08060439' end_date = '20220302' end_time = '09251611' material_id = '800000108' weight = '11400' driver_id = '400000771' car_id = '300001078' trailler_id
= '' addr_id = '700002398' trip_status = '1' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47BD4A3' TRIP_number = '2' beg_date = '20220302' beg_time = '10341239' end_date = '20220302' end_time = '14121515' material_id = '800000108' weight = '11400' driver_id = '400000771' car_id = '300001078' trailler_id
= '' addr_id = '700002398' trip_status = '2' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47BD4A3' TRIP_number = '3' beg_date = '20220302' beg_time = '16315253' end_date = '20220302' end_time = '17000512' material_id = '800000108' weight = '10500' driver_id = '400000771' car_id = '300001078' trailler_id
= '' addr_id = '700002398' trip_status = '3' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47BF4A3' TRIP_number = '1' beg_date = '20220428' beg_time = '09415648' end_date = '20220428' end_time = '11172589' material_id = '800000111' weight = '16500' driver_id = '400000772' car_id = '300001081' trailler_id
= '' addr_id = '700002399' trip_status = '4' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47BF4A3' TRIP_number = '2' beg_date = '20220428' beg_time = '14006731' end_date = '20220428' end_time = '15000515' material_id = '800000111' weight = '16500' driver_id = '400000772' car_id = '300001081' trailler_id
= '' addr_id = '700002399' trip_status = '5' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47BF4A3' TRIP_number = '3' beg_date = '20220428' beg_time = '15042941' end_date = '' end_time = '' material_id = '800000111' weight = '' driver_id = '400000772' car_id = '300001081' trailler_id = '' addr_id =
'700002399' trip_status = '6' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C14A3' TRIP_number = '1' beg_date = '20220226' beg_time = '09051394' end_date = '20220226' end_time = '13155865' material_id = '800000114' weight = '14500' driver_id = '400000773' car_id = '300001084' trailler_id
= '' addr_id = '700002400' trip_status = '1' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C14A3' TRIP_number = '2' beg_date = '20220226' beg_time = '15451167' end_date = '20220226' end_time = '16555846' material_id = '800000114' weight = '25600' driver_id = '400000774' car_id = '300001092' trailler_id
= '300000917' addr_id = '700002400' trip_status = '2' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C34A3' TRIP_number = '1' beg_date = '20220314' beg_time = '09171895' end_date = '20220314' end_time = '12545556' material_id = '800000116' weight = '11400' driver_id = '400000775' car_id = '300001088' trailler_id
= '' addr_id = '700002401' trip_status = '3' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C34A3' TRIP_number = '2' beg_date = '20220314' beg_time = '16015253' end_date = '' end_time = '' material_id = '800000116' weight = '' driver_id = '400000775' car_id = '300001089' trailler_id = '' addr_id =
'700002401' trip_status = '4' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C54A3' TRIP_number = '1' beg_date = '20220729' beg_time = '07034226' end_date = '20220729' end_time = '09000505' material_id = '800000118' weight = '14000' driver_id = '400000776' car_id = '300001091' trailler_id
= '300000918' addr_id = '700002402' trip_status = '5' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C54A3' TRIP_number = '2' beg_date = '20220729' beg_time = '09273897' end_date = '20220729' end_time = '13285636' material_id = '800000118' weight = '8650' driver_id = '400000781' car_id = '300001081' trailler_id
= '' addr_id = '700002402' trip_status = '6' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C54A3' TRIP_number = '3' beg_date = '20220730' beg_time = '14431281' end_date = '20220730' end_time = '16365889' material_id = '800000118' weight = '8650' driver_id = '400000781' car_id = '300001082' trailler_id
= '' addr_id = '700002402' trip_status = '1' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C74A3' TRIP_number = '1' beg_date = '20220120' beg_time = '07391331' end_date = '20220120' end_time = '09122154' material_id = '800000121' weight = '11400' driver_id = '400000777' car_id = '300001083' trailler_id
= '' addr_id = '700002403' trip_status = '4' )
( BOOK_UUID = 'DEF285E354281EDE8D8C2AD6F47C74A3' TRIP_number = '2' beg_date = '20220120' beg_time = '09335588' end_date = '' end_time = '' material_id = '800000121' weight = '' driver_id = '400000778' car_id = '300001084' trailler_id = '' addr_id =
'700002403' trip_status = '5' )

    ).

    LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs_line>).
    DATA lv_id TYPE cl_numberrange_runtime=>nr_number.
    get_nr( EXPORTING tabname   = lc_tabname
            importing client    = <fs_line>-client
                      uuid      = <fs_line>-uuid
                      nr_number = lv_id ).
    <fs_line>-trip_id = lv_id.
    ENDLOOP.
*   delete existing entries in the database table

    DELETE FROM (lc_tabname).

*   insert the new table entries
    INSERT (lc_tabname) FROM TABLE @itab.
*    MODIFY (lc_tabname) FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } trip entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
