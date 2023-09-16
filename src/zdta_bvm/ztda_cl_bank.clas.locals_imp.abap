CLASS lhc_bank DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR Bank
        RESULT result,
      calc_default_data FOR DETERMINE ON SAVE
        IMPORTING keys FOR Bank~calc_default_data,
      get_instance_features FOR INSTANCE FEATURES
        IMPORTING keys REQUEST requested_features FOR Bank RESULT result.

    METHODS change_imgurl FOR MODIFY
      IMPORTING keys FOR ACTION Bank~change_imgurl RESULT result.

ENDCLASS.

CLASS lhc_bank IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.
  METHOD calc_default_data.
    DATA lv_id   TYPE cl_numberrange_runtime=>nr_number.
    DATA: mapped TYPE RESPONSE FOR MAPPED ztda_i_bank.

    READ ENTITIES OF ztda_i_bank
              IN LOCAL MODE ENTITY bank
              FIELDS ( uuid id )
              WITH CORRESPONDING #( keys )
              RESULT DATA(Create_table).

    LOOP AT Create_table ASSIGNING FIELD-SYMBOL(<New_Record>).

      ztda_cl_generate=>get_nr( EXPORTING tabname   = ztda_cl_constants=>tabname-bank
                                IMPORTING nr_number = lv_id ).
      SHIFT lv_id LEFT DELETING LEADING '0'.
      <New_Record>-id = lv_id.

    ENDLOOP.

    MODIFY ENTITIES OF ztda_i_bank
        IN LOCAL MODE
        ENTITY bank
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

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD change_imgurl.

    READ ENTITIES OF ztda_i_bank
              IN LOCAL MODE ENTITY bank
              FIELDS ( uuid )
              WITH CORRESPONDING #( keys )
              RESULT DATA(Table).

    LOOP AT Table ASSIGNING FIELD-SYMBOL(<Record>).


    ENDLOOP.

    MODIFY ENTITIES OF ztda_i_bank
        IN LOCAL MODE
        ENTITY bank
        UPDATE FROM VALUE #(
        FOR Line IN Table INDEX INTO i (
          %tky          = Line-%tky
          ImgURL        = Line-ImgURL
          %control-id   = if_abap_behv=>mk-on
          ) )
        MAPPED mapped
        FAILED DATA(failed_create)
        REPORTED DATA(reported_create).

    reported = CORRESPONDING #( DEEP reported_create ).

  ENDMETHOD.

ENDCLASS.
