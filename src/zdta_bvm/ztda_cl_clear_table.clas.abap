CLASS ztda_cl_clear_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_CLEAR_TABLE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    " Booking
    DELETE FROM (ztda_cl_constants=>tabname-book).
    IF sy-subrc = 0.
      out->write( | clear DB table { ztda_cl_constants=>tabname-book }| ).
    ENDIF.
    " Trip
    DELETE FROM (ztda_cl_constants=>tabname-trip).
    IF sy-subrc = 0.
      out->write( | clear DB table { ztda_cl_constants=>tabname-trip }| ).
    ENDIF.
    " Address Pool
    DELETE FROM (ztda_cl_constants=>tabname-addrp).
    IF sy-subrc = 0.
      out->write( | clear DB table { ztda_cl_constants=>tabname-addrp }| ).
    ENDIF.
    " Address
    DELETE FROM (ztda_cl_constants=>tabname-addr).
    IF sy-subrc = 0.
      out->write( | clear DB table { ztda_cl_constants=>tabname-addr }| ).
    ENDIF.
    " Bank
    DELETE FROM (ztda_cl_constants=>tabname-bank).
    IF sy-subrc = 0.
      out->write( | clear DB table { ztda_cl_constants=>tabname-bank }| ).
    ENDIF.
*    " Car
*    DELETE FROM (ztda_cl_constants=>tabname-car).
*    IF sy-subrc = 0.
*      out->write( | clear DB table { ztda_cl_constants=>tabname-car }| ).
*    ENDIF.
    " Customer
    DELETE FROM (ztda_cl_constants=>tabname-cust).
    IF sy-subrc = 0.
      out->write( | clear DB table { ztda_cl_constants=>tabname-cust }| ).
    ENDIF.
    " Employee
    DELETE FROM (ztda_cl_constants=>tabname-empl).
    IF sy-subrc = 0.
      out->write( | clear DB table { ztda_cl_constants=>tabname-empl }| ).
    ENDIF.
*    " Material
*    DELETE FROM (ztda_cl_constants=>tabname-matnr).
*    IF sy-subrc = 0.
*      out->write( | clear DB table { ztda_cl_constants=>tabname-matnr }| ).
*    ENDIF.
*    " Position
*    DELETE FROM (ztda_cl_constants=>tabname-pos).
*    IF sy-subrc = 0.
*      out->write( | clear DB table { ztda_cl_constants=>tabname-pos }| ).
*    ENDIF.

  ENDMETHOD.
ENDCLASS.
