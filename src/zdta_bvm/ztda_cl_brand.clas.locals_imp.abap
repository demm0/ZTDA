CLASS lhc_brand DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR Brand
        RESULT result,

      calc_default_data FOR DETERMINE ON SAVE
        IMPORTING keys FOR Brand~calc_default_data.
ENDCLASS.



CLASS lhc_brand IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.


  METHOD calc_default_data.
    DATA lv_id   TYPE cl_numberrange_runtime=>nr_number.
    DATA: mapped TYPE RESPONSE FOR MAPPED ztda_i_brand.

    READ ENTITIES OF ztda_i_brand
              IN LOCAL MODE ENTITY Brand
              FIELDS ( uuid id )
              WITH CORRESPONDING #( keys )
              RESULT DATA(Create_table).

    LOOP AT Create_table ASSIGNING FIELD-SYMBOL(<New_Record>).

      ztda_cl_generate=>get_nr( EXPORTING tabname   = ztda_cl_constants=>tabname-brand
                                IMPORTING nr_number = lv_id ).
      SHIFT lv_id LEFT DELETING LEADING '0'.
      <New_Record>-id = lv_id.

    ENDLOOP.

    MODIFY ENTITIES OF ztda_i_brand
        IN LOCAL MODE
        ENTITY Brand
        UPDATE FROM VALUE #(
        FOR New_Record IN Create_table INDEX INTO i (
          %tky          = New_Record-%tky
          %data         = New_Record-%data
          %control-id   = if_abap_behv=>mk-on
          ) )
        MAPPED mapped
        FAILED DATA(failed_create)
        REPORTED DATA(reported_create).

    reported = CORRESPONDING #( DEEP reported_create ).

  ENDMETHOD.

ENDCLASS.
