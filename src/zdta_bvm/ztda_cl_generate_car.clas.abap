CLASS ztda_cl_generate_car DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztda_cl_generate_car IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-car. " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_car.                               " Имя таблицы БД в словаре
    DATA lo_guid    TYPE REF TO if_system_uuid.

*   fill internal travel table (itab)
    itab = VALUE #(
( brand_id = '900000359' model = 'FORD TRANSIT 350' color = '17' yer_creation = '2021' technic_type = '1' body_type = '14' date_registration = '20210207' body_number = 'WF0DXXTTFD8E88685' reg_number = 'AI 8515-5' consumption = '10.6' capacity = '16'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000359' model = 'FORD TRANSIT 430' color = '17' yer_creation = '2010' technic_type = '1' body_type = '14' date_registration = '20100114' body_number = 'WF0DXXTTFD8Y28443' reg_number = 'AI 9111-5' consumption = '12.1' capacity = '16'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000360' model = 'GEELY SC7' color = '19' yer_creation = '2023' technic_type = '1' body_type = '1' date_registration = '20230417' body_number = 'Y3K8844S4CB000008' reg_number = '5041 IX-5' consumption = '8.2' capacity = '4' axes_number =
'2' paytool_id = '-' fuel = '800000125' car_status = '2' )
( brand_id = '900000360' model = 'GEELY SC7' color = '19' yer_creation = '2016' technic_type = '1' body_type = '1' date_registration = '20160819' body_number = 'Y3K8844S8CB000033' reg_number = '5042 IX-5' consumption = '8.2' capacity = '4' axes_number =
'2' paytool_id = '' fuel = '800000125' car_status = '1' )
( brand_id = '900000361' model = 'АК-142 KOEGEL SN24' color = '05' yer_creation = '2011' technic_type = '3' body_type = '18' date_registration = '20110201' body_number = '1128098' reg_number = '7768 AA-5' consumption = '13.9' capacity = '27.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000362' model = 'Мерседес-Бенц 1838' color = '09' yer_creation = '2020' technic_type = '1' body_type = '5' date_registration = '20200420' body_number = 'WDB6555331K128969' reg_number = 'AM 0140-5' consumption = '24.7' capacity = ''
axes_number = '3' paytool_id = '0112A725409' fuel = '800000128' car_status = '1' )
( brand_id = '900000363' model = 'NISSAN MURANO' color = '19' yer_creation = '2012' technic_type = '1' body_type = '1' date_registration = '20120917' body_number = 'JN1TANZ51U0110409' reg_number = '2155 IН-5' consumption = '12.7' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000125' car_status = '1' )
( brand_id = '900000364' model = 'PEUGEOT PARTNER' color = '17' yer_creation = '2016' technic_type = '1' body_type = '1' date_registration = '20160322' body_number = 'VF3GJWJYB95030755' reg_number = '7958 ЕК-5' consumption = '6.9' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000365' model = 'RENAULT SYMBOL' color = '17' yer_creation = '2019' technic_type = '1' body_type = '1' date_registration = '20190912' body_number = 'VF1LB03C531752826' reg_number = '0221 АЕ-5' consumption = '7.8' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000125' car_status = '1' )
( brand_id = '900000365' model = 'RENAULT SYMBOL' color = '10' yer_creation = '2019' technic_type = '1' body_type = '1' date_registration = '20190514' body_number = 'VF1LB03C531811879' reg_number = '3415 IН-5' consumption = '7.8' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000125' car_status = '4' )
( brand_id = '900000365' model = 'RENAULT SYMBOL' color = '11' yer_creation = '2010' technic_type = '1' body_type = '1' date_registration = '20100308' body_number = 'VF1LB03C531711879' reg_number = '3414 IН-5' consumption = '7.8' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000125' car_status = '1' )
( brand_id = '900000365' model = 'RENAULT SYMBOL' color = '19' yer_creation = '2015' technic_type = '1' body_type = '1' date_registration = '20150627' body_number = 'VF1LB03C531911879' reg_number = '0078 AE-5' consumption = '7.8' capacity = '4'
axes_number = '2' paytool_id = '' fuel = '800000125' car_status = '1' )
( brand_id = '900000366' model = 'SAMAND TU 5' color = '11' yer_creation = '2011' technic_type = '1' body_type = '1' date_registration = '20110710' body_number = 'Y3W2PSMTUBUNS1095' reg_number = '1104 IE-5' consumption = '8' capacity = '4' axes_number =
'2' paytool_id = '-' fuel = '800000125' car_status = '1' )
( brand_id = '900000366' model = 'SAMAND TU 5' color = '10' yer_creation = '2018' technic_type = '1' body_type = '1' date_registration = '20180321' body_number = 'Y3W2PSMTUBUNS1099' reg_number = '1105 IЕ-5' consumption = '8' capacity = '4' axes_number =
'2' paytool_id = '-' fuel = '800000125' car_status = '3' )
( brand_id = '900000367' model = 'VOLKSWAGEN MULTIVAN' color = '14' yer_creation = '2017' technic_type = '1' body_type = '1' date_registration = '20170303' body_number = 'WV2ZZZ70Z3Y081639' reg_number = '5755 II-5' consumption = '9.8' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000367' model = 'VOLKSWAGEN MULTIVAN' color = '14' yer_creation = '2015' technic_type = '1' body_type = '1' date_registration = '20150103' body_number = 'WV2ZZZ7HZ8H056941' reg_number = '1000 ВР-5' consumption = '9.9' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000367' model = 'VOLKSWAGEN PASSAT' color = '14' yer_creation = '2014' technic_type = '1' body_type = '1' date_registration = '20140209' body_number = 'WVWZZZ3CZ8P112195' reg_number = '1100 ВХ-5' consumption = '9.3' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000125' car_status = '1' )
( brand_id = '900000367' model = 'VOLKSWAGEN PASSAT' color = '14' yer_creation = '2013' technic_type = '1' body_type = '1' date_registration = '20130409' body_number = 'WVWZZZ3CZ8P084809' reg_number = '1122 ВХ-5' consumption = '9.3' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000125' car_status = '1' )
( brand_id = '900000367' model = 'VOLKSWAGEN JETTA' color = '14' yer_creation = '2010' technic_type = '1' body_type = '1' date_registration = '20100329' body_number = 'WVWZZZ1KZ8M171663' reg_number = '0710 ЕА-5' consumption = '8.1' capacity = '4'
axes_number = '2' paytool_id = '-' fuel = '800000125' car_status = '1' )
( brand_id = '900000368' model = 'Амкодор 342С-4' color = '03' yer_creation = '2010' technic_type = '4' body_type = '19' date_registration = '20100824' body_number = '06080329' reg_number = 'OK-5 2900' consumption = '23.3' capacity = '3.8' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000368' model = 'Амкодор 702 Е' color = '03' yer_creation = '2010' technic_type = '4' body_type = '19' date_registration = '20100225' body_number = '1768' reg_number = 'OK-5 2903' consumption = '23.3' capacity = '6.5' axes_number = '2'
paytool_id = '-' fuel = '800000128' car_status = '4' )
( brand_id = '900000368' model = 'Амкодор 342С-03' color = '03' yer_creation = '2023' technic_type = '4' body_type = '19' date_registration = '20230904' body_number = '05070567' reg_number = 'OK-5 2905' consumption = '23.3' capacity = '3.8' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000368' model = 'Амкодор 451А' color = '03' yer_creation = '2010' technic_type = '4' body_type = '20' date_registration = '20100203' body_number = '' reg_number = 'б/н' consumption = '23.3' capacity = '5.0' axes_number = '2' paytool_id =
'-' fuel = '800000128' car_status = '1' )
( brand_id = '900000368' model = 'Амкодор 342С-4' color = '03' yer_creation = '2022' technic_type = '4' body_type = '19' date_registration = '20220428' body_number = '06080328' reg_number = 'OK-5 2899' consumption = '23.3' capacity = '3.8' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000368' model = 'Амкодор 451' color = '03' yer_creation = '2021' technic_type = '4' body_type = '20' date_registration = '20210220' body_number = '' reg_number = 'б/н' consumption = '23.3' capacity = '5.0' axes_number = '2' paytool_id =
'-' fuel = '800000128' car_status = '2' )
( brand_id = '900000368' model = 'Амкодор 451А' color = '03' yer_creation = '2018' technic_type = '4' body_type = '19' date_registration = '20180926' body_number = '' reg_number = 'б/н' consumption = '23.3' capacity = '5.0' axes_number = '2' paytool_id =
'-' fuel = '800000128' car_status = '1' )
( brand_id = '900000369' model = 'АПС 554400' color = '05' yer_creation = '2013' technic_type = '3' body_type = '18' date_registration = '20130420' body_number = 'Y39554400D0023280' reg_number = '9327 AA-5' consumption = '15.3' capacity = '34.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000369' model = 'АПС 554400' color = '05' yer_creation = '2022' technic_type = '3' body_type = '18' date_registration = '20220624' body_number = 'Y39554400D0023281' reg_number = '9328 AA-5' consumption = '15.3' capacity = '34.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000369' model = 'АПС 554400' color = '05' yer_creation = '2020' technic_type = '3' body_type = '18' date_registration = '20200905' body_number = 'Y39554400D0023282' reg_number = '9329 AA-5' consumption = '15.3' capacity = '34.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000369' model = 'АПС 554400' color = '05' yer_creation = '2023' technic_type = '3' body_type = '18' date_registration = '20230217' body_number = 'Y39554400E0023315' reg_number = '9682 AA-5' consumption = '15.3' capacity = '34.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '4' )
( brand_id = '900000369' model = 'АПС 554400' color = '05' yer_creation = '2023' technic_type = '3' body_type = '18' date_registration = '20230112' body_number = 'Y39554400E0023316' reg_number = '9684 AA-5' consumption = '15.3' capacity = '34.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000369' model = 'АПС 554400' color = '05' yer_creation = '2023' technic_type = '3' body_type = '18' date_registration = '20230801' body_number = 'Y39554400E0023317' reg_number = '9683 AA-5' consumption = '15.3' capacity = '34.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000370' model = 'БЕЛАЗ-81201' color = '17' yer_creation = '2018' technic_type = '3' body_type = '17' date_registration = '20180718' body_number = 'Y3B81201040018159' reg_number = '0180 AA-5' consumption = '' capacity = '0.5' axes_number
= '1' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 3309' color = '01' yer_creation = '2023' technic_type = '1' body_type = '8' date_registration = '20230908' body_number = 'XTH330900V0790736' reg_number = 'AM 0026-5' consumption = '17.6' capacity = '4.05' axes_number
= '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 331043' color = '17' yer_creation = '2014' technic_type = '1' body_type = '2' date_registration = '20140923' body_number = 'X96331043C1024979' reg_number = 'AM 3338-5' consumption = '15.7' capacity = '3.6'
axes_number = '2' paytool_id = '0112A7250A3' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 33023-288' color = '02' yer_creation = '2022' technic_type = '1' body_type = '2' date_registration = '20220714' body_number = '330700A0178118' reg_number = 'AE 9959-5' consumption = '12.8' capacity = '1.5'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 33027' color = '02' yer_creation = '2010' technic_type = '1' body_type = '2' date_registration = '20100225' body_number = 'X96330270520477518' reg_number = 'KH 0672' consumption = '16' capacity = '1.35' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 3302 "KUPAVA" 2325' color = '02' yer_creation = '2012' technic_type = '1' body_type = '14' date_registration = '20120410' body_number = 'Y3H23250070041345' reg_number = 'AE 4813-5' consumption = '13.4' capacity =
'1.5' axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 2705' color = '18' yer_creation = '2023' technic_type = '1' body_type = '1' date_registration = '20230619' body_number = 'X9627050090634728' reg_number = 'AE 7547-5' consumption = '12.1' capacity = '4' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 33081' color = '02' yer_creation = '2011' technic_type = '1' body_type = '2' date_registration = '20110503' body_number = 'X9633081090982069' reg_number = 'AI 3058-5' consumption = '19.1' capacity = '2.01'
axes_number = '2' paytool_id = '0112A7252E7' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 33081' color = '02' yer_creation = '2022' technic_type = '1' body_type = '2' date_registration = '20220508' body_number = 'X9633081090982052' reg_number = 'AI 3057-5' consumption = '19.1' capacity = '2.01'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 33081' color = '02' yer_creation = '2016' technic_type = '1' body_type = '2' date_registration = '20160611' body_number = 'X9633081090982030' reg_number = 'AI 3056-5' consumption = '19.1' capacity = '2.01'
axes_number = '2' paytool_id = '0112A724FD0' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 33081' color = '02' yer_creation = '2013' technic_type = '1' body_type = '2' date_registration = '20130507' body_number = 'X9633081090982094' reg_number = 'AI 3055-5' consumption = '19.1' capacity = '2.01'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 331043' color = '08' yer_creation = '2018' technic_type = '1' body_type = '2' date_registration = '20180205' body_number = 'X96331043B0998026' reg_number = 'AK 3361-5' consumption = '16.7' capacity = '3.6'
axes_number = '2' paytool_id = '0113174D5C7' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 3307 ВИПО-20-01' color = '12' yer_creation = '2022' technic_type = '1' body_type = '10' date_registration = '20220804' body_number = '330700A0178117' reg_number = 'AK 3383-5' consumption = '19' capacity = '4.15'
axes_number = '2' paytool_id = '0112A724FF6' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 33023' color = '14' yer_creation = '2015' technic_type = '1' body_type = '2' date_registration = '20150527' body_number = 'X96330230B0712359' reg_number = '3736 АК-5' consumption = '14.7' capacity = '1.545'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 3309-36135-011' color = '02' yer_creation = '2020' technic_type = '1' body_type = '6' date_registration = '20200714' body_number = 'X9036135AC0001438' reg_number = 'AM 0564-5' consumption = '16.9' capacity = '4.215'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 322132' color = '17' yer_creation = '2016' technic_type = '1' body_type = '13' date_registration = '20160907' body_number = 'X96322132C0728790' reg_number = 'AM 1161-5' consumption = '16' capacity = '25' axes_number
= '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 330232' color = '17' yer_creation = '2018' technic_type = '1' body_type = '14' date_registration = '20180925' body_number = 'X96330232C0763996' reg_number = 'AM 1445-5' consumption = '14.7' capacity = '1.44'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '3' )
( brand_id = '900000371' model = 'ГАЗ 2752-2298' color = '14' yer_creation = '2013' technic_type = '1' body_type = '14' date_registration = '20130303' body_number = 'X96275200C0738825' reg_number = 'AM 4611-5' consumption = '12.1' capacity = '0.755'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 2705-2298' color = '11' yer_creation = '2011' technic_type = '1' body_type = '14' date_registration = '20110407' body_number = 'X96270500C0739730' reg_number = 'AM 4823-5' consumption = '12.6' capacity = '1.35'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 2217-6288' color = '17' yer_creation = '2013' technic_type = '1' body_type = '13' date_registration = '20130624' body_number = 'X96221700C00741943' reg_number = 'AM 5070-5' consumption = '14' capacity = '25'
axes_number = '2' paytool_id = '0112A725079' fuel = '800000128' car_status = '1' )
( brand_id = '900000371' model = 'ГАЗ 331043' color = '17' yer_creation = '2023' technic_type = '1' body_type = '14' date_registration = '20230204' body_number = 'X96331043C1031003' reg_number = 'AM 1936-5' consumption = '15.7' capacity = '3.6'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000372' model = 'ЗиЛ-130 ПР-130 ММЗ-4502' color = '02' yer_creation = '2011' technic_type = '1' body_type = '11' date_registration = '20110217' body_number = 'Б/Н' reg_number = '8394 МБО' consumption = '32' capacity = '6.0' axes_number =
'2' paytool_id = '-' fuel = '800000124' car_status = '1' )
( brand_id = '900000373' model = 'Т-130 МГ-1' color = '07' yer_creation = '2013' technic_type = '2' body_type = '16' date_registration = '20130701' body_number = '192656' reg_number = 'OK-5 2907' consumption = '35' capacity = '130.0' axes_number = '-'
paytool_id = '-' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 54323' color = '09' yer_creation = '2021' technic_type = '1' body_type = '5' date_registration = '20210913' body_number = 'Y3M54323020030193' reg_number = 'AM 0145-5' consumption = '26.6' capacity = '7.405'
axes_number = '3' paytool_id = '01132714868' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5337' color = '02' yer_creation = '2011' technic_type = '1' body_type = '3' date_registration = '20110109' body_number = 'Y3M53370020040851' reg_number = 'AM 0142-5' consumption = '28.6' capacity = '7.405'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 6303 040М' color = '09' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200124' body_number = 'Y3M63030020002424' reg_number = 'AM 0018-5' consumption = '35' capacity = '17.72'
axes_number = '3' paytool_id = '0112A7251F8' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303 040М' color = '09' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200924' body_number = 'Y3M63030020002415' reg_number = 'AM 0017-5' consumption = '33.3' capacity = '17.72'
axes_number = '3' paytool_id = '0112A725386' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 543240-2120' color = '10' yer_creation = '2022' technic_type = '1' body_type = '5' date_registration = '20220329' body_number = 'Y3M54324030000343' reg_number = 'AM 0144-5' consumption = '26' capacity = ''
axes_number = '3' paytool_id = '0112A72DAD1' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303 040М' color = '09' yer_creation = '2010' technic_type = '1' body_type = '3' date_registration = '20100103' body_number = 'Y3M63030030002503' reg_number = 'AM 0068-5' consumption = '33.3' capacity = '17.75'
axes_number = '3' paytool_id = '0112A725206' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 551603-040' color = '09' yer_creation = '2012' technic_type = '1' body_type = '4' date_registration = '20120110' body_number = 'Y3M55160320000842' reg_number = 'AM 0148-5' consumption = '32.2' capacity = '16.0'
axes_number = '3' paytool_id = '0112A725272' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 551603-040' color = '02' yer_creation = '2010' technic_type = '1' body_type = '4' date_registration = '20100318' body_number = 'Y3M55160320000863' reg_number = 'AM 4246-5' consumption = '32.2' capacity = '16.0'
axes_number = '3' paytool_id = '0113179C0E3' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 543302-2120' color = '02' yer_creation = '2021' technic_type = '1' body_type = '5' date_registration = '20210710' body_number = 'Y3M53370230000951' reg_number = 'AM 0137-5' consumption = '22.6' capacity = ''
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 533702-2140' color = '09' yer_creation = '2015' technic_type = '1' body_type = '4' date_registration = '20150812' body_number = 'Y3M53370230000605' reg_number = 'AB 3240-5' consumption = '27.1' capacity = '5.4'
axes_number = '3' paytool_id = '0112A72DAB6' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 437040-062' color = '09' yer_creation = '2010' technic_type = '1' body_type = '2' date_registration = '20100521' body_number = 'Y3M43704030002208' reg_number = 'AM 0027-5' consumption = '17.2' capacity = '5.4'
axes_number = '2' paytool_id = '0112A724F57' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 555102 2123' color = '09' yer_creation = '2022' technic_type = '1' body_type = '2' date_registration = '20220316' body_number = 'Y3M55510230002129' reg_number = 'AM 1830-5' consumption = '28.8' capacity = '10.15'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 533702-2140' color = '09' yer_creation = '2013' technic_type = '1' body_type = '3' date_registration = '20130101' body_number = 'Y3M53370230000950' reg_number = 'AM 0138-5' consumption = '28.8' capacity = '6.15'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 533702-2140' color = '02' yer_creation = '2022' technic_type = '1' body_type = '3' date_registration = '20220710' body_number = 'Y3M53370230000925' reg_number = 'AI 6239-5' consumption = '28.8' capacity = '6.15'
axes_number = '3' paytool_id = '01132712B63' fuel = '800000128' car_status = '3' )
( brand_id = '900000374' model = 'МАЗ 975830-3012' color = '08' yer_creation = '2012' technic_type = '3' body_type = '18' date_registration = '20120526' body_number = 'Y3M97583040000230' reg_number = 'A 0004 A-5' consumption = '9.3' capacity = '25.85'
axes_number = '1' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ-МАН 543268' color = '05' yer_creation = '2015' technic_type = '1' body_type = '5' date_registration = '20150128' body_number = 'Y3M97583040000230' reg_number = '7876 АВ-5' consumption = '21.4' capacity = ''
axes_number = '3' paytool_id = '0112A725336' fuel = '800000128' car_status = '2' )
( brand_id = '900000374' model = 'МАЗ 630300-2141М' color = '02' yer_creation = '2014' technic_type = '1' body_type = '3' date_registration = '20140927' body_number = 'Y3M63030040003184' reg_number = 'AM 1553-5' consumption = '39' capacity = '12.7'
axes_number = '3' paytool_id = '0112A725142' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630300-2141М' color = '02' yer_creation = '2017' technic_type = '1' body_type = '3' date_registration = '20170313' body_number = 'Y3M63030040003186' reg_number = 'AI 8866-5' consumption = '39' capacity = '7.422'
axes_number = '3' paytool_id = '0112A725126' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 543302' color = '10' yer_creation = '2020' technic_type = '1' body_type = '5' date_registration = '20200804' body_number = 'Y3M54330240000692' reg_number = 'AI 0069-5' consumption = '22.6' capacity = '' axes_number =
'3' paytool_id = '0112A7253E3' fuel = '800000128' car_status = '3' )
( brand_id = '900000374' model = 'МАЗ 533702' color = '02' yer_creation = '2020' technic_type = '1' body_type = '2' date_registration = '20200801' body_number = 'Y3M53370240003979' reg_number = 'AI 0309-5' consumption = '26.6' capacity = '10.65'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 551605-2140' color = '02' yer_creation = '2018' technic_type = '1' body_type = '4' date_registration = '20180725' body_number = 'Y3M55160540003761' reg_number = 'AA 2586-5' consumption = '29.9' capacity = '17.38'
axes_number = '3' paytool_id = '0113174D552' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2012' technic_type = '1' body_type = '3' date_registration = '20120803' body_number = 'Y3M63030540000471' reg_number = 'AA 2750-5' consumption = '31.5' capacity = '9.43'
axes_number = '3' paytool_id = '0112A7251D3' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2016' technic_type = '1' body_type = '3' date_registration = '20160506' body_number = 'Y3M63030540000479' reg_number = 'AA 2751-5' consumption = '31.5' capacity = '9.43'
axes_number = '3' paytool_id = '0112A72DAF7' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800-1010' color = '05' yer_creation = '2019' technic_type = '3' body_type = '18' date_registration = '20190519' body_number = 'Y3M97580060009085' reg_number = 'A 3096 A-5' consumption = '15' capacity = '26.5'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800-1010' color = '05' yer_creation = '2023' technic_type = '3' body_type = '18' date_registration = '20230511' body_number = 'Y3M97580060009048' reg_number = 'A 3088 A-5' consumption = '14.3' capacity = '26.5'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800-1010' color = '05' yer_creation = '2015' technic_type = '3' body_type = '18' date_registration = '20150421' body_number = 'Y3M97580060009036' reg_number = 'A 3303 A-5' consumption = '14.1' capacity = '26.5'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2022' technic_type = '1' body_type = '3' date_registration = '20220826' body_number = 'Y3M63030560001937' reg_number = 'AB 2088-5' consumption = '31.5' capacity = '6.698'
axes_number = '3' paytool_id = '0112A72D0E9' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2012' technic_type = '1' body_type = '3' date_registration = '20120412' body_number = 'Y3M63030560001928' reg_number = 'AB 2089-5' consumption = '31.5' capacity = '6.605'
axes_number = '3' paytool_id = '0112A725175' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2022' technic_type = '1' body_type = '3' date_registration = '20220912' body_number = 'Y3M63030560001918' reg_number = 'AB 2087-5' consumption = '31.5' capacity = '6.52'
axes_number = '3' paytool_id = '0112A725095' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305-240М' color = '02' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200310' body_number = 'Y3M63030560001957' reg_number = 'AB 2562-5' consumption = '33.3' capacity = '6.387'
axes_number = '3' paytool_id = '0112A725360' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305-240М' color = '02' yer_creation = '2010' technic_type = '1' body_type = '3' date_registration = '20100328' body_number = 'Y3M63030560001953' reg_number = 'AB 2561-5' consumption = '33.3' capacity = '6.521'
axes_number = '3' paytool_id = '0112A7253D5' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305-240М' color = '02' yer_creation = '2017' technic_type = '1' body_type = '3' date_registration = '20170812' body_number = 'Y3M63030560001969' reg_number = 'AB 2563-5' consumption = '33.3' capacity = '6.129'
axes_number = '3' paytool_id = '0112A7251E1' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 551605' color = '02' yer_creation = '2020' technic_type = '1' body_type = '4' date_registration = '20200702' body_number = 'Y3M55160560008182' reg_number = 'AB 3136-5' consumption = '31.5' capacity = '11.94'
axes_number = '3' paytool_id = '0112A7252D9' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 551605' color = '02' yer_creation = '2012' technic_type = '1' body_type = '4' date_registration = '20120915' body_number = 'Y3M55160560008685' reg_number = 'AB 3137-5' consumption = '31.5' capacity = '11.94'
axes_number = '3' paytool_id = '0112A725378' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 551605' color = '02' yer_creation = '2013' technic_type = '1' body_type = '4' date_registration = '20130828' body_number = 'Y3M55160560008827' reg_number = 'AB 3138-5' consumption = '31.5' capacity = '11.901'
axes_number = '3' paytool_id = '0112A725329' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 53371 ОПМ-8' color = '02' yer_creation = '2018' technic_type = '1' body_type = '7' date_registration = '20180906' body_number = 'Y3M53370230000952' reg_number = 'OB 7370' consumption = '23.9' capacity = '8.7'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5337 КС 3579' color = '09' yer_creation = '2021' technic_type = '1' body_type = '9' date_registration = '20210811' body_number = 'XTM533700R0025086' reg_number = 'AM 0020-5' consumption = '35.1' capacity = '15.0'
axes_number = '2' paytool_id = '0112A7250B0' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 53366' color = '02' yer_creation = '2010' technic_type = '1' body_type = '6' date_registration = '20100405' body_number = 'Б/Н' reg_number = 'AK 9942-5' consumption = '31' capacity = '6.18' axes_number = '2'
paytool_id = '' fuel = '800000128' car_status = '2' )
( brand_id = '900000374' model = 'МАЗ 551603' color = '02' yer_creation = '2013' technic_type = '1' body_type = '4' date_registration = '20130516' body_number = 'Y3M551603W0000057' reg_number = 'AM 0024-5' consumption = '' capacity = '15.8' axes_number =
'3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5551' color = '09' yer_creation = '2015' technic_type = '1' body_type = '12' date_registration = '20150921' body_number = 'Y3M55510010066717' reg_number = 'AM 0025-5' consumption = '28' capacity = '10.17' axes_number
= '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 533702-240 ПМС' color = '02' yer_creation = '2016' technic_type = '1' body_type = '10' date_registration = '20160127' body_number = 'Y3M53370260005994' reg_number = 'AA 9634-5' consumption = '32.2' capacity = '9.95'
axes_number = '2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2023' technic_type = '1' body_type = '3' date_registration = '20230517' body_number = 'Y3M6303A5B0002219' reg_number = 'AM 0833-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '0112A725191' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 53371' color = '02' yer_creation = '2011' technic_type = '1' body_type = '2' date_registration = '20110313' body_number = 'Y3M533710Y0018108' reg_number = 'AM 0143-5' consumption = '21.9' capacity = '8.65'
axes_number = '2' paytool_id = '0112A72DBF4' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2022' technic_type = '1' body_type = '3' date_registration = '20220921' body_number = 'Y3M63030570002157' reg_number = 'AI 7098-5' consumption = '31.5' capacity = '8.232'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2018' technic_type = '1' body_type = '3' date_registration = '20180705' body_number = 'Y3M6303A590001103' reg_number = 'OA 2577-5' consumption = '33.3' capacity = '11.4'
axes_number = '3' paytool_id = '0112A7250F2' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200501' body_number = 'Y3M63030560002098' reg_number = 'AM 1878-5' consumption = '31.5' capacity = '8.692'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2011' technic_type = '1' body_type = '3' date_registration = '20110407' body_number = 'Y3M63030570002158' reg_number = 'AM 1829-5' consumption = '31.5' capacity = '6.387'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305' color = '02' yer_creation = '2015' technic_type = '1' body_type = '3' date_registration = '20150113' body_number = 'Y3M63030560002089' reg_number = 'AM 1828-5' consumption = '31.5' capacity = '8.618'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '2' )
( brand_id = '900000374' model = 'МАЗ 93866' color = '06' yer_creation = '2023' technic_type = '3' body_type = '18' date_registration = '20230523' body_number = 'XTM9386600001662' reg_number = '5005 AA-5' consumption = '9.6' capacity = '27.5' axes_number
= '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 939740' color = '05' yer_creation = '2019' technic_type = '3' body_type = '18' date_registration = '20190805' body_number = '6688' reg_number = 'A 5538 A-5' consumption = '7.7' capacity = '20.9' axes_number = '2'
paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 53362' color = '02' yer_creation = '2022' technic_type = '1' body_type = '2' date_registration = '20220214' body_number = 'XTM533620P0000297' reg_number = 'AE 4916-5' consumption = '27.1' capacity = '8.3' axes_number
= '2' paytool_id = '0112A724F49' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5336620' color = '07' yer_creation = '2019' technic_type = '1' body_type = '2' date_registration = '20190409' body_number = 'Б/Н' reg_number = 'AK 9943-5' consumption = '29.8' capacity = '8.18' axes_number = '2'
paytool_id = '0112A724FB4' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5337 КС 3577' color = '02' yer_creation = '2015' technic_type = '1' body_type = '9' date_registration = '20150123' body_number = 'XTM533700R0020823' reg_number = 'AM 0019-5' consumption = '32.3' capacity = '14.0'
axes_number = '2' paytool_id = '0112A725011' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 54329' color = '02' yer_creation = '2015' technic_type = '1' body_type = '5' date_registration = '20150609' body_number = 'Y3M543290W0009839' reg_number = 'AE 5514-5' consumption = '30' capacity = '' axes_number =
'3' paytool_id = '0112A7252B3' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 54329' color = '02' yer_creation = '2018' technic_type = '1' body_type = '5' date_registration = '20180820' body_number = 'Y3M543290X0010201' reg_number = 'AE 7465-5' consumption = '30' capacity = '' axes_number =
'3' paytool_id = '0112A72DA66' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 54329' color = '02' yer_creation = '2019' technic_type = '1' body_type = '5' date_registration = '20190325' body_number = 'Y3M543290X0010186' reg_number = 'AM 0070-5' consumption = '30' capacity = '' axes_number =
'3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 54329' color = '10' yer_creation = '2013' technic_type = '1' body_type = '5' date_registration = '20130225' body_number = 'Б/Н' reg_number = 'AM 0865-5' consumption = '30' capacity = '' axes_number = '3' paytool_id =
'' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 54329 020' color = '10' yer_creation = '2014' technic_type = '1' body_type = '5' date_registration = '20140423' body_number = 'Y3M54329010014447' reg_number = 'AH 7642-5' consumption = '30' capacity = '' axes_number
= '3' paytool_id = '011317098D9' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 93802' color = '05' yer_creation = '2013' technic_type = '3' body_type = '18' date_registration = '20130909' body_number = 'Y3M93802010000299' reg_number = '4189 KA' consumption = '9.7' capacity = '14.0' axes_number
= '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 93802' color = '05' yer_creation = '2022' technic_type = '3' body_type = '18' date_registration = '20220401' body_number = 'Y3M93802010000296' reg_number = '9349 AA-5' consumption = '9.7' capacity = '14.0'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 64229' color = '02' yer_creation = '2022' technic_type = '1' body_type = '5' date_registration = '20220711' body_number = 'Y3M64229020018430' reg_number = 'AE 3425-5' consumption = '27.1' capacity = '' axes_number =
'3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630300-2121' color = '02' yer_creation = '2012' technic_type = '1' body_type = '7' date_registration = '20120122' body_number = 'Y3M63030030002620' reg_number = 'AE 3426-5' consumption = '31.6' capacity = '14.27'
axes_number = '2' paytool_id = '0112A724F98' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 93802-050' color = '05' yer_creation = '2010' technic_type = '3' body_type = '18' date_registration = '20100829' body_number = 'Y3M93802040000486' reg_number = '8201 AA-5' consumption = '10' capacity = '14.0'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 630305-041М' color = '02' yer_creation = '2014' technic_type = '1' body_type = '3' date_registration = '20140701' body_number = 'Y3M63030540000475' reg_number = 'KE 9086' consumption = '35' capacity = '14.9'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'KUPAVA 813253' color = '08' yer_creation = '2020' technic_type = '3' body_type = '17' date_registration = '20200211' body_number = 'Y3H81325350034454' reg_number = 'A 0881 B-5' consumption = '1.7' capacity = '0.5'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 642205-220' color = '02' yer_creation = '2010' technic_type = '1' body_type = '5' date_registration = '20100101' body_number = 'Y3M64220570002040' reg_number = 'AH 0723-5' consumption = '27.1' capacity = ''
axes_number = '3' paytool_id = '01131702B4' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 642205-220' color = '02' yer_creation = '2013' technic_type = '1' body_type = '5' date_registration = '20130407' body_number = 'Y3M64220570002035' reg_number = 'AE 3150-5' consumption = '27.1' capacity = ''
axes_number = '3' paytool_id = '0113174D3E0' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800-012' color = '17' yer_creation = '2012' technic_type = '3' body_type = '18' date_registration = '20120224' body_number = 'Y3M97580070009545' reg_number = 'A 5336 A-5' consumption = '15.2' capacity = '21.2'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800-012' color = '05' yer_creation = '2010' technic_type = '3' body_type = '18' date_registration = '20100808' body_number = 'Y3M97580070009546' reg_number = 'A 5057 A-5' consumption = '15.2' capacity = '22.06'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 5337А2' color = '02' yer_creation = '2015' technic_type = '1' body_type = '3' date_registration = '20150905' body_number = 'Y3M5337A280000718' reg_number = 'AO 5261-5' consumption = '27.2' capacity = '3.37'
axes_number = '3' paytool_id = '0112A731B20' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5337А2' color = '02' yer_creation = '2012' technic_type = '1' body_type = '3' date_registration = '20120723' body_number = 'Y3M5337A280000691' reg_number = 'AE 8891-5' consumption = '27.2' capacity = '3.39'
axes_number = '3' paytool_id = '0112A725394' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 5337А2' color = '02' yer_creation = '2023' technic_type = '1' body_type = '3' date_registration = '20230511' body_number = 'Y3M5337A280000710' reg_number = 'AE 8890-5' consumption = '27.2' capacity = '3.29'
axes_number = '3' paytool_id = '0112A725344' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 938020' color = '05' yer_creation = '2010' technic_type = '3' body_type = '18' date_registration = '20100711' body_number = 'Y3M93802080000750' reg_number = 'A 5453 A-5' consumption = '9.6' capacity = '14.0'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2018' technic_type = '1' body_type = '3' date_registration = '20180425' body_number = 'Y3M6303A580000690' reg_number = 'AM 1580-5' consumption = '33.3' capacity = '11.4'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2011' technic_type = '1' body_type = '3' date_registration = '20110629' body_number = 'Y3M6303A580000648' reg_number = 'AE 9646-5' consumption = '33.3' capacity = '5.58'
axes_number = '3' paytool_id = '0112A725183' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2015' technic_type = '1' body_type = '3' date_registration = '20150302' body_number = 'Y3M6303A580000570' reg_number = 'AE 9614-5' consumption = '33.3' capacity = '5.3'
axes_number = '3' paytool_id = '0112A7250D6' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2014' technic_type = '1' body_type = '3' date_registration = '20140122' body_number = 'Y3M6303A580000665' reg_number = 'AH 1097-5' consumption = '33.3' capacity = '5.42'
axes_number = '3' paytool_id = '01132712B39' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2023' technic_type = '1' body_type = '3' date_registration = '20230608' body_number = 'Y3M6303A580000582' reg_number = 'AE 9644-5' consumption = '33.3' capacity = '5.4'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '2' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2013' technic_type = '1' body_type = '3' date_registration = '20130505' body_number = 'Y3M6303A580000586' reg_number = 'AI 0049-5' consumption = '33.3' capacity = '5.4'
axes_number = '3' paytool_id = '0112A7253A2' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2016' technic_type = '1' body_type = '3' date_registration = '20160301' body_number = 'Y3M6303A580000655' reg_number = 'AO 2867-5' consumption = '33.3' capacity = '5.5'
axes_number = '3' paytool_id = '0112A72D9A1' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2011' technic_type = '1' body_type = '3' date_registration = '20110501' body_number = 'Y3M6303A580000644' reg_number = 'AE 9645-5' consumption = '33.3' capacity = '5.4'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2016' technic_type = '1' body_type = '3' date_registration = '20160425' body_number = 'Y3M6303A580000575' reg_number = 'AI 0050-5' consumption = '33.3' capacity = '5.4'
axes_number = '3' paytool_id = '0112A725297' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200919' body_number = 'Y3M6303A580000660' reg_number = 'AE 9615-5' consumption = '33.3' capacity = '5.4'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2018' technic_type = '1' body_type = '3' date_registration = '20180718' body_number = 'Y3M6303A580000670' reg_number = 'AI 0051-5' consumption = '33.3' capacity = '5.39'
axes_number = '3' paytool_id = '0112A725214' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5' color = '02' yer_creation = '2017' technic_type = '1' body_type = '3' date_registration = '20170801' body_number = 'Y3M6303A580000682' reg_number = 'AM 1581-5' consumption = '33.3' capacity = '11.4'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 251050' color = '10' yer_creation = '2021' technic_type = '1' body_type = '13' date_registration = '20210514' body_number = 'Y3M25105090000058' reg_number = 'AI 0303-5' consumption = '32' capacity = '40' axes_number
= '2' paytool_id = '0112A725004' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 6422А5' color = '02' yer_creation = '2015' technic_type = '1' body_type = '5' date_registration = '20150402' body_number = 'Y3M6422A590001021' reg_number = 'AI 0542-5' consumption = '26.9' capacity = '' axes_number =
'3' paytool_id = '0112A7251B7' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5516А5' color = '02' yer_creation = '2015' technic_type = '1' body_type = '12' date_registration = '20150805' body_number = 'Y3M5516A590002900' reg_number = 'AI 0543-5' consumption = '45.6' capacity = '23.45'
axes_number = '2' paytool_id = '0112A724FA6' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5516А5' color = '02' yer_creation = '2012' technic_type = '1' body_type = '12' date_registration = '20120601' body_number = 'Y3M5516A590002937' reg_number = 'AI 0544-5' consumption = '45.6' capacity = '23.45'
axes_number = '2' paytool_id = '0112A724F65' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 938020' color = '05' yer_creation = '2011' technic_type = '3' body_type = '18' date_registration = '20110808' body_number = 'Y3M93802080000751' reg_number = 'A 6288 A-5' consumption = '9.3' capacity = '14.0'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '2' )
( brand_id = '900000374' model = 'KUPAVA 813270' color = '02' yer_creation = '2018' technic_type = '3' body_type = '17' date_registration = '20180523' body_number = 'Y3H81327090052138' reg_number = 'A 7094 A-5' consumption = '2.3' capacity = '0.42'
axes_number = '1' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800' color = '05' yer_creation = '2015' technic_type = '3' body_type = '18' date_registration = '20150528' body_number = 'Y3M97580080011284' reg_number = 'A 7504 A-5' consumption = '15.2' capacity = '26.5'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800' color = '05' yer_creation = '2012' technic_type = '3' body_type = '18' date_registration = '20120611' body_number = 'Y3M97580080011859' reg_number = 'A 7523 A-5' consumption = '15.2' capacity = '26.0'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 975800' color = '05' yer_creation = '2012' technic_type = '3' body_type = '18' date_registration = '20120218' body_number = 'Y3M97580080011301' reg_number = 'A 7553 A-5' consumption = '15.2' capacity = '26.5'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 5516А5' color = '02' yer_creation = '2011' technic_type = '1' body_type = '4' date_registration = '20110205' body_number = 'Y3M5516A580002480' reg_number = 'AI 6484-5' consumption = '31.5' capacity = '16.5'
axes_number = '3' paytool_id = '0112A84EF61' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5 340М' color = '02' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200322' body_number = 'Y3M6303A590001298' reg_number = 'AI 7354-5' consumption = '37' capacity = '11.4'
axes_number = '3' paytool_id = '0112A7252A5' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 6303А5 340М' color = '02' yer_creation = '2022' technic_type = '1' body_type = '3' date_registration = '20220506' body_number = 'Y3M6303A590001296' reg_number = 'AO 2539-5' consumption = '37' capacity = '11.4'
axes_number = '3' paytool_id = '0113179A292' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-321' color = '02' yer_creation = '2013' technic_type = '1' body_type = '7' date_registration = '20130925' body_number = 'Y3M6303A590001034' reg_number = 'AI 7468-5' consumption = '38' capacity = '9.88'
axes_number = '2' paytool_id = '0112A725061' fuel = '800000128' car_status = '4' )
( brand_id = '900000374' model = 'МАЗ 5433А2-320' color = '02' yer_creation = '2012' technic_type = '1' body_type = '5' date_registration = '20120307' body_number = 'Y3M5433A290000238' reg_number = 'AK 9958-5' consumption = '22.8' capacity = ''
axes_number = '3' paytool_id = '0112A7251A9' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5516А5' color = '02' yer_creation = '2023' technic_type = '1' body_type = '4' date_registration = '20230906' body_number = 'Y3M5516A590003115' reg_number = 'AI 9219-5' consumption = '31.5' capacity = '16.5'
axes_number = '3' paytool_id = '0112A725230' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5516А5' color = '02' yer_creation = '2016' technic_type = '1' body_type = '4' date_registration = '20160523' body_number = 'Y3M5516A590003215' reg_number = 'AI 9218-5' consumption = '31.5' capacity = '16.5'
axes_number = '3' paytool_id = '0112A7252F5' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5 МПЛ-2' color = '02' yer_creation = '2012' technic_type = '1' body_type = '3' date_registration = '20120829' body_number = 'Y3M6303A590001318' reg_number = 'AI 9990-5' consumption = '39.5' capacity = '10.2'
axes_number = '3' paytool_id = '0113174D6A8' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5516А5371' color = '02' yer_creation = '2017' technic_type = '1' body_type = '12' date_registration = '20170110' body_number = 'Y3M5516A5A0003662' reg_number = 'AK 0048-5' consumption = '45.6' capacity = '20.0'
axes_number = '2' paytool_id = '0112A725053' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5516А5-375' color = '02' yer_creation = '2020' technic_type = '1' body_type = '12' date_registration = '20200815' body_number = 'Y3M5516A50003878' reg_number = 'AK 0047-5' consumption = '45.6' capacity = '20.0'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '0' )
( brand_id = '900000374' model = 'МАЗ 938020' color = '10' yer_creation = '2010' technic_type = '3' body_type = '18' date_registration = '20100625' body_number = '916' reg_number = 'б/н' consumption = '9.6' capacity = '14.0' axes_number = '2' paytool_id
= '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'KUPAVA-813226' color = '02' yer_creation = '2017' technic_type = '3' body_type = '17' date_registration = '20170612' body_number = 'Y3H813226B0058849' reg_number = 'A 9930 A-5' consumption = '2.6' capacity = '0.5'
axes_number = '1' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5433А2-322' color = '02' yer_creation = '2020' technic_type = '1' body_type = '5' date_registration = '20200321' body_number = 'Y3M5433A2B0000363' reg_number = 'AK 7749-5' consumption = '24' capacity = '' axes_number
= '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 950600-(030)' color = '20' yer_creation = '2022' technic_type = '3' body_type = '18' date_registration = '20220622' body_number = 'Y3M950600B0002404' reg_number = 'A 0046 B-5' consumption = '11.5' capacity = '16.0'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '3' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-2' color = '02' yer_creation = '2022' technic_type = '1' body_type = '3' date_registration = '20220601' body_number = 'Y3M6303A5B0002223' reg_number = 'AK 8777-5' consumption = '39.5' capacity = '10.2'
axes_number = '3' paytool_id = '0112A725256' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-2' color = '02' yer_creation = '2011' technic_type = '1' body_type = '3' date_registration = '20110929' body_number = 'Y3M6303A5B0002222' reg_number = 'AK 8778-5' consumption = '39.5' capacity = '10.2'
axes_number = '3' paytool_id = '011327143B8' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-2' color = '02' yer_creation = '2023' technic_type = '1' body_type = '3' date_registration = '20230526' body_number = 'Y3M6303A5B0002126' reg_number = 'AK 8873-5' consumption = '39.5' capacity = '10.2'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А3 КС 55727-7' color = '03' yer_creation = '2014' technic_type = '1' body_type = '9' date_registration = '20140519' body_number = 'Y3M6303A3C0002210' reg_number = 'AK 8856-5' consumption = '41.2' capacity =
'25.0' axes_number = '2' paytool_id = '0112A725087' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2013' technic_type = '1' body_type = '3' date_registration = '20130202' body_number = 'Y3M6303A5C0002578' reg_number = 'AM 1879-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '0112A7252C1' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303A5-320' color = '02' yer_creation = '2022' technic_type = '1' body_type = '12' date_registration = '20220329' body_number = 'Y3M5336A5C0000768' reg_number = 'AM 2301-5' consumption = '26' capacity = '8.0'
axes_number = '2' paytool_id = '0113179C247' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5433А2-322' color = '02' yer_creation = '2020' technic_type = '1' body_type = '5' date_registration = '20200521' body_number = 'Y3M5433A2C0000382' reg_number = 'AM 2302-5' consumption = '24' capacity = '' axes_number
= '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303A5-320' color = '02' yer_creation = '2015' technic_type = '1' body_type = '12' date_registration = '20150228' body_number = 'Y3M5336A5C0002790' reg_number = 'AM 3236-5' consumption = '32.8' capacity = '12.5'
axes_number = '2' paytool_id = '0112A725159' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2018' technic_type = '1' body_type = '3' date_registration = '20180204' body_number = 'Y3M6303A5C0003049' reg_number = '2257 IP-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2016' technic_type = '1' body_type = '3' date_registration = '20160206' body_number = 'Y3M6303A5C0003025' reg_number = '2258 IP-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2013' technic_type = '1' body_type = '3' date_registration = '20130924' body_number = 'Y3M6303A5C0003043' reg_number = 'AO 4106-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '0112A7253C8' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 938020-(041)' color = '15' yer_creation = '2012' technic_type = '3' body_type = '18' date_registration = '20120909' body_number = 'Y3M938020C0000976' reg_number = 'A 1122 B-5' consumption = '9.3' capacity = '14.5'
axes_number = '2' paytool_id = '-' fuel = '-' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2015' technic_type = '1' body_type = '3' date_registration = '20150301' body_number = 'Y3M6303A5D0003123' reg_number = 'AH 9039-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '01132712BA4' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2011' technic_type = '1' body_type = '3' date_registration = '20110201' body_number = 'Y3M6303A5D0003115' reg_number = 'AH 9038-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '01132712B96' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5551А2-323' color = '02' yer_creation = '2021' technic_type = '1' body_type = '12' date_registration = '20210706' body_number = 'Y3M5551A2D0004722' reg_number = 'AM 9987-5' consumption = '28.8' capacity = '10.0'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2016' technic_type = '1' body_type = '3' date_registration = '20160808' body_number = 'Y3M6303A5D0003149' reg_number = 'AH 0719-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '01132712BD8' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2013' technic_type = '1' body_type = '3' date_registration = '20130314' body_number = 'Y3M6303A5D0003147' reg_number = 'AH 0721-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '01132712B71' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2017' technic_type = '1' body_type = '3' date_registration = '20170525' body_number = 'Y3M6303A5D0003141' reg_number = 'AH 0720-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '01132712BE6' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200601' body_number = 'Y3M6303A5D0003126' reg_number = 'AH 0794-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '01132712B13' fuel = '800000128' car_status = '3' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2010' technic_type = '1' body_type = '3' date_registration = '20100305' body_number = 'Y3M6303A5D0003162' reg_number = 'AH 4416-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '0112976CE21' fuel = '800000128' car_status = '2' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2014' technic_type = '1' body_type = '3' date_registration = '20140821' body_number = 'Y3M6303A5D0003161' reg_number = 'AH 4938-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '0113174D7C0' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2020' technic_type = '1' body_type = '3' date_registration = '20200918' body_number = 'Y3M6303A5D0003163' reg_number = 'AH 4939-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '0112А740999' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6430А8-360-020' color = '02' yer_creation = '2022' technic_type = '1' body_type = '5' date_registration = '20220922' body_number = 'Y3M6430A8D0002079' reg_number = 'AH 5047-5' consumption = '27.5' capacity = ''
axes_number = '3' paytool_id = '0113174ACB2' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6430А8-360-020' color = '02' yer_creation = '2010' technic_type = '1' body_type = '5' date_registration = '20100602' body_number = 'Y3M6430A8D0002080' reg_number = 'AH 5048-5' consumption = '27.5' capacity = ''
axes_number = '3' paytool_id = '0112A8192B2' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6430А8-360-020' color = '05' yer_creation = '2022' technic_type = '1' body_type = '5' date_registration = '20220507' body_number = 'Y3M6430A8C0002039' reg_number = 'AH 5046-5' consumption = '27.5' capacity = ''
axes_number = '3' paytool_id = '0112A725529' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303А5-360 МПЛ-1' color = '02' yer_creation = '2016' technic_type = '1' body_type = '3' date_registration = '20160611' body_number = 'Y3M6303A5D0003192' reg_number = 'AH 6643-5' consumption = '37.2' capacity = '11.4'
axes_number = '3' paytool_id = '0112A769572' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6430А8-360-020' color = '08' yer_creation = '2010' technic_type = '1' body_type = '5' date_registration = '20100309' body_number = 'Y3M6430A8D0002082' reg_number = 'AH 8878-5' consumption = '27.5' capacity = ''
axes_number = '3' paytool_id = '0112А744786' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6312В3 КС 55727А-(12)' color = '03' yer_creation = '2015' technic_type = '1' body_type = '9' date_registration = '20150204' body_number = 'Y3M6312B3D0000581' reg_number = 'AO 0376-5' consumption = '41.2' capacity =
'25.0' axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '3' )
( brand_id = '900000374' model = 'МАЗ 6430А9-1320-020' color = '05' yer_creation = '2019' technic_type = '1' body_type = '5' date_registration = '20190417' body_number = 'Y3M6430A9D0001656' reg_number = 'AO 3513-5' consumption = '26.4' capacity = ''
axes_number = '3' paytool_id = '011297295B2' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6430А9-1320-020' color = '02' yer_creation = '2017' technic_type = '1' body_type = '5' date_registration = '20170611' body_number = 'Y3M6430A9D0001663' reg_number = 'AO 3551-5' consumption = '26.4' capacity = ''
axes_number = '3' paytool_id = '01131914561' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6430А9-1320-020' color = '02' yer_creation = '2022' technic_type = '1' body_type = '5' date_registration = '20220708' body_number = 'Y3M6430A9D0001667' reg_number = 'AO 3552-5' consumption = '26.4' capacity = ''
axes_number = '3' paytool_id = '01131914561' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 5336А3-320' color = '02' yer_creation = '2016' technic_type = '1' body_type = '2' date_registration = '20160625' body_number = 'Y3M5336A3D0001715' reg_number = 'AO 4448-5' consumption = '24.8' capacity = '8.2'
axes_number = '2' paytool_id = '' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6501B9-8420-000' color = '02' yer_creation = '2014' technic_type = '1' body_type = '12' date_registration = '20140526' body_number = 'Y3M6501B9E0001086' reg_number = 'AO 4686-5' consumption = '40.6' capacity =
'19.65' axes_number = '2' paytool_id = '0112A771118' fuel = '800000128' car_status = '1' )
( brand_id = '900000374' model = 'МАЗ 6303A5 L14.78' color = '02' yer_creation = '2021' technic_type = '1' body_type = '3' date_registration = '20190611' body_number = 'Y39Y32824EG146004' reg_number = 'AO 5126-5' consumption = '37.2' capacity = '11.74'
axes_number = '3' paytool_id = '' fuel = '800000128' car_status = '3' )
( brand_id = '900000375' model = 'МЗКТ 692340 КШТ-50.01' color = '02' yer_creation = '2020' technic_type = '1' body_type = '9' date_registration = '20200612' body_number = 'Y3K69234091200362' reg_number = 'AK 3727-5' consumption = '65.6' capacity =
'50.0' axes_number = '2' paytool_id = '0112A725118' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'МТЗ-82' color = '17' yer_creation = '2017' technic_type = '2' body_type = '15' date_registration = '20170709' body_number = '362338' reg_number = 'OK-5 2904' consumption = '24' capacity = '' axes_number = '2' paytool_id
= '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'МТЗ-82 МК' color = '17' yer_creation = '2014' technic_type = '2' body_type = '15' date_registration = '20140810' body_number = '92200028' reg_number = 'OK-5 9284' consumption = '24' capacity = '' axes_number = '2'
paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'ПТ-6/2' color = '05' yer_creation = '2010' technic_type = '3' body_type = '17' date_registration = '20100118' body_number = '232' reg_number = 'OK-5 9283' consumption = '' capacity = '6.0' axes_number = '1' paytool_id =
'-' fuel = '-' car_status = '1' )
( brand_id = '900000376' model = 'ПТ-6/2' color = '05' yer_creation = '2013' technic_type = '3' body_type = '17' date_registration = '20130524' body_number = '233' reg_number = 'OK-5 9282' consumption = '' capacity = '6.0' axes_number = '1' paytool_id =
'-' fuel = '-' car_status = '1' )
( brand_id = '900000376' model = 'ПМ-480 Беларус 82.1' color = '17' yer_creation = '2020' technic_type = '2' body_type = '15' date_registration = '20200102' body_number = '808104022' reg_number = 'OK-5 9281' consumption = '24' capacity = '' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'ПМ-480 Беларус 82.1' color = '17' yer_creation = '2010' technic_type = '2' body_type = '15' date_registration = '20100408' body_number = '808104025' reg_number = 'OK-5 9285' consumption = '24' capacity = '' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'Беларус Ш-446' color = '17' yer_creation = '2015' technic_type = '2' body_type = '15' date_registration = '20150820' body_number = '004' reg_number = '1011 OK-5' consumption = '24' capacity = '' axes_number = '2'
paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'МТЗ-82 МК' color = '17' yer_creation = '2023' technic_type = '2' body_type = '15' date_registration = '20230201' body_number = '' reg_number = 'б/н' consumption = '24' capacity = '' axes_number = '2' paytool_id = '-'
fuel = '800000128' car_status = '2' )
( brand_id = '900000376' model = 'МТЗ-82 МК' color = '17' yer_creation = '2010' technic_type = '2' body_type = '15' date_registration = '20100726' body_number = '' reg_number = 'б/н' consumption = '24' capacity = '' axes_number = '2' paytool_id = '-'
fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'Беларус-82 МК' color = '17' yer_creation = '2021' technic_type = '2' body_type = '15' date_registration = '20210428' body_number = '92200131' reg_number = 'KA 3196' consumption = '24' capacity = '' axes_number = '2'
paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'ПСЕ-12.5' color = '02' yer_creation = '2018' technic_type = '3' body_type = '17' date_registration = '20180423' body_number = '' reg_number = '3927 OA' consumption = '4' capacity = '' axes_number = '1' paytool_id = '-'
fuel = '-' car_status = '3' )
( brand_id = '900000376' model = 'Беларус-82 МК' color = '17' yer_creation = '2010' technic_type = '2' body_type = '15' date_registration = '20100206' body_number = '92200070' reg_number = '2954 КА' consumption = '24' capacity = '' axes_number = '2'
paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'Беларус-422.1' color = '17' yer_creation = '2018' technic_type = '2' body_type = '15' date_registration = '20180601' body_number = '' reg_number = 'б/н' consumption = '24' capacity = '' axes_number = '2' paytool_id = '-'
fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'Беларус-422.1' color = '17' yer_creation = '2018' technic_type = '2' body_type = '15' date_registration = '20180228' body_number = '' reg_number = 'б/н' consumption = '24' capacity = '' axes_number = '2' paytool_id = '-'
fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'Беларус-82 МК' color = '17' yer_creation = '2012' technic_type = '2' body_type = '15' date_registration = '20120304' body_number = '92200081' reg_number = 'OK-5 2902' consumption = '24' capacity = '' axes_number = '2'
paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'ПМ-480 Беларус 82.1' color = '17' yer_creation = '2014' technic_type = '2' body_type = '15' date_registration = '20140711' body_number = '808106256' reg_number = 'OK-5 2901' consumption = '24' capacity = '' axes_number =
'2' paytool_id = '-' fuel = '800000128' car_status = '1' )
( brand_id = '900000376' model = 'ПТ-6/2' color = '05' yer_creation = '2016' technic_type = '3' body_type = '17' date_registration = '20160602' body_number = '310' reg_number = 'OK-5 2906' consumption = '' capacity = '6.0' axes_number = '2' paytool_id =
'-' fuel = '-' car_status = '1' )
( brand_id = '900000376' model = 'Беларус-82 МК' color = '17' yer_creation = '2015' technic_type = '2' body_type = '15' date_registration = '20150622' body_number = '92201391' reg_number = 'OK-5 9274' consumption = '24' capacity = '' axes_number = '2'
paytool_id = '-' fuel = '800000128' car_status = '4' )
( brand_id = '900000377' model = 'ПАЗ Р 32053' color = '02' yer_creation = '2012' technic_type = '1' body_type = '13' date_registration = '20120529' body_number = 'Y393205C0C0066016' reg_number = 'AM 0098-5' consumption = '28.9' capacity = '25'
axes_number = '2' paytool_id = '-' fuel = '800000124' car_status = '2' )
( brand_id = '900000378' model = 'УАЗ 315143' color = '05' yer_creation = '2023' technic_type = '1' body_type = '1' date_registration = '20230217' body_number = 'XTT31514340568123' reg_number = '5368 IН-5' consumption = '9.3' capacity = '4' axes_number =
'2' paytool_id = '-' fuel = '800000124' car_status = '1' )
( brand_id = '900000378' model = 'УАЗ 3163030' color = '05' yer_creation = '2016' technic_type = '1' body_type = '1' date_registration = '20160315' body_number = 'XTT31630060003907' reg_number = '7943 ЕК-5' consumption = '12.5' capacity = '4' axes_number
= '2' paytool_id = '-' fuel = '800000124' car_status = '1' )

    ).

    " Get Client, ID, UUID
    LOOP AT itab ASSIGNING FIELD-SYMBOL(<fs_line>).
      DATA lv_id TYPE cl_numberrange_runtime=>nr_number.
      get_nr( EXPORTING tabname   = lc_tabname
              IMPORTING client    = <fs_line>-client
                        uuid      = <fs_line>-uuid
                        nr_number = lv_id ).
      <fs_line>-id = lv_id.
    ENDLOOP.

*   delete existing entries in the database table
    DELETE FROM (lc_tabname).

*   insert the new table entries
    INSERT (lc_tabname) FROM TABLE @itab.
*    MODIFY (lc_tabname) FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } car entries inserted successfully!| ).

  ENDMETHOD.
ENDCLASS.
