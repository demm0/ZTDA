CLASS ztda_cl_generate_bank DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_GENERATE_BANK IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-bank.    " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_bank.                                  " Имя таблицы БД в словаре
    DATA lo_guid    TYPE REF TO if_system_uuid.
*   fill internal travel table (itab)

    itab = VALUE #(
*( bank_name = 'Главное управление Национального банка Республики Беларусь' addr_id = '700002384' )
*( bank_name = 'ОАО «Банк БелВЭБ»' addr_id = '700002385' )
*( bank_name = 'ЗАО «ОптиКурс» НКФО»' addr_id = '700002386' )
*( bank_name = 'ЗАО Банк ВТБ' addr_id = '700002387' )
*( bank_name = 'ЗАО «Цептер Банк' addr_id = '700002388' )
*( bank_name = 'ОАО "АСБ Беларусбанк"' addr_id = '700002389' )
*( bank_name = 'ЗАО "ТК Банк"' addr_id = '700002390' )
*( bank_name = 'ЗАО «Альфа-Банк»' addr_id = '700002391' )
*( bank_name = 'ЗАО «БСБ Банк»' addr_id = '700002392' )
*( bank_name = 'ОАО "Белгазпромбанк"' addr_id = '700002393' )
*( bank_name = 'ОАО «Дабрабыт»' addr_id = '700002394' )
*( bank_name = 'ОАО «РРБ Банк»' addr_id = '700002395' )
*( bank_name = 'ОАО «Технобанк»' addr_id = '700002396' )
*( bank_name = '"Белинвестбанк"' addr_id = '700002397' )

( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F253B4' ID = '600000104' bank_name = 'Главное управление Национального банка Республики Беларусь' addr_id = '700002384' imgurl =
'https://ramki.by/upload/iblock/4bf/4bfb27eeb2bbf628026aea33c0fd3f1e.png' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F273B4' ID = '600000105' bank_name = 'РКБ «Тинькофф Банк»' addr_id = '700002385' imgurl =
'https://sun1-21.userapi.com/s/v1/if1/CV2ntiuR3yuzH0tOvy6hFdUPCABteZbubqHsghW8R6C2HPq2ZIT-G8Bdzyl35sy8f5nL3Q.jpg?size=400x0&quality=96&crop=0,0,200,200&ava=1' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F293B4' ID = '600000106' bank_name = 'ОАО «Приорбанк»' addr_id = '700002386' imgurl = 'https://lh3.googleusercontent.com/TU_TB832DppLo_72tbnuoAZt5ZOzk5C-L5ZWfw40MqvsHUDrpEyYCxLWVe0j5tRVAzo' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F2B3B4' ID = '600000107' bank_name = 'ЗАО Банк ВТБ' addr_id = '700002387' imgurl =
'https://sun9-7.userapi.com/impg/yl63Io2s8kDIRhjvorj949ZZ83DHjiqnbsf5ig/eNBkpS7kSqs.jpg?size=1054x929&quality=95&sign=f73ce373cbb83ef07b6d0363104b6c26&c_uniq_tag=I_S3PkCTfEwsa51Dz4Z2YSxPNiSI-arE_vwVOQg3fgI&type=album' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F2D3B4' ID = '600000108' bank_name = 'ЗАО "Цептер Банк"' addr_id = '700002388' imgurl =
'https://sun9-63.userapi.com/impf/c308330/v308330252/585b/hTGB6uLmR3w.jpg?size=317x317&quality=96&sign=509bb15cd56f05fedc6379d7d899b42d&c_uniq_tag=hZ6EOLgUWH6KRxniWmEY5iPFvyr3kOaqR3QHEnqtr40&type=album' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F2F3B4' ID = '600000109' bank_name = 'ОАО "АСБ Беларусбанк"' addr_id = '700002389' imgurl = 'https://allmoneys.by/wp-content/uploads/2021/02/unnamed-1-768x768.jpg' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F313B4' ID = '600000110' bank_name = 'ОАО "СберБанк"' addr_id = '700002390' imgurl = 'https://katranlife.ru/uploads/posts/2022-05/sberbank-icon.jpg' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F333B4' ID = '600000111' bank_name = 'ЗАО «Альфа-Банк»' addr_id = '700002391' imgurl =
'https://w7.pngwing.com/pngs/973/773/png-transparent-orlando-taxi-24-consumer-credit-taxi-trademark-logo-sign.png' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F353B4' ID = '600000112' bank_name = 'ЗАО «БСБ Банк»' addr_id = '700002392' imgurl = 'https://pbs.twimg.com/media/Ff0E21NaAAA3FKa?format=jpg&name=medium' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F373B4' ID = '600000113' bank_name = 'ОАО "Белгазпромбанк"' addr_id = '700002393' imgurl = 'https://play-lh.googleusercontent.com/WfYTVP4-YXUHg8XSB0iSEUEWZIRLSuzUWpcJai-6oELVp-aQmrWEOcMljN4CC6okT3o' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F393B4' ID = '600000114' bank_name = 'ОАО «Дабрабыт»' addr_id = '700002394' imgurl = 'https://static7.tgstat.ru/channels/_0/26/26ee20c262b01cfb0c9f90d5dad67a3e.jpg' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F3B3B4' ID = '600000115' bank_name = 'ОАО «РРБ Банк»' addr_id = '700002395' imgurl =
'https://yt3.googleusercontent.com/UEHDz2nxoB132nMt98xarUX1FkeAlqVXn7YnWiay1dZXKzMkK5LJ316c17BNhmEFEr0TKBB4l34=s900-c-k-c0x00ffffff-no-rj' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F3D3B4' ID = '600000116' bank_name = 'ОАО «Технобанк»' addr_id = '700002396' imgurl = 'https://play-lh.googleusercontent.com/Rj7j3hCB-yewQvCQiJxKm63hUe1oWzK6OxGoXwuTngFr101-fA0X7-NkdN-pGkeekg' )
( client = sy-mandt UUID = 'DEF285E354281EDE8D8BAD6088F3F3B4' ID = '600000117' bank_name = 'ОАО "Белинвестбанк"' addr_id = '700002397' imgurl = 'https://help.lwo.by/upload/landing/a4e/imgonline_com_ua_Resize_E97Rk84TTFi_2x.png' )
    ).

*    " Get Client, ID, UUID
*    LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs_line>).
*    DATA lv_id TYPE cl_numberrange_runtime=>nr_number.
*    get_nr( EXPORTING tabname   = lc_tabname
*            importing client    = <fs_line>-client
*                      nr_number = lv_id
*                      uuid      = <fs_line>-uuid ).
*    <fs_line>-id = lv_id.
*    ENDLOOP.
*
**   delete existing entries in the database table
*    DELETE FROM (lc_tabname).
*
**   insert the new table entries
*    INSERT (lc_tabname) FROM TABLE @itab.

    MODIFY (lc_tabname) FROM TABLE @itab.
*   output the result as a console message
    out->write( |{ sy-dbcnt } bank entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
