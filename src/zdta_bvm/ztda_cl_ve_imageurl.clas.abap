CLASS ztda_cl_ve_imageurl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_VE_IMAGEURL IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.

    DATA Bank TYPE STANDARD TABLE OF ztda_c_bank WITH DEFAULT KEY.
    Bank = CORRESPONDING #( it_original_data ).

    LOOP AT Bank ASSIGNING FIELD-SYMBOL(<Bank>).
      <Bank>-ImgURL = 'https://i7.pngguru.com/preview/423/632/57/computer-icons-purchase-order-order-fulfillment-purchasing-order-icon.jpg'.
    ENDLOOP.

    ct_calculated_data = CORRESPONDING #( Bank ).
  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.
ENDCLASS.
