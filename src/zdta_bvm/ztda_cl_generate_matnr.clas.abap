CLASS ztda_cl_generate_matnr DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_GENERATE_MATNR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-matnr.   " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_matnr.                                 " Имя таблицы БД в словаре
    DATA lo_guid    TYPE REF TO if_system_uuid.

*   fill internal travel table (itab)
    itab = VALUE #(
( ARTICUL = '80001265' MATNR_NAME = 'Лукойл 10w40 (дизельное)' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '11.09' )
( ARTICUL = '81009368' MATNR_NAME = 'М-8ДМ' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '3.33' )
( ARTICUL = '81009418' MATNR_NAME = 'И-30А' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '3.60' )
( ARTICUL = '80001372' MATNR_NAME = 'ТМ3-18К' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '3.16' )
( ARTICUL = '80000001' MATNR_NAME = 'ТАП-15В' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '4.20' )
( ARTICUL = '80001978' MATNR_NAME = 'ТСп-15к GL-3' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '4.40' )
( ARTICUL = '80001446' MATNR_NAME = 'МГЕ гидр 46В' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '2.53' )
( ARTICUL = '80001535' MATNR_NAME = 'гидр Лукойл ВМГЗ' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '18.39' )
( ARTICUL = '80000888' MATNR_NAME = 'гидр Лукойл Гейзер 46 СТ' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '0.51' )
( ARTICUL = '81009288' MATNR_NAME = 'М10ДМ' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '2.54' )
( ARTICUL = '80002932' MATNR_NAME = 'И-20А ТНК' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '1.95' )
( ARTICUL = '80001518' MATNR_NAME = 'Mannol TDI 5W30' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '1.85' )
( ARTICUL = '32Н' MATNR_NAME = 'Металлом бытовой' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '1.50' )
( ARTICUL = 'ЛБ-1-1' MATNR_NAME = 'Бытовой лом алюминия чистого (нелегированного)' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '2.39' )
( ARTICUL = 'ЛБ-1-1а' MATNR_NAME = 'Бытовой лом алюминия и сплавов на его основе' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '1.59' )
( ARTICUL = 'ЛБ-1-2' MATNR_NAME = 'Бытовой лом алюминия и сплавов на его основе кроме сортов 1 и 1а' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '13.05' )
( ARTICUL = 'ЛБ-1-3' MATNR_NAME = 'Бытовой лом алюминия и сплавов на его основе низкокачественный' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '8.69' )
( ARTICUL = 'ЛБ-2-1' MATNR_NAME = 'Бытовой лом магния и сплавов на его основе' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '10.18' )
( ARTICUL = 'ЛБ-6-1' MATNR_NAME = 'Бытовой лом цинка и сплавов на его основе' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '10.54' )
( ARTICUL = 'ЛБ-3-1' MATNR_NAME = 'Бытовой лом меди' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '5.98' )
( ARTICUL = 'ЛБ-3-2' MATNR_NAME = 'Бытовой лом латуни' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '27.94' )
( ARTICUL = 'ЛБ-3-3' MATNR_NAME = 'Бытовой лом бронзы' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '13.95' )
( ARTICUL = 'ЛБ-3-4' MATNR_NAME = 'Бытовой лом меди не засоренный другими металлами и сплавами, не соответствующий техническим требованиям сорта 1' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '3.00' )
( ARTICUL = 'ЛБ-3-5' MATNR_NAME = 'Бытовой лом медьсодержащий (медь, латунь бронза) низкокачественный' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '11.50' )
( ARTICUL = 'ЛБ-4-1' MATNR_NAME = 'Бытовой лом никеля, сплавов на его основе и медно-никелевых сплавов' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '12.39' )
( ARTICUL = 'ЛБ-4-2' MATNR_NAME = 'Бытовой лом никеля , сплавов на его основе и медно-никелевых сплавов  низкокачественный, кроме сорта 1' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '11.59' )
( ARTICUL = 'ЛБ-5-1' MATNR_NAME = 'Бытовой лом  свинца,  олова и сплавов на их основе' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '13.05' )
( ARTICUL = 'ЛБ-7-1' MATNR_NAME = 'Бытовой лом отработанных свинцовых АКБ не разделанных' MATNR_TYPE = '3' OKEI = 'KG' currency_code = 'BYR' price = '8.69' )
( ARTICUL = 'АИ-92' MATNR_NAME = 'Бензин АИ-92' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '2.73' )
( ARTICUL = 'АИ-95' MATNR_NAME = 'Бензин АИ-95' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '2.36' )
( ARTICUL = 'АИ-98' MATNR_NAME = 'Бензин АИ-98' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '2.46' )
( ARTICUL = 'ГАЗ' MATNR_NAME = 'Газ' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '2.68' )
( ARTICUL = 'ДТ' MATNR_NAME = 'Дизельное топливо' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '2.46' )
( ARTICUL = 'ДТ ECO' MATNR_NAME = 'Дизельное топливо (Экологичное)' MATNR_TYPE = '2' OKEI = 'L' currency_code = 'BYR' price = '1.31' )
    ).

    " Get Client, ID, UUID
    LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs_line>).
    DATA lv_id TYPE cl_numberrange_runtime=>nr_number.
    get_nr( EXPORTING tabname   = lc_tabname
            importing client    = <fs_line>-client
                      nr_number = lv_id
                      uuid      = <fs_line>-uuid ).
    <fs_line>-id = lv_id.
    ENDLOOP.

*   delete existing entries in the database table
    DELETE FROM (lc_tabname).

*   insert the new table entries
    INSERT (lc_tabname) FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
