CLASS ztda_cl_generate_book DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_GENERATE_BOOK IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-book.   " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_book.                                 " Имя таблицы БД в словаре
    DATA lo_guid    TYPE REF TO if_system_uuid.
*   fill internal travel table (itab)

    itab = VALUE #(
( cust_id = '500000208' beg_date = '20220302' beg_time = '08060439' end_date = '20220302' end_time = '17000512' manag_id = '400000897' weight_deliv = '' book_status = '3' )
( cust_id = '500000209' beg_date = '20220428' beg_time = '09415648' end_date = '' end_time = '' manag_id = '400000805' weight_deliv = '' book_status = '1' )
( cust_id = '500000210' beg_date = '20220226' beg_time = '09051394' end_date = '20220226' end_time = '16555846' manag_id = '400000897' weight_deliv = '' book_status = '5' )
( cust_id = '500000211' beg_date = '20220314' beg_time = '09171895' end_date = '' end_time = '' manag_id = '400000805' weight_deliv = '' book_status = '2' )
( cust_id = '500000212' beg_date = '20220729' beg_time = '07034226' end_date = '20220730' end_time = '16365889' manag_id = '400000897' weight_deliv = '' book_status = '3' )
( cust_id = '500000213' beg_date = '20220120' beg_time = '07391331' end_date = '' end_time = '' manag_id = '400000805' weight_deliv = '' book_status = '6' )
    ).

    LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs_line>).
    DATA lv_id TYPE cl_numberrange_runtime=>nr_number.
    get_nr( EXPORTING tabname   = lc_tabname
            importing client    = <fs_line>-client
                      uuid      = <fs_line>-uuid
                      nr_number = lv_id ).
    <fs_line>-id = lv_id.
    ENDLOOP.
*   delete existing entries in the database table

    DELETE FROM (lc_tabname).

*   insert the new table entries
    INSERT (lc_tabname) FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } booking entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
