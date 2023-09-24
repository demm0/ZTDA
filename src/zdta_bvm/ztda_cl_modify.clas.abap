CLASS ztda_cl_modify DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS ztda_cl_modify IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-empl.   " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_empl.                                 " Имя таблицы БД в словаре

*   fill internal travel table (itab)
    SELECT *
    FROM (lc_tabname)
    INTO TABLE @itab.
    CHECK sy-subrc = 0.

    LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs_line>).
      IF  <fs_line>-end_date = ''.     <fs_line>-end_date = '99991231'.  ENDIF.
*      IF  <fs_line>-end_time = 000000. <fs_line>-end_time = '235959'.    ENDIF.
    ENDLOOP.

*   modify the new table entries
    MODIFY (lc_tabname) FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } records modifed successfully!| ).
  ENDMETHOD.
ENDCLASS.
