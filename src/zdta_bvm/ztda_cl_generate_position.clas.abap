CLASS ztda_cl_generate_position DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_GENERATE_POSITION IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-pos.   " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_pos.                                   " Имя таблицы БД в словаре
    DATA lo_guid    TYPE REF TO if_system_uuid.

*   fill internal travel table (itab)
    itab = VALUE #(
( POS_NAME = 'Начальник цеха' CURRENCY_CODE = 'BYR' SALARY = '3500' )
( POS_NAME = 'Заместитель начальника цеха' CURRENCY_CODE = 'BYR' SALARY = '3200' )
( POS_NAME = 'Заместитель начальника цеха по заготовке' CURRENCY_CODE = 'BYR' SALARY = '3200' )
( POS_NAME = 'Заместитель начальника цеха по ремонту' CURRENCY_CODE = 'BYR' SALARY = '3200' )
( POS_NAME = 'Начальник участка' CURRENCY_CODE = 'BYR' SALARY = '3000' )
( POS_NAME = 'Экономист' CURRENCY_CODE = 'BYR' SALARY = '2800' )
( POS_NAME = 'Механик участка' CURRENCY_CODE = 'BYR' SALARY = '2500' )
( POS_NAME = 'Механик по ремонту транспорта' CURRENCY_CODE = 'BYR' SALARY = '2500' )
( POS_NAME = 'Мастер по ремонту оборудования' CURRENCY_CODE = 'BYR' SALARY = '2500' )
( POS_NAME = 'Мастер участка' CURRENCY_CODE = 'BYR' SALARY = '2500' )
( POS_NAME = 'Мастер' CURRENCY_CODE = 'BYR' SALARY = '2500' )
( POS_NAME = 'Инженер по заготовке' CURRENCY_CODE = 'BYR' SALARY = '2650' )
( POS_NAME = 'Диспетчер' CURRENCY_CODE = 'BYR' SALARY = '2200' )
( POS_NAME = 'Кладовщик' CURRENCY_CODE = 'BYR' SALARY = '1850' )
( POS_NAME = 'Весовщик' CURRENCY_CODE = 'BYR' SALARY = '1600' )
( POS_NAME = 'Сторож' CURRENCY_CODE = 'BYR' SALARY = '1450' )
( POS_NAME = 'Слесарь по ремонту автомобилей' CURRENCY_CODE = 'BYR' SALARY = '1900' )
( POS_NAME = 'Водитель автомобиля (легкового)' CURRENCY_CODE = 'BYR' SALARY = '2100' )
( POS_NAME = 'Водитель автомобиля (грузового)' CURRENCY_CODE = 'BYR' SALARY = '2300' )
( POS_NAME = 'Водитель автомобиля (автобуса)' CURRENCY_CODE = 'BYR' SALARY = '2600' )
( POS_NAME = 'Водитель погрузчика' CURRENCY_CODE = 'BYR' SALARY = '2600' )
( POS_NAME = 'Тракторист' CURRENCY_CODE = 'BYR' SALARY = '2200' )
( POS_NAME = 'Газорезчик' CURRENCY_CODE = 'BYR' SALARY = '2700' )
( POS_NAME = 'Маляр' CURRENCY_CODE = 'BYR' SALARY = '1880' )
( POS_NAME = 'Аккумуляторщик' CURRENCY_CODE = 'BYR' SALARY = '2200' )
( POS_NAME = 'Слесарь-электрогазосварщик' CURRENCY_CODE = 'BYR' SALARY = '2300' )
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
    out->write( |{ sy-dbcnt } position entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
