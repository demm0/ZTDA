CLASS ztda_cl_generate DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS get_nr IMPORTING tabname   TYPE tabname
                                   quantity  TYPE cl_numberrange_runtime=>nr_quantity DEFAULT 00000000000000000001
                         EXPORTING client    TYPE mandt
                                   nr_number TYPE cl_numberrange_runtime=>nr_number
                                   uuid      TYPE sysuuid_x16.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztda_cl_generate IMPLEMENTATION.


  METHOD get_nr.
    DATA nr_range_nr TYPE cl_numberrange_runtime=>nr_interval .
    DATA lo_guid    TYPE REF TO if_system_uuid.

    " Client
    client = sy-mandt.

    CASE tabname.
      WHEN ztda_cl_constants=>tabname-book  . nr_range_nr = ztda_cl_constants=>nr_interval-book  .
      WHEN ztda_cl_constants=>tabname-trip  . nr_range_nr = ztda_cl_constants=>nr_interval-trip  .
      WHEN ztda_cl_constants=>tabname-car   . nr_range_nr = ztda_cl_constants=>nr_interval-car   .
      WHEN ztda_cl_constants=>tabname-empl  . nr_range_nr = ztda_cl_constants=>nr_interval-empl  .
      WHEN ztda_cl_constants=>tabname-cust  . nr_range_nr = ztda_cl_constants=>nr_interval-cust  .
      WHEN ztda_cl_constants=>tabname-bank  . nr_range_nr = ztda_cl_constants=>nr_interval-bank  .
      WHEN ztda_cl_constants=>tabname-addr  . nr_range_nr = ztda_cl_constants=>nr_interval-addr  .
      WHEN ztda_cl_constants=>tabname-matnr . nr_range_nr = ztda_cl_constants=>nr_interval-matnr .
      WHEN ztda_cl_constants=>tabname-brand . nr_range_nr = ztda_cl_constants=>nr_interval-brand .
      WHEN ztda_cl_constants=>tabname-pos   . nr_range_nr = ztda_cl_constants=>nr_interval-pos   .
    ENDCASE.

    " ID
    TRY.
        CALL METHOD cl_numberrange_runtime=>number_get "// generating number
          EXPORTING
            nr_range_nr   = nr_range_nr
            object        = ztda_cl_constants=>numbrange-object "//object name
            quantity      = quantity
          IMPORTING
            number        = nr_number.
        SHIFT nr_number LEFT DELETING LEADING '0'.
      CATCH cx_nr_object_not_found.
      CATCH cx_number_ranges.
    ENDTRY.

    " UUID
    TRY.
        lo_guid = cl_uuid_factory=>create_system_uuid( ).
        uuid = lo_guid->create_uuid_x16( ).
      CATCH cx_uuid_error.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
