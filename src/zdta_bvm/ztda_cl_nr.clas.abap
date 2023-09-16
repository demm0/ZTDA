CLASS ztda_cl_nr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_NR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS: lc_app_from   TYPE c LENGTH 8 VALUE '00000000',    "//Add number to interval_from
               lc_app_to     TYPE c LENGTH 8 VALUE '99999999',    "//Add number to interval_to
               lc_quant_int  TYPE i VALUE 1.                      "//Quantity of additional interval to NR object

    DATA : l_interval      TYPE c LENGTH 2,
           l_interval_from TYPE ztda_de_car_id,
           l_interval_to   TYPE ztda_de_car_id.

    DATA : nr_attribute  TYPE cl_numberrange_objects=>nr_attribute,
           obj_text      TYPE cl_numberrange_objects=>nr_obj_text,
           lv_returncode TYPE cl_numberrange_objects=>nr_returncode,
           lv_errors     TYPE cl_numberrange_objects=>nr_errors,
           nr_interval   TYPE cl_numberrange_intervals=>nr_interval,
           st_interval   LIKE LINE OF nr_interval,
           ls_interval   LIKE LINE OF nr_interval,
           nr_number     TYPE cl_numberrange_runtime=>nr_number,
           nr_interval1  TYPE cl_numberrange_runtime=>nr_interval,
           error         TYPE cl_numberrange_intervals=>nr_error,
           error_inf     TYPE cl_numberrange_intervals=>nr_error_inf,
           error_iv      TYPE cl_numberrange_intervals=>nr_error_iv,
           warning       TYPE cl_numberrange_intervals=>nr_warning.

    TRY.
        cl_numberrange_intervals=>read( EXPORTING object = ztda_cl_constants=>numbrange-object IMPORTING interval = nr_interval ).
      CATCH cx_number_ranges INTO DATA(lx_number_range).
    ENDTRY.
    SORT nr_interval BY nrrangenr DESCENDING.
    ls_interval-nrrangenr = 0.
    READ TABLE nr_interval INDEX 1 INTO ls_interval.
*    out->write( nr_interval ).

    nr_attribute-buffer     = abap_true.
    nr_attribute-object     = ztda_cl_constants=>numbrange-object .     " object name
    nr_attribute-domlen     = ztda_cl_constants=>numbrange-domain.      " domain to be used eg char 10
    nr_attribute-percentage = ztda_cl_constants=>numbrange-percentage.  " Worning percentage of interval NR object
    nr_attribute-devclass   = ztda_cl_constants=>numbrange-devclass.    " Class where number range actually gets created

    obj_text-langu    = ztda_cl_constants=>numbrange-lang.              " Language of NR object
    obj_text-object   = ztda_cl_constants=>numbrange-object .           " object name
    obj_text-txt      = 'Number Range object'.                          " long description
    obj_text-txtshort = 'Number Range'.                                 " vshort description

    DO lc_quant_int TIMES.
      CLEAR : st_interval,
              l_interval,
              l_interval_from,
              l_interval_to.

      l_interval = sy-index + ls_interval-nrrangenr.

      if l_interval > ztda_cl_constants=>numbrange-max_interval.
        out->write( 'ERROR! The maximum interval number has been exceeded!' ).
        RETURN.
      ENDIF.

      IF strlen( l_interval ) = 1.
        CONCATENATE '0' l_interval INTO l_interval.
      ENDIF.

      l_interval_from =  l_interval && lc_app_from.
      l_interval_to   =  l_interval && lc_app_to.

      st_interval-subobject  = ''.
      st_interval-nrrangenr  = l_interval.          " number range interval
      st_interval-fromnumber = l_interval_from.     " starting number
      st_interval-tonumber   = l_interval_to.       " ending number
      st_interval-procind    = 'I'.
      APPEND st_interval TO nr_interval.
    ENDDO.

    TRY.
        cl_numberrange_objects=>create(             " method to create object
        EXPORTING
            attributes                = nr_attribute
            obj_text                  = obj_text
        IMPORTING
            errors     = lv_errors
            returncode = lv_returncode ).
      CATCH cx_number_ranges INTO lx_number_range.
    ENDTRY.

    TRY.
        CALL METHOD cl_numberrange_intervals=>create " method to create interval
          EXPORTING
            interval  = nr_interval
            object    = ztda_cl_constants=>numbrange-object
            subobject = ''
          IMPORTING
            error     = error
            error_inf = error_inf
            error_iv  = error_iv.
      CATCH  cx_nr_object_not_found INTO DATA(lx_no_obj_found).
      CATCH cx_number_ranges INTO DATA(cx_number_ranges).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
