CLASS ztda_cl_constants DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CONSTANTS: BEGIN OF numbrange,
                 object       TYPE cl_numberrange_intervals=>nr_object
                                              VALUE 'Z_NR_BVM',     " object name (10 symbols)
                 domain       TYPE valuepart  VALUE 'ZTDA_DM_ID',   " domain to be used eg char 10
                 devclass     TYPE valuepart  VALUE 'ZTDA_CL_NR',   " lass where number range actually gets created
                 max_interval TYPE c LENGTH 2 VALUE '99',           " Maximum interval number
                 percentage   TYPE i          VALUE 10,             " orning percentage of interval NR object
                 lang         TYPE spras      VALUE 'E',            " anguage of NR object
               END OF numbrange.

    CONSTANTS: BEGIN OF nr_interval,
                 book     TYPE c LENGTH 2 VALUE '01',	" 'ZTDA_A_BOOK'
                 trip     TYPE c LENGTH 2 VALUE '02',	" 'ZTDA_A_TRIP'
                 car      TYPE c LENGTH 2 VALUE '03',	" 'ZTDA_A_CAR',
                 empl     TYPE c LENGTH 2 VALUE '04',	" 'ZTDA_A_EMPL'
                 cust     TYPE c LENGTH 2 VALUE '05',	" 'ZTDA_A_CUST'
                 bank     TYPE c LENGTH 2 VALUE '06',	" 'ZTDA_A_BANK'
                 addr     TYPE c LENGTH 2 VALUE '07',	" 'ZTDA_A_ADDR'
                 matnr    TYPE c LENGTH 2 VALUE '08',	" 'ZTDA_A_MATNR'
                 brand    TYPE c LENGTH 2 VALUE '09',	" 'ZTDA_A_BRAND'
                 pos      TYPE c LENGTH 2 VALUE '10',	" 'ZTDA_A_POS',
               END OF nr_interval.

    CONSTANTS: BEGIN OF tabname,
                 book     TYPE tabname VALUE 'ZTDA_A_BOOK',
                 trip     TYPE tabname VALUE 'ZTDA_A_TRIP',
                 car      TYPE tabname VALUE 'ZTDA_A_CAR',
                 empl     TYPE tabname VALUE 'ZTDA_A_EMPL',
                 cust     TYPE tabname VALUE 'ZTDA_A_CUST',
                 bank     TYPE tabname VALUE 'ZTDA_A_BANK',
                 addr     TYPE tabname VALUE 'ZTDA_A_ADDR',
                 matnr    TYPE tabname VALUE 'ZTDA_A_MATNR',
                 brand    TYPE tabname VALUE 'ZTDA_A_BRAND',
                 pos      TYPE tabname VALUE 'ZTDA_A_POS',


                 book_d   TYPE tabname VALUE 'ZTDA_D_BOOK',
                 trip_d   TYPE tabname VALUE 'ZTDA_D_TRIP',
                 car_d    TYPE tabname VALUE 'ZTDA_D_CAR',
                 empl_d   TYPE tabname VALUE 'ZTDA_D_EMPL',
                 cust_d   TYPE tabname VALUE 'ZTDA_D_CUST',
                 bank_d   TYPE tabname VALUE 'ZTDA_D_BANK',
                 addr_d   TYPE tabname VALUE 'ZTDA_D_ADDR',
                 matnr_d  TYPE tabname VALUE 'ZTDA_D_MATNR',
                 brand_d  TYPE tabname VALUE 'ZTDA_D_BRAND',
                 pos_d    TYPE tabname VALUE 'ZTDA_D_POS',
               END OF tabname.

    CONSTANTS: BEGIN OF status,
                 BEGIN OF car,
                   good   TYPE ztda_de_car_status VALUE '1',    " good
                   city   TYPE ztda_de_car_status VALUE '2',    " good for city
                   bad    TYPE ztda_de_car_status VALUE '3',    " bad
                 END OF car,

                 BEGIN OF book,
                   new    TYPE ztda_de_book_status VALUE '1',   " new
                   proc   TYPE ztda_de_book_status VALUE '2',   " in process
                   deliv  TYPE ztda_de_book_status VALUE '3',   " delivered
                   ndeliv TYPE ztda_de_book_status VALUE '4',   " not delivered
                   canc   TYPE ztda_de_book_status VALUE '5',   " canceled
                   delay  TYPE ztda_de_book_status VALUE '6',   " delaying
                 END OF book,

                 BEGIN OF trip,
                   new    TYPE ztda_de_book_status VALUE '1',	" new
                   proc   TYPE ztda_de_book_status VALUE '2',	" in process
                   deliv  TYPE ztda_de_book_status VALUE '3',   " delivered
                   ndeliv TYPE ztda_de_book_status VALUE '4',	" not delivered
                   canc   TYPE ztda_de_book_status VALUE '5',	" canceled
                   delay  TYPE ztda_de_book_status VALUE '6',	" delaying
                 END OF trip,
               END OF status.

    CONSTANTS msgid TYPE symsgid VALUE 'ZTDA_BVM_MSG'.

        CONSTANTS: BEGIN OF msgty,
                 a TYPE symsgty VALUE 'A',   "
                 e TYPE symsgty VALUE 'E',   " error
                 i TYPE symsgty VALUE 'I',   " information
                 s TYPE symsgty VALUE 'S',   " successfull
                 w TYPE symsgty VALUE 'W',   " warning
                 x TYPE symsgty VALUE 'X',   "
               END OF msgty.

    CONSTANTS: BEGIN OF msgno,
                 no_000 TYPE symsgno VALUE '000',   " &1&2&3&4
                 no_001 TYPE symsgno VALUE '001',   " &1 &2 &3 &4
                 no_002 TYPE symsgno VALUE '002',   " &1, &2, &3, &4
                 no_003 TYPE symsgno VALUE '003',   " '&1' is not known.
                 no_004 TYPE symsgno VALUE '004',   " Value '&1' is not known for field '&2'.
                 no_005 TYPE symsgno VALUE '005',   " Value of the field "ID = &1" does not satisfy the interval from &2 to &3.
                 no_006 TYPE symsgno VALUE '006',   " Value of the field "ID = &1" does not exist in table &2.
                 no_007 TYPE symsgno VALUE '007',   " Value of the field "ID = &1" is not the position of the 'Manager'
                 no_008 TYPE symsgno VALUE '008',   " End date lesser than begining date
                 no_009 TYPE symsgno VALUE '009',   " Begining date bigger than currently date
                 no_010 TYPE symsgno VALUE '010',   " The booking can't be close. status of some trip isn't suitable.
                 no_011 TYPE symsgno VALUE '011',   "
                 no_012 TYPE symsgno VALUE '012',   "
                 no_013 TYPE symsgno VALUE '013',   "
                 no_014 TYPE symsgno VALUE '014',   "
                 no_015 TYPE symsgno VALUE '015',   "
               END OF msgno.

    CONSTANTS: BEGIN OF positions,
                 manager    TYPE ztda_de_position_id VALUE '1000000067',    " Диспетчер
                 dr_car     TYPE ztda_de_position_id VALUE '1000000072',    " Водитель автомобиля (легкового)
                 dr_truck   TYPE ztda_de_position_id VALUE '1000000073',    " Водитель автомобиля (грузового)
                 dr_bus     TYPE ztda_de_position_id VALUE '1000000074',    " Водитель автомобиля (автобуса)
               END OF  positions.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_CONSTANTS IMPLEMENTATION.
ENDCLASS.
