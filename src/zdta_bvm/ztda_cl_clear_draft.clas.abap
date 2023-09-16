CLASS ztda_cl_clear_draft DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_CLEAR_DRAFT IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    " Booking
    DELETE FROM (ztda_cl_constants=>tabname-book_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-book_d }| ).
    ENDIF.
    " Trip
    DELETE FROM (ztda_cl_constants=>tabname-trip_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-trip_d }| ).
    ENDIF.
    " Address Pool
    DELETE FROM (ztda_cl_constants=>tabname-brand_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-brand_d }| ).
    ENDIF.
    " Address
    DELETE FROM (ztda_cl_constants=>tabname-addr_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-addr_d }| ).
    ENDIF.
    " Bank
    DELETE FROM (ztda_cl_constants=>tabname-bank_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-bank_d }| ).
    ENDIF.
    " Car
    DELETE FROM (ztda_cl_constants=>tabname-car_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-car_d }| ).
    ENDIF.
    " Customer
    DELETE FROM (ztda_cl_constants=>tabname-cust_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-cust_d }| ).
    ENDIF.
    " Employee
    DELETE FROM (ztda_cl_constants=>tabname-empl_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-empl_d }| ).
    ENDIF.
    " Material
    DELETE FROM (ztda_cl_constants=>tabname-matnr_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-matnr_d }| ).
    ENDIF.
    " Position
    DELETE FROM (ztda_cl_constants=>tabname-pos_d).
    IF sy-subrc = 0.
      out->write( | clear DB table DRAFT { ztda_cl_constants=>tabname-pos_d }| ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
