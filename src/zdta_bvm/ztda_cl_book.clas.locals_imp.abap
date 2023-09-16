CLASS lhc_booking DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_global_authorizations_book FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Booking
      RESULT result.

    " Booking
    METHODS calc_default_data_book  	FOR DETERMINE ON SAVE IMPORTING   keys FOR Booking~calc_default_data.
    METHODS calc_status_book        	FOR DETERMINE ON SAVE IMPORTING   keys FOR Booking~calc_status.
    METHODS calc_weight              	FOR DETERMINE ON MODIFY IMPORTING keys FOR Booking~calc_Weight.

    METHODS validate_customer       	FOR VALIDATE ON SAVE IMPORTING keys FOR Booking~validate_Customer.
    METHODS validate_manager        	FOR VALIDATE ON SAVE IMPORTING keys FOR Booking~validate_Manager.
*    METHODS validate_dates_book     	FOR VALIDATE ON SAVE IMPORTING keys FOR Booking~validate_Dates.

    METHODS End_Book                 	FOR MODIFY IMPORTING keys FOR ACTION Booking~EndBook RESULT result.
    METHODS get_instance_features_book  FOR INSTANCE FEATURES IMPORTING keys REQUEST requested_features FOR Booking RESULT result.

    " Trip
    METHODS calc_default_data_trip  	FOR DETERMINE ON SAVE IMPORTING   keys FOR Trip~calc_default_data.
    METHODS calc_status_trip        	FOR DETERMINE ON MODIFY IMPORTING keys FOR Trip~calc_status.

    METHODS validate_Car            	FOR VALIDATE ON SAVE IMPORTING keys FOR Trip~validate_Car.
    METHODS validate_Trailler       	FOR VALIDATE ON SAVE IMPORTING keys FOR Trip~validate_Trailler.
    METHODS validate_Driver         	FOR VALIDATE ON SAVE IMPORTING keys FOR Trip~validate_Driver.
*    METHODS validate_Address        	FOR VALIDATE ON SAVE IMPORTING keys FOR Trip~validate_Address.
    METHODS validate_Material       	FOR VALIDATE ON SAVE IMPORTING keys FOR Trip~validate_Material.
*    METHODS validate_dates_trip     	FOR VALIDATE ON SAVE IMPORTING keys FOR Trip~validate_Dates.

    METHODS End_Trip                 	FOR MODIFY IMPORTING keys FOR ACTION Trip~EndTrip RESULT result.
    METHODS get_instance_features_trip  FOR INSTANCE FEATURES IMPORTING keys REQUEST requested_features FOR Trip RESULT result.
    METHODS get_global_authorizations   FOR GLOBAL AUTHORIZATION IMPORTING REQUEST requested_authorizations FOR trip RESULT result.
ENDCLASS.




CLASS lhc_booking IMPLEMENTATION.
  METHOD get_global_authorizations_book.
  ENDMETHOD.

  METHOD calc_default_data_book.
    DATA lv_id   TYPE cl_numberrange_runtime=>nr_number.
    DATA: mapped TYPE RESPONSE FOR MAPPED ztda_i_book.

    READ ENTITIES OF ztda_i_book
              IN LOCAL MODE ENTITY Booking
              FIELDS ( uuid id )
              WITH CORRESPONDING #( keys )
              RESULT DATA(Create_table).

    LOOP AT Create_table ASSIGNING FIELD-SYMBOL(<New_Record>).

      ztda_cl_generate=>get_nr( EXPORTING tabname   = ztda_cl_constants=>tabname-book
                                IMPORTING nr_number = lv_id ).
      SHIFT lv_id LEFT DELETING LEADING '0'.
      <New_Record>-id      		= lv_id.
      <New_Record>-BegDate      = cl_abap_context_info=>get_system_date( ).
      <New_Record>-BegTime 		= cl_abap_context_info=>get_system_time( ).
      <New_Record>-BookStatus   = ztda_cl_constants=>status-book-new.

    ENDLOOP.

    MODIFY ENTITIES OF ztda_i_book
        IN LOCAL MODE
        ENTITY Booking
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

  METHOD calc_weight.
  ENDMETHOD.

  METHOD calc_status_book.
**    DATA lv_status TYPE ztda_de_book_status.
**    READ ENTITIES OF ztda_i_book
**              IN LOCAL MODE ENTITY Booking
**              FIELDS ( BookStatus )
**              WITH CORRESPONDING #( keys )
**              RESULT DATA(lt_Booking).
**
**    "update involved instances
**    MODIFY ENTITIES OF ztda_i_book
**              IN LOCAL MODE
**              ENTITY Booking
**              UPDATE FIELDS ( BookStatus )
**              WITH VALUE #( FOR ls_Booking IN lt_Booking INDEX INTO i (
**                           %key    = ls_Booking-%key
**                           BookStatus = lv_status ) )
**    REPORTED DATA(lt_reported).
  ENDMETHOD.


  METHOD validate_customer.
    READ ENTITIES OF ztda_i_book
              IN LOCAL MODE ENTITY Booking
              FIELDS ( CustID )
              WITH CORRESPONDING #( keys )
              RESULT DATA(lt_Booking).

    DATA lt_customer TYPE SORTED TABLE OF ztda_a_cust WITH UNIQUE KEY uuid.
    " Optimization of DB select: extract distinct non-initial customer IDs
    lt_customer = CORRESPONDING #( lt_booking DISCARDING DUPLICATES MAPPING id = CustID EXCEPT * ).
    DELETE lt_customer WHERE id IS INITIAL.
    CHECK lt_customer IS NOT INITIAL.

    " Check if customer ID exist
    SELECT FROM ztda_a_cust FIELDS id
      FOR ALL ENTRIES IN @lt_customer
      WHERE id = @lt_customer-id
      INTO TABLE @DATA(lt_customer_db).

    " Raise msg for non existing customer id
    LOOP AT lt_booking INTO DATA(ls_booking).
      IF ls_booking-CustID IS NOT INITIAL
        AND NOT line_exists( lt_customer_db[ id = ls_booking-custid ] ).
        APPEND VALUE #(  %key = ls_booking-%key ) TO failed-booking.
        APPEND VALUE #(  %key = ls_booking-%key
                         %msg = new_message( id       = ztda_cl_constants=>msgid
                                             number   = ztda_cl_constants=>msgno-no_006
                                             v1       = ls_booking-custid
                                             v2       = ztda_cl_constants=>tabname-cust
                                             severity = if_abap_behv_message=>severity-error )
                         %element-custid = if_abap_behv=>mk-on ) TO reported-booking.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.


  METHOD validate_manager.
    READ ENTITIES OF ztda_i_book
              IN LOCAL MODE ENTITY Booking
              FIELDS ( ManagID )
              WITH CORRESPONDING #( keys )
              RESULT DATA(lt_Booking).

    DATA lt_manager TYPE SORTED TABLE OF ztda_a_empl WITH UNIQUE KEY uuid.
    " Optimization of DB select: extract distinct non-initial manager IDs
    lt_manager = CORRESPONDING #( lt_booking DISCARDING DUPLICATES MAPPING id = ManagID EXCEPT * ).
    DELETE lt_manager WHERE id IS INITIAL.
    CHECK lt_manager IS NOT INITIAL.

    " Check if manager ID exist
    SELECT FROM ztda_a_empl FIELDS id
      FOR ALL ENTRIES IN @lt_manager
      WHERE id      = @lt_manager-id
        AND pos_id  = @ztda_cl_constants=>positions-manager
      INTO TABLE @DATA(lt_manager_db).

    " Raise msg for non existing manager id
    LOOP AT lt_booking INTO DATA(ls_booking).
      IF ls_booking-ManagID IS NOT INITIAL
        AND NOT line_exists( lt_manager_db[ id = ls_booking-Managid ] ).
        APPEND VALUE #(  %key = ls_booking-%key ) TO failed-booking.
        APPEND VALUE #(  %key = ls_booking-%key
                         %msg = new_message( id       = ztda_cl_constants=>msgid
                                             number   = ztda_cl_constants=>msgno-no_007
                                             v1       = ls_booking-Managid
                                             severity = if_abap_behv_message=>severity-error )
                         %element-Managid = if_abap_behv=>mk-on ) TO reported-booking.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

*  METHOD validate_dates_book.
*    READ ENTITIES OF ztda_i_book
*              IN LOCAL MODE ENTITY Booking
*              FIELDS ( CustID )
*              WITH CORRESPONDING #( keys )
*              RESULT DATA(lt_Booking).
*
*    LOOP AT lt_Booking INTO DATA(ls_booking).
*
*      IF    ls_booking-enddate < ls_booking-begdate                                      "end_date before begin_date
*        AND ls_booking-enddate IS NOT INITIAL.
*        APPEND VALUE #( %key             = ls_booking-%key ) TO failed-booking.
*        APPEND VALUE #( %key             = ls_booking-%key
*                        %msg             = new_message( id       = ztda_cl_constants=>msgid
*                                                        number   = ztda_cl_constants=>msgno-no_008
*                                                        v1       = ls_booking-begdate
*                                                        v2       = ls_booking-enddate
*                                                        v3       = ls_booking-id
*                                                        severity = if_abap_behv_message=>severity-error )
*                        %element-begdate = if_abap_behv=>mk-on
*                        %element-enddate = if_abap_behv=>mk-on ) TO reported-booking.
*
*      ELSEIF ls_booking-begdate > cl_abap_context_info=>get_system_date( )              "begin_date must be in the future
*         AND ls_booking-begdate IS NOT INITIAL.
*        APPEND VALUE #( %key             = ls_booking-%key ) TO failed-booking.
*        APPEND VALUE #( %key             = ls_booking-%key
*                        %msg             = new_message( id       = ztda_cl_constants=>msgid
*                                                        number   = ztda_cl_constants=>msgno-no_009
*                                                        severity = if_abap_behv_message=>severity-error )
*                        %element-begdate = if_abap_behv=>mk-on
*                        %element-enddate = if_abap_behv=>mk-on ) TO reported-booking.
*      ENDIF.
*    ENDLOOP.
*  ENDMETHOD.



  METHOD End_Book.
    " Modify in local mode: BO-related updates that are not relevant for authorization checks
    MODIFY ENTITIES OF ztda_i_book
          IN LOCAL MODE
          ENTITY Booking
          UPDATE FROM VALUE #( FOR key IN keys ( %key = key-%key
                                                 %control-BookStatus = if_abap_behv=>mk-on ) )
          FAILED   failed
          REPORTED reported.

    " Read changed data for action result
    READ ENTITIES OF ztda_i_book IN LOCAL MODE
         ENTITY Booking
         FROM VALUE #( FOR key IN keys ( %key = key-%key
                                          %control = VALUE #(
      								BegDate        = if_abap_behv=>mk-on
      								BegTime        = if_abap_behv=>mk-on
      								EndDate        = if_abap_behv=>mk-on
      								EndTime        = if_abap_behv=>mk-on
      								CustID         = if_abap_behv=>mk-on
      								ManagID        = if_abap_behv=>mk-on
      								WeightDeliv    = if_abap_behv=>mk-on
      								BookStatus     = if_abap_behv=>mk-on
      								LocLastChanged = if_abap_behv=>mk-on
      								LastChanged    = if_abap_behv=>mk-on ) ) )
         RESULT DATA(lt_booking).

    DATA lv_status TYPE ztda_de_book_status.
    DATA lv_weight TYPE ztda_de_weight.

    LOOP AT lt_booking ASSIGNING FIELD-SYMBOL(<ls_booking>).
      SELECT tripstatus, weight
        FROM ztda_i_trip
        WHERE bookuuid = @<ls_booking>-uuid
        INTO TABLE  @DATA(lt_status).
      LOOP AT lt_status INTO DATA(ls_rtip) WHERE Weight IS NOT INITIAL.
        lv_weight = ls_rtip-Weight.
      ENDLOOP.

      IF lt_status IS NOT INITIAL AND lv_weight IS NOT INITIAL .
        READ TABLE lt_status INTO ls_rtip WITH KEY TripStatus = ztda_cl_constants=>status-trip-canc.
        IF sy-subrc NE 0.
          READ TABLE lt_status INTO ls_rtip WITH KEY TripStatus = ztda_cl_constants=>status-trip-ndeliv.
          IF sy-subrc NE 0.
            LOOP AT lt_status TRANSPORTING NO FIELDS WHERE TripStatus NE ztda_cl_constants=>status-trip-deliv.
            ENDLOOP.
            IF sy-subrc EQ 0.
              lv_status = ztda_cl_constants=>status-book-deliv.
            ELSE.
              APPEND VALUE #(  %key = <ls_booking>-%key ) TO failed-booking.
              APPEND VALUE #(  %key = <ls_booking>-%key
                               %msg = new_message( id       = ztda_cl_constants=>msgid
                                                   number   = ztda_cl_constants=>msgno-no_010
                                                   severity = if_abap_behv_message=>severity-error )
                               %element-Managid = if_abap_behv=>mk-on ) TO reported-booking.
            ENDIF.
          ELSE.
            lv_status = ztda_cl_constants=>status-book-ndeliv.
          ENDIF.
        ELSE.
          lv_status = ztda_cl_constants=>status-book-canc.
        ENDIF.
      ELSEIF lt_status IS NOT INITIAL.
        lv_status = ztda_cl_constants=>status-book-canc.
      ELSE.
        lv_status = ztda_cl_constants=>status-book-ndeliv.
      ENDIF.
    ENDLOOP.

    "update involved instances
    MODIFY ENTITIES OF ztda_i_book
              IN LOCAL MODE
              ENTITY Booking
              UPDATE FIELDS ( EndDate )
              WITH VALUE #( FOR ls_Booking IN lt_Booking INDEX INTO i (
                           %key    = ls_Booking-%key
                           EndDate = cl_abap_context_info=>get_system_date( ) ) )
    REPORTED DATA(lt_reported).

    "update involved instances
    MODIFY ENTITIES OF ztda_i_book
              IN LOCAL MODE
              ENTITY Booking
              UPDATE FIELDS ( EndTime )
              WITH VALUE #( FOR ls_Booking IN lt_Booking INDEX INTO i (
                           %key    = ls_Booking-%key
                           EndTime = cl_abap_context_info=>get_system_time( )  ) )
    REPORTED lt_reported.

    "update involved instances
    MODIFY ENTITIES OF ztda_i_book
              IN LOCAL MODE
              ENTITY Booking
              UPDATE FIELDS ( WeightDeliv )
              WITH VALUE #( FOR ls_Booking IN lt_Booking INDEX INTO i (
                           %key    = ls_Booking-%key
                           WeightDeliv = lv_weight ) )
    REPORTED lt_reported.

    "update involved instances
    MODIFY ENTITIES OF ztda_i_book
              IN LOCAL MODE
              ENTITY Booking
              UPDATE FIELDS ( BookStatus )
              WITH VALUE #( FOR ls_Booking IN lt_Booking INDEX INTO i (
                           %key    = ls_Booking-%key
                           BookStatus = lv_status ) )
    REPORTED lt_reported.

    result = VALUE #( FOR booking IN lt_booking ( %key   = booking-%key
                                                  %param = booking  ) ).

  ENDMETHOD.

  METHOD get_instance_features_book.
  ENDMETHOD.



  METHOD calc_default_data_trip.
  ENDMETHOD.

  METHOD calc_status_trip.
  ENDMETHOD.

  METHOD end_trip.
  ENDMETHOD.

  METHOD get_instance_features_trip.
  ENDMETHOD.

*  METHOD validate_address.
*  ENDMETHOD.

  METHOD validate_car.
  ENDMETHOD.

*  METHOD validate_dates_trip.
*  ENDMETHOD.

  METHOD validate_driver.
  ENDMETHOD.

  METHOD validate_material.
  ENDMETHOD.

  METHOD validate_trailler.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.
