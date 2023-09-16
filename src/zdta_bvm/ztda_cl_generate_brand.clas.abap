CLASS ztda_cl_generate_brand DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_GENERATE_BRAND IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-brand.  " Имя таблицы БД в словаре
    DATA      itab       TYPE TABLE OF ztda_a_brand.                           " Имя таблицы БД в словаре

*   fill internal travel table (itab)
    itab = VALUE #(
*( BRAND_NAME = 'FORD' IMGURL = 'https://static.tildacdn.com/tild3761-3333-4430-b430-313235373564/png-transparent-ford.png' )
*( BRAND_NAME = 'GEELY' IMGURL = 'https://logos-marques.com/wp-content/uploads/2021/02/Geely-Logo-2008.png' )
*( BRAND_NAME = 'KOEGEL' IMGURL = 'https://www.freedownloadlogo.com/logos/k/koegel-fahrzeugwerke-logo.svg' )
*( BRAND_NAME = 'MERCEDES' IMGURL = 'https://media.baamboozle.com/uploads/images/184531/1633283560_274158.png' )
*( BRAND_NAME = 'NISSAN' IMGURL = 'https://e7.pngegg.com/pngimages/496/686/png-clipart-nissan-rogue-car-logo-toyota-nissan-emblem-trademark.png' )
*( BRAND_NAME = 'PEUGEOT' IMGURL = 'https://hdpic.club/uploads/posts/2021-11/1637633880_12-hdpic-club-p-emblema-pezho-19.png' )
*( BRAND_NAME = 'RENAULT' IMGURL = 'https://main-cdn.sbermegamarket.ru/big1/hlr-system/1662733621/600000195865b0.png' )
*( BRAND_NAME = 'SAMAND' IMGURL = 'png-transparent-iran-khodro-car-saipa-ikco-samand-car-carnivoran-logo-car.png (920×735) (pngwing.com)' )
*( BRAND_NAME = 'VOLKSWAGEN' IMGURL = 'https://cdn141.picsart.com/294152982006211.png' )
*( BRAND_NAME = 'АМКОДОР' IMGURL = 'https://yt3.googleusercontent.com/ytc/AGIKgqOGLyXViSAjuL1g3USfTy8LiMEqIaGOWqAx6Y4Rzw=s900-c-k-c0x00ffffff-no-rj' )
*( BRAND_NAME = 'АПС' IMGURL = '' )
*( BRAND_NAME = 'БЕЛАЗ' IMGURL = 'https://w7.pngwing.com/pngs/904/725/png-transparent-caterpillar-inc-heavy-machinery-mining-tipper-truck-angle-truck-logo.png' )
*( BRAND_NAME = 'ГАЗ' IMGURL = 'https://xn--80aed5aobb1a.xn--p1ai/wp-content/uploads/gaz-logo-blue-1920x1080.png' )
*( BRAND_NAME = 'ЗИЛ' IMGURL = 'https://logolist.ru/uploads/posts/2016-05/0_zil_logo.jpg' )
*( BRAND_NAME = 'КИРОВЕЦ' IMGURL = 'https://l-userpic.livejournal.com/111588209/39205036' )
*( BRAND_NAME = 'МАЗ' IMGURL = 'https://e7.pngegg.com/pngimages/137/717/png-clipart-minsk-automobile-plant-car-logo-benz-logo-purple-blue.png' )
*( BRAND_NAME = 'МЗКТ' IMGURL = 'https://789023.selcdn.ru/zebrascan/eeacebf5-a970-4283-90f2-396fc4b1470f/eeacebf5-a970-4283-90f2-396fc4b1470f-image-416.jpg+' )
*( BRAND_NAME = 'МТЗ' IMGURL = 'https://tractorsouz.com.ua/storage/image/png/c/c34775cb1b7a04ad6d4fce1930838030.png' )
*( BRAND_NAME = 'ПАЗ' IMGURL = 'PAZ_Logo_black.png (5000×3901) (logos-download.com)' )
*( BRAND_NAME = 'УАЗ' IMGURL = 'UAZ-Logo-2000.png (1600×907) (1000marche.net)' )

( BRAND_NAME = 'АИ-95' IMGURL = 'https://dl-media.viber.com/5/share/2/long/vibes/icon/image/0x0/5970/5834282506ddd466348edbae07c429b56bb92e1ce91fdfc871a3775b7a785970.jpg' )

    ).

    " Get Client, ID, UUID
    LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs_line>).
        DATA lv_id TYPE cl_numberrange_runtime=>nr_number.
        get_nr( EXPORTING tabname   = lc_tabname
                IMPORTING client    = <fs_line>-client
                          nr_number = lv_id
                          uuid      = <fs_line>-uuid ).
    <fs_line>-id = lv_id.
    ENDLOOP.

*   delete existing entries in the database table
*    DELETE FROM (lc_tabname).

*   insert the new table entries
    INSERT (lc_tabname) FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } brand entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
