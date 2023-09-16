CLASS ztda_cl_generate_address DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_GENERATE_ADDRESS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-addr.  " Имя таблицы БД в словаре
    DATA      itab       TYPE TABLE OF ztda_a_addr.                           " Имя таблицы БД в словаре

*   fill internal travel table (itab)
    itab = VALUE #(
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BB13A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '22' block = '' apartment = '88' distance = '193' phone = '8-044-7600007' email =
'8-044-7600007@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BB33A5' post_code = '' country_code = 'BY' region = '' city = 'Borisov' street = '' building = '' block = '' apartment = '' distance = '212' phone = '8-029-1426800' email = '8-029-1426800@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BB53A5' post_code = '223609' country_code = 'BY' region = 'Slutsky' city = 'Soligorsk' street = 'Youth' building = '11' block = '' apartment = '13' distance = '120' phone = '8-029-1423900' email =
'8-029-1423900@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BB73A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '10' block = '' apartment = '84' distance = '173' phone = '8-029-1457920' email =
'8-029-1457920@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BB93A5' post_code = '' country_code = 'BY' region = '' city = 'Molodechno' street = '' building = '' block = '' apartment = '' distance = '94' phone = '8-029-1427600' email = '8-029-1427600@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BBB3A5' post_code = '220134' country_code = 'BY' region = '' city = 'Minsk' street = 'Signalmen' building = '8' block = '' apartment = '73' distance = '63' phone = '8-029-6334292' email =
'8-029-6334292@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BBD3A5' post_code = '220093' country_code = 'BY' region = '' city = 'Minsk' street = 'Pushkin' building = '93' block = '' apartment = '131' distance = '124' phone = '8-044-7965039' email =
'8-044-7965039@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BBF3A5' post_code = '222306' country_code = 'BY' region = 'Chervensky' city = 'Smilovichi' street = 'Komsomolskaya' building = '27' block = '' apartment = '2' distance = '103' phone = '8-044-7965053' email =
'8-044-7965053@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BC13A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '3' block = '' apartment = '50' distance = '188' phone = '8-044-7965081' email =
'8-044-7965081@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BC33A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '18' block = '' apartment = '50' distance = '142' phone = '8-044-7965082' email =
'8-044-7965082@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BC53A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '15' block = '' apartment = '13' distance = '61' phone = '8-029-2595179' email =
'8-029-2595179@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BC73A5' post_code = '220028' country_code = 'BY' region = '' city = 'Minsk' street = 'Igumenskiy tract' building = '47' block = '' apartment = '75' distance = '45' phone = '8-029-3153541' email =
'8-029-3153541@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BC93A5' post_code = '223709' country_code = 'BY' region = '' city = 'Soligorsk' street = 'Bogomolova' building = '22' block = '' apartment = '48' distance = '116' phone = '8-029-6369205' email =
'8-029-6369205@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BCB3A5' post_code = '223707' country_code = 'BY' region = '' city = 'Soligorsk' street = 'Promenade' building = '13' block = '' apartment = '33' distance = '170' phone = '8-029-6845427' email =
'8-029-6845427@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BCD3A5' post_code = '222515' country_code = 'BY' region = '' city = 'Borisov' street = 'Labor' building = '12' block = '' apartment = '199' distance = '52' phone = '8-029-6845423' email =
'8-029-6845423@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BCF3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '20' block = '' apartment = '69' distance = '133' phone = '8-029-3152761' email =
'8-029-3152761@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BD13A5' post_code = '220065' country_code = 'BY' region = '' city = 'Minsk' street = 'Radishchev' building = '32' block = '' apartment = '' distance = '29' phone = '8-029-2697762' email =
'8-029-2697762@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BD33A5' post_code = '222302' country_code = 'BY' region = '' city = 'Molodechno' street = 'Dutko' building = '11' block = '' apartment = '4' distance = '54' phone = '8-029-6931907' email =
'8-029-6931907@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BD53A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '100' phone = '8-044-7965085' email = '8-044-7965085@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BD73A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '7' block = '' apartment = '9' distance = '116' phone = '8-029-6234372' email =
'8-029-6234372@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BD93A5' post_code = '223603' country_code = 'BY' region = '' city = 'Slutsk' street = 'Socialist' building = '143' block = '' apartment = '1,2' distance = '91' phone = '8-029-2591870' email =
'8-029-2591870@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BDB3A5' post_code = '223831' country_code = 'BY' region = 'Lubansky' city = 'The river district' street = '' building = '' block = '' apartment = '' distance = '20' phone = '8-033-3716672' email =
'8-033-3716672@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BDD3A5' post_code = '223130' country_code = 'BY' region = 'Logoysky' city = 'Pleshchenitsy' street = 'Gainenskoe Highway' building = '8а' block = '' apartment = '37' distance = '125' phone = '8-029-2712310'
email = '8-029-2712310@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BDF3A5' post_code = '223017' country_code = 'BY' region = '' city = 'Minsk' street = 'Nesterova' building = '92' block = '' apartment = '42' distance = '139' phone = '8-044-7299383' email =
'8-044-7299383@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BE13A5' post_code = '220101' country_code = 'BY' region = '' city = 'Minsk' street = 'Rokossovsky' building = '99' block = '' apartment = '31' distance = '32' phone = '8-029-6234373' email =
'8-029-6234373@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BE33A5' post_code = '220028' country_code = 'BY' region = '' city = 'Minsk' street = 'Romenskaya' building = '8' block = '' apartment = '2' distance = '224' phone = '8-029-2591871' email =
'8-029-2591871@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BE53A5' post_code = '223834' country_code = 'BY' region = 'Lubansky' city = 'Urechye-2' street = '' building = '145' block = '' apartment = '12' distance = '98' phone = '8-029-6334293' email =
'8-029-6334293@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BE73A5' post_code = '223016' country_code = 'BY' region = 'Minsk' city = 'New Yard' street = '' building = '60а' block = '' apartment = '' distance = '89' phone = '8-029-7634779' email =
'8-029-7634779@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BE93A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '124' phone = '8-029-5634513' email = '8-029-5634513@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BEB3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '8' block = '' apartment = '41' distance = '212' phone = '8-029-7026422' email =
'8-029-7026422@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BED3A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '231' phone = '8-029-3719861' email = '8-029-3719861@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BEF3A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '244' phone = '8-029-1208432' email = '8-029-1208432@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BF13A5' post_code = '223012' country_code = 'BY' region = 'Minsk' city = 'Machulishchi' street = 'Youth' building = '21' block = '' apartment = '128' distance = '167' phone = '8-029-5738224' email =
'8-029-5738224@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BF33A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '' block = '' apartment = '' distance = '179' phone = '8-029-2595177' email =
'8-029-2595177@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BF53A5' post_code = '223831' country_code = 'BY' region = 'Lubansky' city = 'The river district' street = 'May Day' building = '2g' block = '' apartment = '' distance = '121' phone = '8-044-7965054' email =
'8-044-7965054@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BF73A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '196' phone = '8-029-6740727' email = '8-029-6740727@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BF93A5' post_code = '222850' country_code = 'BY' region = 'Pukhovichsky' city = 'Rudensk' street = 'Komsomolskaya' building = '30' block = '' apartment = '' distance = '119' phone = '8-029-6016712' email =
'8-029-6016712@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BFB3A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '215' phone = '8-033-3530751' email = '8-033-3530751@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BFD3A5' post_code = '222518' country_code = 'BY' region = '' city = 'Borisov' street = 'Krasnoznamenny Lane' building = '38' block = '' apartment = '' distance = '76' phone = '8-029-5050842' email =
'8-029-5050842@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010BFF3A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '202' phone = '8-029-5723186' email = '8-029-5723186@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C013A5' post_code = '222514' country_code = 'BY' region = '' city = 'Borisov' street = 'Turgenev' building = '34' block = '' apartment = '' distance = '169' phone = '8-029-6845422' email =
'8-029-6845422@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C033A5' post_code = '222671' country_code = 'BY' region = 'Stolbtsov' city = 'Zayamnoe' street = '' building = '' block = '' apartment = '' distance = '55' phone = '8-029-6845422' email =
'8-029-6845422@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C053A5' post_code = '223609' country_code = 'BY' region = '' city = 'Slutsk' street = 'Lenin' building = '41' block = '' apartment = '513' distance = '183' phone = '8-029-5688361' email =
'8-029-5688361@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C073A5' post_code = '' country_code = 'BY' region = '' city = 'Molodechno' street = 'Guidovskaya' building = '1В' block = '' apartment = '' distance = '194' phone = '8-029-1747884' email =
'8-029-1747884@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C093A5' post_code = '222307' country_code = 'BY' region = '' city = 'Molodechno' street = 'Of the world' building = '20' block = '' apartment = '59' distance = '222' phone = '8-029-8741695' email =
'8-029-8741695@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C0B3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '2' block = '' apartment = '88' distance = '237' phone = '8-044-7025004' email =
'8-044-7025004@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C0D3A5' post_code = '' country_code = 'BY' region = '' city = 'Borisov' street = '' building = '' block = '' apartment = '' distance = '104' phone = '8-044-7965075' email = '8-044-7965075@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C0F3A5' post_code = '222301' country_code = 'BY' region = '' city = 'Molodechno' street = 'Horevich' building = '13' block = '' apartment = '3' distance = '199' phone = '8-029-6052488' email =
'8-029-6052488@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C113A5' post_code = '' country_code = 'BY' region = '' city = 'Minsk' street = 'Derzhinsky' building = '119' block = '' apartment = '121' distance = '208' phone = '8-029-6312326' email =
'8-029-6312326@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C133A5' post_code = '222397' country_code = 'BY' region = '' city = 'Myadel' street = 'O. Bychka' building = '2' block = '' apartment = '' distance = '96' phone = '8-029-8589990' email =
'8-029-8589990@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C153A5' post_code = '222404' country_code = 'BY' region = 'Myadelsky' city = 'Vygolovichi' street = 'Cheerful' building = '6' block = '' apartment = '' distance = '221' phone = '8-029-5050845' email =
'8-029-5050845@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C173A5' post_code = '222514' country_code = 'BY' region = '' city = 'Borisov' street = 'Normandy-Neman' building = '20' block = '' apartment = '180' distance = '163' phone = '8-029-5755506' email =
'8-029-5755506@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C193A5' post_code = '222306' country_code = 'BY' region = '' city = 'Minsk' street = 'Ave. of Pravda Newspaper' building = '46' block = '' apartment = '62' distance = '244' phone = '8-029-7581056' email =
'8-029-7581056@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C1B3A5' post_code = '' country_code = 'BY' region = '' city = 'Borisov' street = '' building = '' block = '' apartment = '' distance = '90' phone = '8-029-2755069' email = '8-029-2755069@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C1D3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '26' block = '' apartment = '26' distance = '115' phone = '8-029-7685158' email =
'8-029-7685158@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C1F3A5' post_code = '' country_code = 'BY' region = '' city = 'Minsk' street = 'Kizhevatova' building = '60' block = '' apartment = '612' distance = '53' phone = '8-029-2797327' email =
'8-029-2797327@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C213A5' post_code = '222302' country_code = 'BY' region = '' city = 'Molodechno' street = 'The Great Gastinets' building = '86' block = '' apartment = '3' distance = '155' phone = '8-029-8641659' email =
'8-029-8641659@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C233A5' post_code = '223927' country_code = 'BY' region = '' city = 'Hoof' street = 'Pushkin' building = '7а' block = '' apartment = '' distance = '223' phone = '8-029-5082036' email =
'8-029-5082036@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C253A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '4' block = '' apartment = '20' distance = '32' phone = '8-029-1269665' email =
'8-029-1269665@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C273A5' post_code = '222823' country_code = 'BY' region = 'Pukhovichsky' city = 'Svisloch' street = 'Builders' building = '3' block = '' apartment = '161' distance = '190' phone = '8-029-1269666' email =
'8-029-1269666@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C293A5' post_code = '223070' country_code = 'BY' region = 'Minsk' city = 'Mikhanovichi' street = 'Soviet' building = '27' block = '' apartment = '17' distance = '123' phone = '8-029-2591869' email =
'8-029-2591869@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C2B3A5' post_code = '220141' country_code = 'BY' region = '' city = 'Minsk' street = 'Rusiyanova' building = '18' block = '' apartment = '599' distance = '94' phone = '8-029-6312327' email =
'8-029-6312327@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C2D3A5' post_code = '' country_code = 'BY' region = '' city = 'Minsk' street = 'Rokossovsky' building = '122' block = '' apartment = '27' distance = '184' phone = '8-029-6327239' email =
'8-029-6327239@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C2F3A5' post_code = '' country_code = 'BY' region = 'Lubansky' city = '' street = '' building = '' block = '' apartment = '' distance = '34' phone = '8-029-6436252' email = '8-029-6436252@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C313A5' post_code = '220025' country_code = 'BY' region = '' city = 'Minsk' street = 'Cosmonauts' building = '36' block = '' apartment = '102' distance = '206' phone = '8-029-6052487' email =
'8-029-6052487@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C333A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '104' phone = '8-029-3424718' email = '8-029-3424718@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C353A5' post_code = '222811' country_code = 'BY' region = 'Pukhovichsky' city = 'Maryina Gorka' street = 'Kolasa' building = '11' block = '' apartment = '124' distance = '202' phone = '8-029-6789730' email =
'8-029-6789730@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C373A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '24' block = '' apartment = '82' distance = '143' phone = '8-029-6846658' email =
'8-029-6846658@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C393A5' post_code = '222140' country_code = 'BY' region = 'Borisovsky' city = 'Demidovka' street = 'Coastal' building = '7' block = '' apartment = '' distance = '189' phone = '8-029-2591868' email =
'8-029-2591868@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C3B3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '26' block = '' apartment = '31' distance = '82' phone = '8-029-3430253' email =
'8-029-3430253@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C3D3A5' post_code = '222306' country_code = 'BY' region = 'Lubansky' city = 'Krupeniki' street = 'Gagarina' building = '3' block = '' apartment = '' distance = '222' phone = '8-029-5767654' email =
'8-029-5767654@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C3F3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '16' block = '' apartment = '16' distance = '28' phone = '8-033-6047213' email =
'8-033-6047213@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C413A5' post_code = '223831' country_code = 'BY' region = 'Lyubansky' city = 'The river district' street = '' building = '' block = '' apartment = '' distance = '190' phone = '8-029-6740726' email =
'8-029-6740726@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C433A5' post_code = '220015' country_code = 'BY' region = '' city = 'Minsk' street = 'Belsky' building = '55' block = '' apartment = '40' distance = '119' phone = '8-029-7082373' email =
'8-029-7082373@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C453A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '38' block = '' apartment = '61' distance = '161' phone = '8-029-7501202' email =
'8-029-7501202@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C473A5' post_code = '220015' country_code = 'BY' region = '' city = 'Minsk' street = 'Beletsky' building = '50' block = '' apartment = '29' distance = '213' phone = '8-029-2583353' email =
'8-029-2583353@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C493A5' post_code = '222306' country_code = 'BY' region = '' city = 'Minsk' street = 'lane Korzhenevsky' building = '2А' block = '' apartment = '58' distance = '59' phone = '8-029-5040578' email =
'8-029-5040578@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C4B3A5' post_code = '220006' country_code = 'BY' region = '' city = 'Minsk' street = 'Nadezhdinskaya' building = '27' block = '' apartment = '67' distance = '119' phone = '8-029-3719860' email =
'8-029-3719860@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C4D3A5' post_code = '223831' country_code = 'BY' region = 'Lubansky' city = 'The river district' street = 'May Day' building = '19' block = '' apartment = '' distance = '113' phone = '8-029-7613119' email =
'8-029-7613119@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C4F3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '22' block = '' apartment = '61' distance = '47' phone = '8-029-8741694' email =
'8-029-8741694@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C513A5' post_code = '223042' country_code = 'BY' region = 'Minsk' city = 'Semkovo' street = 'lane Park' building = '4' block = '' apartment = '' distance = '97' phone = '8-029-6055401' email =
'8-029-6055401@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C533A5' post_code = '' country_code = 'BY' region = 'Minsk' city = 'Dacha' street = '' building = '5' block = '' apartment = '14' distance = '40' phone = '8-044-7518182' email = '8-044-7518182@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C553A5' post_code = '223831' country_code = 'BY' region = 'Lubansky' city = 'The river district' street = 'Voroshilov' building = '27' block = '' apartment = '' distance = '44' phone = '8-029-5739349' email =
'8-029-5739349@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C573A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Krasnoslobodskaya' building = '3' block = '' apartment = '30' distance = '78' phone = '8-029-7659481' email =
'8-029-7659481@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C593A5' post_code = '223834' country_code = 'BY' region = 'Lubansky' city = 'Urechye-2' street = '' building = '8' block = '' apartment = '26' distance = '168' phone = '8-029-5738223' email =
'8-029-5738223@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C5B3A5' post_code = '223834' country_code = 'BY' region = 'Lubansky' city = 'Urechye-2' street = '' building = '145' block = '' apartment = '57' distance = '113' phone = '8-029-7521600' email =
'8-029-7521600@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C5D3A5' post_code = '222526' country_code = 'BY' region = '' city = 'Borisov' street = 'Vatutina' building = '26' block = '' apartment = '8' distance = '130' phone = '8-029-6621806' email =
'8-029-6621806@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C5F3A5' post_code = '220028' country_code = 'BY' region = '' city = 'Minsk' street = 'Prushinsky' building = '72' block = '' apartment = '113' distance = '232' phone = '8-029-6522568' email =
'8-029-6522568@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C613A5' post_code = '220049' country_code = 'BY' region = '' city = 'Minsk' street = 'Kedyshko' building = '7а' block = '' apartment = '59' distance = '28' phone = '8-029-6386446' email =
'8-029-6386446@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C633A5' post_code = '222518' country_code = 'BY' region = '' city = 'Borisov' street = 'per . Krasnoznamenny' building = '38' block = '' apartment = '' distance = '60' phone = '8-029-6016711' email =
'8-029-6016711@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C653A5' post_code = '220028' country_code = 'BY' region = '' city = 'Minsk' street = 'Gashkevich' building = '2' block = '' apartment = '32' distance = '102' phone = '8-029-3902026' email =
'8-029-3902026@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C673A5' post_code = '222671' country_code = 'BY' region = 'Stolbtsov' city = 'I know' street = 'Pushkin' building = '2' block = '' apartment = '' distance = '141' phone = '8-029-1354526' email =
'8-029-1354526@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C693A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '231' phone = '8-029-5017394' email = '8-029-5017394@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C6B3A5' post_code = '220051' country_code = 'BY' region = '' city = 'Minsk' street = 'Rafieva' building = '93' block = '' apartment = '92' distance = '224' phone = '8-029-6135895' email =
'8-029-6135895@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C6D3A5' post_code = '220021' country_code = 'BY' region = '' city = 'Minsk' street = 'Partizansky Ave.' building = '147' block = '' apartment = '84' distance = '241' phone = '8-044-7210599' email =
'8-044-7210599@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C6F3A5' post_code = '220051' country_code = 'BY' region = '' city = 'Minsk' street = 'Rafieva' building = '81' block = '' apartment = '32' distance = '126' phone = '8-044-7025003' email =
'8-044-7025003@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C713A5' post_code = '220134' country_code = 'BY' region = '' city = 'Minsk' street = 'Odintsovo' building = '2' block = '' apartment = '364' distance = '223' phone = '8-029-7787893' email =
'8-029-7787893@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C733A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '6' block = '' apartment = '5' distance = '77' phone = '8-029-8751181' email =
'8-029-8751181@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C753A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '32' block = '' apartment = '46' distance = '46' phone = '8-029-5040577' email =
'8-029-5040577@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C773A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '10' block = '' apartment = '25' distance = '56' phone = '8-029-5633754' email =
'8-029-5633754@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C793A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '26' block = '' apartment = '113' distance = '246' phone = '8-029-7721073' email =
'8-029-7721073@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C7B3A5' post_code = '223050' country_code = 'BY' region = 'Minsk' city = 'Kolodishchi' street = 'Larionovskaya' building = '15' block = '' apartment = '' distance = '113' phone = '8-029-1064871' email =
'8-029-1064871@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C7D3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '12' block = '' apartment = '5' distance = '68' phone = '8-029-5766803' email =
'8-029-5766803@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C7F3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'New Yard' street = 'Happy' building = '4' block = '' apartment = '12' distance = '145' phone = '8-029-1830363' email =
'8-029-1830363@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C813A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Golodeda' building = '15' block = '' apartment = '83' distance = '209' phone = '8-029-1976300' email =
'8-029-1976300@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C833A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '163' phone = '8-029-6071544' email = '8-029-6071544@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C853A5' post_code = '222519' country_code = 'BY' region = '' city = 'Borisov' street = 'Dneprovskaya' building = '30' block = '' apartment = '19' distance = '125' phone = '8-029-7017116' email =
'8-029-7017116@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C873A5' post_code = '222311' country_code = 'BY' region = 'Molodechno' city = 'Turley' street = 'Chigunochnaya' building = '4' block = '' apartment = '' distance = '220' phone = '8-029-3471830' email =
'8-029-3471830@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C893A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '26' block = '' apartment = '68' distance = '139' phone = '8-029-3310179' email =
'8-029-3310179@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C8B3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '9' block = '' apartment = '13' distance = '103' phone = '8-029-6312324' email =
'8-029-6312324@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C8D3A5' post_code = '' country_code = 'BY' region = '' city = 'Soligorsk' street = '' building = '' block = '' apartment = '' distance = '22' phone = '8-029-6436251' email = '8-029-6436251@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C8F3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '26' block = '' apartment = '16' distance = '173' phone = '8-025-9881359' email =
'8-025-9881359@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C913A5' post_code = '223050' country_code = 'BY' region = 'Minsk' city = 'Tarasovo' street = 'Power engineers' building = '28' block = '' apartment = '' distance = '108' phone = '8-029-7082372' email =
'8-029-7082372@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C933A5' post_code = '220094' country_code = 'BY' region = '' city = 'Minsk' street = 'Plekhanov' building = '42' block = '' apartment = '106' distance = '97' phone = '8-029-6807175' email =
'8-029-6807175@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C953A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '26' block = '' apartment = '32' distance = '131' phone = '8-029-7772421' email =
'8-029-7772421@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C973A5' post_code = '223070' country_code = 'BY' region = 'Minsk' city = 'Mikhanovichi' street = 'Railway station' building = '19' block = '' apartment = '14' distance = '90' phone = '8-029-2695265' email =
'8-029-2695265@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C993A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '8' block = '' apartment = '23' distance = '101' phone = '8-029-6186643' email =
'8-029-6186643@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C9B3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '12' block = '' apartment = '9' distance = '216' phone = '8-029-6393615' email =
'8-029-6393615@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C9D3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '1' block = '' apartment = '11' distance = '151' phone = '8-029-7014973' email =
'8-029-7014973@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010C9F3A5' post_code = '220077' country_code = 'BY' region = '' city = 'Minsk' street = 'Avenue Tashkent' building = '4' block = '' apartment = '98' distance = '231' phone = '8-029-8751183' email =
'8-029-8751183@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CA13A5' post_code = '223320' country_code = 'BY' region = 'Berezinsky' city = 'Churchyard' street = 'School' building = '10а' block = '' apartment = '' distance = '175' phone = '8-029-5517796' email =
'8-029-5517796@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CA33A5' post_code = '222306' country_code = 'BY' region = '' city = 'Molodechno' street = '2nd lane. Dry' building = '27' block = '' apartment = '' distance = '29' phone = '8-033-3716673' email =
'8-033-3716673@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CA53A5' post_code = '222511' country_code = 'BY' region = '' city = 'Borisov' street = 'Galician' building = '5' block = '' apartment = '48' distance = '194' phone = '8-029-6839693' email =
'8-029-6839693@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CA73A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '' block = '' apartment = '' distance = '100' phone = '8-029-6799464' email =
'8-029-6799464@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CA93A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '5' block = '' apartment = '9' distance = '25' phone = '8-029-5050851' email =
'8-029-5050851@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CAB3A5' post_code = '' country_code = 'BY' region = 'Minsk' city = 'Borisov' street = '' building = '' block = '' apartment = '' distance = '114' phone = '8-029-1208431' email = '8-029-1208431@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CAD3A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Uborevich' building = '40' block = '' apartment = '59' distance = '26' phone = '8-044-7965084' email =
'8-044-7965084@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CAF3A5' post_code = '222811' country_code = 'BY' region = 'Pukhovichsky' city = 'Maryina Gorka' street = 'October' building = '59' block = '' apartment = '65' distance = '163' phone = '8-029-5050850' email =
'8-029-5050850@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CB13A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '30' block = '' apartment = '29' distance = '176' phone = '8-029-3835922' email =
'8-029-3835922@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CB33A5' post_code = '220028' country_code = 'BY' region = '' city = 'Minsk' street = 'Prushinsky' building = '72' block = '' apartment = '50' distance = '116' phone = '8-029-3649160' email =
'8-029-3649160@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CB53A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '10' block = '' apartment = '44' distance = '122' phone = '8-029-5050849' email =
'8-029-5050849@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CB73A5' post_code = '220096' country_code = 'BY' region = '' city = 'Minsk' street = 'Golodeda' building = '15' block = '' apartment = '93' distance = '168' phone = '8-029-5050847' email =
'8-029-5050847@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CB93A5' post_code = '222311' country_code = 'BY' region = 'Molodechno' city = 'Turley' street = 'Green' building = '14' block = '' apartment = '' distance = '233' phone = '8-033-6265548' email =
'8-033-6265548@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CBB3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '24' block = '' apartment = '58' distance = '135' phone = '8-029-8751184' email =
'8-029-8751184@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CBD3A5' post_code = '' country_code = 'BY' region = '' city = 'Minsk' street = 'Bachilo' building = '2' block = '' apartment = '57' distance = '161' phone = '8-029-6319311' email = '8-029-6319311@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CBF3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '14' block = '' apartment = '45' distance = '166' phone = '8-029-2797328' email =
'8-029-2797328@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CC13A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '2' block = '' apartment = '15' distance = '139' phone = '8-033-6047214' email =
'8-033-6047214@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CC33A5' post_code = '' country_code = 'BY' region = '' city = 'Minsk' street = 'prospect of Rokossovsky' building = '136' block = '' apartment = '37' distance = '241' phone = '8-029-7017117' email =
'8-029-7017117@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CC53A5' post_code = '222130' country_code = 'BY' region = 'Borisovsky' city = 'Staro-Borisov' street = 'Lenin' building = '21' block = '' apartment = '27' distance = '105' phone = '8-044-7965040' email =
'8-044-7965040@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CC73A5' post_code = '' country_code = 'BY' region = '' city = 'Borisov' street = '' building = '' block = '' apartment = '' distance = '46' phone = '8-029-5044849' email = '8-029-5044849@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CC93A5' post_code = '223070' country_code = 'BY' region = 'Minsk' city = 'Mikhanovichi' street = 'Central' building = '59' block = '' apartment = '' distance = '93' phone = '8-029-6016713' email =
'8-029-6016713@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CCB3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '' block = '' apartment = '' distance = '106' phone = '8-029-3471831' email =
'8-029-3471831@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CCD3A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '246' phone = '8-029-5050843' email = '8-029-5050843@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CCF3A5' post_code = '220075' country_code = 'BY' region = '' city = 'Minsk' street = 'Rotmistrova' building = '22' block = '' apartment = '56' distance = '110' phone = '8-029-3835923' email =
'8-029-3835923@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CD13A5' post_code = '223029' country_code = 'BY' region = 'Minsk' city = 'Churilovichi' street = 'Youth' building = '5' block = '' apartment = '5' distance = '247' phone = '8-044-7518183' email =
'8-044-7518183@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CD33A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '162' phone = '8-033-3530750' email = '8-033-3530750@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CD53A5' post_code = '223706' country_code = 'BY' region = '' city = 'Soligorsk' street = 'Park' building = '17' block = '' apartment = '47' distance = '146' phone = '8-029-6312325' email =
'8-029-6312325@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CD73A5' post_code = '220051' country_code = 'BY' region = '' city = 'Minsk' street = 'Gromova' building = '38' block = '' apartment = '28' distance = '95' phone = '8-044-7737079' email =
'8-044-7737079@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CD93A5' post_code = '222022' country_code = 'BY' region = 'Krupsky' city = 'Hotyukhovo' street = 'Soviet' building = '7' block = '' apartment = '' distance = '144' phone = '8-029-8641660' email =
'8-029-8641660@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CDB3A5' post_code = '223070' country_code = 'BY' region = 'Minsk' city = 'Mikhanovichi' street = 'Highway' building = '142' block = '' apartment = '' distance = '231' phone = '8-029-3649161' email =
'8-029-3649161@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CDD3A5' post_code = '223735' country_code = 'BY' region = 'Soligorsky' city = 'Gotsk' street = 'Polesskaya' building = '4' block = '' apartment = '' distance = '180' phone = '8-044-7965082' email =
'8-044-7965082@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CDF3A5' post_code = '223040' country_code = 'BY' region = 'Minsk' city = 'Forest' street = '' building = '' block = '' apartment = '' distance = '249' phone = '8-025-6424428' email = '8-025-6424428@gmail.com'
)
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CE13A5' post_code = '220125' country_code = 'BY' region = '' city = 'Minsk' street = 'Gintovta' building = '18' block = '' apartment = '18' distance = '39' phone = '8-029-1269664' email =
'8-029-1269664@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CE33A5' post_code = '222517' country_code = 'BY' region = '' city = 'Borisov' street = 'Gogol' building = '7' block = '' apartment = '' distance = '159' phone = '8-044-5821571' email =
'8-044-5821571@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CE53A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Lane 1st Zarechny' building = '26' block = '' apartment = '1' distance = '36' phone = '8-029-5672051' email =
'8-029-5672051@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CE73A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '9' block = '' apartment = '76' distance = '199' phone = '8-029-3835921' email =
'8-029-3835921@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CE93A5' post_code = '211710' country_code = 'BY' region = 'Dokshitsky' city = 'Parafyanovo' street = 'Sadovaya' building = '15' block = '' apartment = '' distance = '239' phone = '8-029-6737080' email =
'8-029-6737080@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CEB3A5' post_code = '222306' country_code = 'BY' region = '' city = 'Molodechno' street = 'Kolasa' building = '66' block = '' apartment = '' distance = '104' phone = '8-029-2595176' email =
'8-029-2595176@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CED3A5' post_code = '223013' country_code = 'BY' region = 'Minsk' city = 'Samokhvalovichi' street = 'Atolinskaya' building = '14' block = '' apartment = '' distance = '95' phone = '8-029-5691285' email =
'8-029-5691285@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CEF3A5' post_code = '222671' country_code = 'BY' region = 'Stolbtsov' city = 'Stecki' street = 'Lake' building = '29' block = '' apartment = '' distance = '88' phone = '8-029-7621878' email =
'8-029-7621878@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CF13A5' post_code = '231042' country_code = 'BY' region = '' city = 'Smorgon' street = 'Kutuzova' building = '21' block = '' apartment = '53' distance = '43' phone = '8-029-6025529' email =
'8-029-6025529@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CF33A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '6' block = '' apartment = '58' distance = '172' phone = '8-029-6950674' email =
'8-029-6950674@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CF53A5' post_code = '222666' country_code = 'BY' region = '' city = 'Columns' street = 'Klimuka' building = '13' block = '' apartment = '' distance = '91' phone = '8-033-6635983' email =
'8-033-6635983@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CF73A5' post_code = '' country_code = 'BY' region = '' city = 'Minsk' street = '' building = '' block = '' apartment = '' distance = '162' phone = '8-029-3282784' email = '8-029-3282784@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CF93A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Golodeda' building = '17' block = '' apartment = '33' distance = '203' phone = '8-029-6806225' email =
'8-029-6806225@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CFB3A5' post_code = '223831' country_code = 'BY' region = 'Lubansky' city = 'The river district' street = 'May Day' building = '15' block = '' apartment = '4' distance = '117' phone = '8-044-7096094' email =
'8-044-7096094@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CFD3A5' post_code = '220089' country_code = 'BY' region = '' city = 'Minsk' street = 'Perm' building = '46' block = '' apartment = '43' distance = '134' phone = '8-029-6319310' email =
'8-029-6319310@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010CFF3A5' post_code = '220024' country_code = 'BY' region = '' city = 'Minsk' street = 'Asanalieva' building = '13' block = '' apartment = '384' distance = '106' phone = '8-029-7522317' email =
'8-029-7522317@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D013A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '101' phone = '8-029-6740725' email = '8-029-6740725@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D033A5' post_code = '223701' country_code = 'BY' region = '' city = 'Soligorsk' street = 'Railway' building = '30' block = '' apartment = '38' distance = '170' phone = '8-029-1885455' email =
'8-029-1885455@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D053A5' post_code = '222304' country_code = 'BY' region = '' city = 'Molodechno' street = 'Yasinsky' building = '17' block = '' apartment = '33' distance = '99' phone = '8-029-1747883' email =
'8-029-1747883@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D073A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '142' phone = '8-029-7680940' email = '8-029-7680940@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D093A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Tashkent' building = '20' block = '' apartment = '112' distance = '99' phone = '8-029-2708799' email =
'8-029-2708799@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D0B3A5' post_code = '222850' country_code = 'BY' region = 'Pukhovichsky' city = 'Rudensk' street = 'Green' building = '7' block = '' apartment = '' distance = '24' phone = '8-029-2741090' email =
'8-029-2741090@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D0D3A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Tashkent' building = '22' block = '' apartment = '21' distance = '220' phone = '8-029-5019557' email =
'8-029-5019557@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D0F3A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '20' phone = '8-033-6265547' email = '8-033-6265547@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D113A5' post_code = '222521' country_code = 'BY' region = '' city = 'Borisov' street = '3rd lane. Panfilov' building = '20' block = '' apartment = '' distance = '94' phone = '8-029-5044848' email =
'8-029-5044848@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D133A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '30' block = '' apartment = '48' distance = '92' phone = '8-029-3649158' email =
'8-029-3649158@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D153A5' post_code = '222301' country_code = 'BY' region = '' city = 'Molodechno' street = 'Reclamation' building = '28' block = '' apartment = '1' distance = '146' phone = '8-029-5738225' email =
'8-029-5738225@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D173A5' post_code = '223701' country_code = 'BY' region = '' city = 'Soligorsk' street = 'Railway' building = '6' block = '' apartment = '21' distance = '108' phone = '8-029-3719862' email =
'8-029-3719862@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D193A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '64' phone = '8-029-2712120' email = '8-029-2712120@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D1B3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '38' block = '' apartment = '82' distance = '64' phone = '8-025-5269569' email =
'8-025-5269569@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D1D3A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '28' phone = '8-029-3835924' email = '8-029-3835924@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D1F3A5' post_code = '223130' country_code = 'BY' region = 'Logoysky' city = 'Pleshchenitsy' street = 'Profinterna' building = '29' block = '' apartment = '' distance = '103' phone = '8-029-6016714' email =
'8-029-6016714@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D213A5' post_code = '222307' country_code = 'BY' region = '' city = 'Molodechno' street = 'Of the world' building = '6' block = '' apartment = '50' distance = '86' phone = '8-029-3424719' email =
'8-029-3424719@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D233A5' post_code = '220075' country_code = 'BY' region = '' city = 'Minsk' street = 'Bachilo' building = '7' block = '' apartment = '84' distance = '54' phone = '8-033-3716674' email =
'8-033-3716674@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D253A5' post_code = '220047' country_code = 'BY' region = '' city = 'Minsk' street = 'Gerasimenko' building = '52' block = '' apartment = '106' distance = '133' phone = '8-029-3170607' email =
'8-029-3170607@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D273A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '43' phone = '8-044-5686001' email = '8-044-5686001@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D293A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '' block = '' apartment = '' distance = '78' phone = '8-029-3780976' email =
'8-029-3780976@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D2B3A5' post_code = '' country_code = 'BY' region = '' city = 'Columns' street = '' building = '' block = '' apartment = '' distance = '209' phone = '8-029-2621148' email = '8-029-2621148@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D2D3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '20' block = '' apartment = '19' distance = '91' phone = '8-025-5265587' email =
'8-025-5265587@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D2F3A5' post_code = '222518' country_code = 'BY' region = '' city = 'Borisov' street = 'Gagarina' building = '70' block = '' apartment = '17' distance = '131' phone = '8-029-6467377' email =
'8-029-6467377@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D313A5' post_code = '' country_code = 'BY' region = '' city = 'Molodechno' street = '' building = '' block = '' apartment = '' distance = '178' phone = '8-029-5050848' email = '8-029-5050848@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D333A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '20' block = '' apartment = '43' distance = '76' phone = '8-029-6799463' email =
'8-029-6799463@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D353A5' post_code = '220047' country_code = 'BY' region = '' city = 'Minsk' street = 'Nesterova' building = '62' block = '' apartment = '59' distance = '51' phone = '8-029-6435906' email =
'8-029-6435906@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D373A5' post_code = '222514' country_code = 'BY' region = '' city = 'Borisov' street = 'Normandy-Neman' building = '20' block = '' apartment = '98' distance = '96' phone = '8-029-2712311' email =
'8-029-2712311@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D393A5' post_code = '' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '' block = '' apartment = '' distance = '172' phone = '8-029-5633755' email = '8-029-5633755@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D3B3A5' post_code = '223831' country_code = 'BY' region = 'Lubansky' city = 'Luban' street = 'International' building = '68' block = '' apartment = '2' distance = '163' phone = '8-033-6305342' email =
'8-033-6305342@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D3D3A5' post_code = '220012' country_code = 'BY' region = '' city = 'Minsk' street = 'Kalinina' building = '20' block = '' apartment = '7' distance = '209' phone = '8-029-8650587' email =
'8-029-8650587@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D3F3A5' post_code = '' country_code = 'BY' region = '' city = 'Borisov' street = '' building = '' block = '' apartment = '' distance = '171' phone = '8-029-5757390' email = '8-029-5757390@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D413A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '2' block = '' apartment = '76' distance = '101' phone = '8-029-2333619' email =
'8-029-2333619@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D433A5' post_code = '' country_code = 'BY' region = '' city = 'Soligorsk' street = '' building = '' block = '' apartment = '' distance = '33' phone = '8-029-2616901' email = '8-029-2616901@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D453A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '22' block = '' apartment = '25' distance = '41' phone = '8-029-1208430' email =
'8-029-1208430@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D473A5' post_code = '222666' country_code = 'BY' region = '' city = 'Columns' street = 'Stadium' building = '27' block = '' apartment = '' distance = '234' phone = '8-029-7017118' email =
'8-029-7017118@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D493A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '5' block = '' apartment = '36' distance = '239' phone = '8-033-3530749' email =
'8-033-3530749@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D4B3A5' post_code = '220000' country_code = 'BY' region = '' city = 'Minsk' street = 'Nemanskaya' building = '73' block = '' apartment = '4' distance = '95' phone = '8-029-6898412' email =
'8-029-6898412@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D4D3A5' post_code = '220000' country_code = 'BY' region = '' city = 'Minsk' street = 'Nemanskaya' building = '73' block = '' apartment = '4' distance = '186' phone = '8-044-7518184' email =
'8-044-7518184@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D4F3A5' post_code = '223141' country_code = 'BY' region = '' city = 'Logoisk' street = 'Friendly' building = '10' block = '' apartment = '' distance = '192' phone = '8-044-7737078' email =
'8-044-7737078@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D513A5' post_code = '220075' country_code = 'BY' region = '' city = 'Minsk' street = 'Rotmistrova' building = '62' block = '' apartment = '197' distance = '125' phone = '8-029-3780975' email =
'8-029-3780975@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D533A5' post_code = '220025' country_code = 'BY' region = '' city = 'Minsk' street = 'Yesenina' building = '143' block = '' apartment = '25' distance = '89' phone = '8-029-2595178' email =
'8-029-2595178@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D553A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Cesino' street = '' building = '28' block = '' apartment = '' distance = '102' phone = '8-029-2333620' email =
'8-029-2333620@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D573A5' post_code = '220066' country_code = 'BY' region = '' city = 'Minsk' street = 'Uborevich' building = '126' block = '' apartment = '110' distance = '94' phone = '8-029-6025530' email =
'8-029-6025530@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D593A5' post_code = '' country_code = 'BY' region = 'Minsk' city = 'Minsk' street = 'Baramzina' building = '6' block = '' apartment = '50' distance = '196' phone = '8-029-5050844' email =
'8-029-5050844@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D5B3A5' post_code = '222306' country_code = 'BY' region = 'Molodechno' city = 'Tyvidovka' street = '' building = '22' block = '' apartment = '' distance = '111' phone = '8-029-6931908' email =
'8-029-6931908@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D5D3A5' post_code = '220035' country_code = 'BY' region = '' city = 'Minsk' street = 'Tarkhanova' building = '13А' block = '' apartment = '27' distance = '217' phone = '8-029-6931906' email =
'8-029-6931906@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D5F3A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '137' phone = '8-029-6696944' email = '8-029-6696944@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D613A5' post_code = '223016' country_code = 'BY' region = 'Minsk' city = 'New Yard' street = '' building = '58' block = '' apartment = '' distance = '155' phone = '8-029-8641658' email =
'8-029-8641658@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D633A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '15' block = '' apartment = '61' distance = '50' phone = '8-029-6095882' email =
'8-029-6095882@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D653A5' post_code = '220012' country_code = 'BY' region = '' city = 'Minsk' street = 'Kalinina' building = '1' block = '' apartment = '80' distance = '197' phone = '8-029-8742744' email =
'8-029-8742744@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D673A5' post_code = '223709' country_code = 'BY' region = '' city = 'Soligorsk' street = 'Bogomolova' building = '11' block = '' apartment = '104' distance = '211' phone = '8-029-6806226' email =
'8-029-6806226@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D693A5' post_code = '220051' country_code = 'BY' region = '' city = 'Minsk' street = 'Gromova' building = '26' block = '' apartment = '96' distance = '70' phone = '8-029-5739350' email =
'8-029-5739350@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D6B3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '28' block = '' apartment = '48' distance = '92' phone = '8-029-6740728' email =
'8-029-6740728@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D6D3A5' post_code = '222511' country_code = 'BY' region = '' city = 'Borisov' street = 'Builders' building = '61' block = '' apartment = '' distance = '63' phone = '8-029-8751182' email =
'8-029-8751182@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D6F3A5' post_code = '222306' country_code = 'BY' region = 'Soligorsky' city = 'Berezovka' street = 'October' building = '13' block = '' apartment = '' distance = '76' phone = '8-029-7026423' email =
'8-029-7026423@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D713A5' post_code = '' country_code = 'BY' region = 'Minsk' city = 'Mikhanovichi' street = 'Highway' building = '90' block = '' apartment = '' distance = '20' phone = '8-029-7024851' email =
'8-029-7024851@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D733A5' post_code = '' country_code = 'BY' region = '' city = 'Borisov' street = '' building = '' block = '' apartment = '' distance = '205' phone = '8-029-6453734' email = '8-029-6453734@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D753A5' post_code = '222671' country_code = 'BY' region = 'Stolbtsov' city = 'Zayamnoe' street = 'Coastal' building = '41' block = '' apartment = '' distance = '38' phone = '8-025-6424429' email =
'8-025-6424429@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D773A5' post_code = '222660' country_code = 'BY' region = '' city = 'Columns' street = 'Baginsky' building = '35А' block = '' apartment = '' distance = '111' phone = '8-044-7965083' email =
'8-044-7965083@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D793A5' post_code = '223700' country_code = 'BY' region = '' city = 'Soligorsk' street = 'October' building = '105' block = '' apartment = '10' distance = '31' phone = '8-044-5686002' email =
'8-044-5686002@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D7B3A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '93' phone = '8-029-3649159' email = '8-029-3649159@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D7D3A5' post_code = '223017' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '14' block = '' apartment = '12' distance = '215' phone = '8-029-5534241' email =
'8-029-5534241@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D7F3A5' post_code = '220037' country_code = 'BY' region = '' city = 'Minsk' street = 'Mendeleev' building = '15' block = '' apartment = '61' distance = '192' phone = '8-029-3135042' email =
'8-029-3135042@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D813A5' post_code = '220006' country_code = 'BY' region = '' city = 'Minsk' street = 'Angarskaya' building = '54' block = '' apartment = '46' distance = '211' phone = '8-029-5050846' email =
'8-029-5050846@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D833A5' post_code = '222518' country_code = 'BY' region = '' city = 'Borisov' street = 'K. Zaslonova' building = '80' block = '' apartment = '' distance = '222' phone = '8-029-5739351' email =
'8-029-5739351@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D853A5' post_code = '' country_code = 'BY' region = '' city = '' street = '' building = '' block = '' apartment = '' distance = '172' phone = '8-029-5559526' email = '8-029-5559526@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D873A5' post_code = '222120' country_code = 'BY' region = 'Borisovsky' city = 'Jortai' street = 'Central' building = '6' block = '' apartment = '' distance = '194' phone = '8-029-8200115' email =
'8-029-8200115@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D893A5' post_code = '227889' country_code = 'BY' region = 'Minsk' city = '' street = '' building = '7' block = '' apartment = '' distance = '81' phone = '8-029-6571809' email = '8-029-6571809@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D8B3A5' post_code = '222672' country_code = 'BY' region = '' city = 'Minsk' street = 'Independence' building = '20' block = '' apartment = '' distance = '21' phone = '8-029-8766561' email =
'8-029-8766561@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D8D3A5' post_code = '229215' country_code = 'BY' region = '' city = 'Minsk' street = 'Myasnikova' building = '32' block = '' apartment = '' distance = '207' phone = '8-029-8440180' email =
'8-029-8440180@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D8F3A5' post_code = '226490' country_code = 'BY' region = '' city = 'Minsk' street = 'Independence' building = '95' block = '' apartment = '' distance = '154' phone = '8-029-8321903' email =
'8-029-8321903@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D913A5' post_code = '227701' country_code = 'BY' region = '' city = 'Minsk' street = 'Moscow' building = '14' block = '' apartment = '' distance = '159' phone = '8-029-1233717' email =
'8-029-1233717@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D933A5' post_code = '221187' country_code = 'BY' region = '' city = 'Minsk' street = 'Platonov' building = '1Б' block = '' apartment = '' distance = '23' phone = '8-029-3821176' email =
'8-029-3821176@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D953A5' post_code = '228979' country_code = 'BY' region = '' city = 'Minsk' street = 'Dzerzhinsky' building = '18' block = '' apartment = '' distance = '171' phone = '8-029-3928048' email =
'8-029-3928048@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D973A5' post_code = '226637' country_code = 'BY' region = '' city = 'Minsk' street = 'Timiryazeva' building = '65А' block = '' apartment = '' distance = '31' phone = '8-029-5701936' email =
'8-029-5701936@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D993A5' post_code = '225449' country_code = 'BY' region = '' city = 'Minsk' street = 'Surganova' building = '43' block = '' apartment = '' distance = '205' phone = '8-029-6719339' email =
'8-029-6719339@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D9B3A5' post_code = '228224' country_code = 'BY' region = '' city = 'Minsk' street = 'Winners' building = '23' block = '4' apartment = '' distance = '209' phone = '8-029-8569557' email =
'8-029-8569557@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D9D3A5' post_code = '222666' country_code = 'BY' region = '' city = 'Minsk' street = 'Prytytsky' building = '60/2' block = '' apartment = '' distance = '102' phone = '8-029-9308426' email =
'8-029-9308426@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010D9F3A5' post_code = '229281' country_code = 'BY' region = '' city = 'Minsk' street = 'Communist' building = '49' block = '1' apartment = '' distance = '38' phone = '8-029-8931764' email =
'8-029-8931764@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DA13A5' post_code = '225919' country_code = 'BY' region = '' city = 'Minsk' street = 'Krasnozdnaya' building = '18' block = '' apartment = '' distance = '243' phone = '8-029-3721053' email =
'8-029-3721053@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DA33A5' post_code = '224652' country_code = 'BY' region = '' city = 'Minsk' street = 'Kropotkin' building = '44' block = '' apartment = '' distance = '103' phone = '8-029-5964110' email =
'8-029-5964110@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DA53A5' post_code = '226054' country_code = 'BY' region = '' city = 'Minsk' street = 'Masherova' building = '29' block = '' apartment = '' distance = '130' phone = '8-029-6004342' email =
'8-029-6004342@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DA73A5' post_code = '226104' country_code = 'BY' region = '' city = 'Minsk' street = 'Larionovskaya' building = '142' block = '' apartment = '' distance = '94' phone = '8-029-7485382' email =
'8-029-7485382@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DA93A5' post_code = '221888' country_code = 'BY' region = '' city = 'Borisov' street = 'Metallurgical' building = '4' block = '' apartment = '' distance = '153' phone = '8-029-6309528' email =
'8-029-6309528@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DAB3A5' post_code = '222431' country_code = 'BY' region = 'Slutsky' city = 'Gatovo' street = 'Happy' building = '' block = '' apartment = '' distance = '180' phone = '8-029-4840380' email =
'8-029-4840380@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DAD3A5' post_code = '226210' country_code = 'BY' region = '' city = 'Minsk' street = 'Golodeda' building = '18' block = '' apartment = '' distance = '113' phone = '8-029-9738346' email =
'8-029-9738346@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DAF3A5' post_code = '227508' country_code = 'BY' region = '' city = 'Molodechno' street = '' building = '7' block = '' apartment = '' distance = '61' phone = '8-029-7655533' email = '8-029-7655533@gmail.com'
)
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DB13A5' post_code = '220373' country_code = 'BY' region = '' city = 'Hoof' street = 'Dneprovskaya' building = '26' block = '' apartment = '' distance = '186' phone = '8-029-7918108' email =
'8-029-7918108@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DB33A5' post_code = '223460' country_code = 'BY' region = '' city = 'Gatovo' street = 'Chigunochnaya' building = '9' block = '' apartment = '' distance = '238' phone = '8-029-9122811' email =
'8-029-9122811@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DB53A5' post_code = '220065' country_code = 'BY' region = 'Chervensky' city = 'Svisloch' street = 'Metallurgical' building = '15' block = '' apartment = '' distance = '78' phone = '8-029-8056145' email =
'8-029-8056145@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DB73A5' post_code = '223507' country_code = 'BY' region = 'Minsk' city = 'Mikhanovichi' street = 'Metallurgical' building = '66' block = '' apartment = '' distance = '209' phone = '8-029-7364357' email =
'8-029-7364357@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DB93A5' post_code = '224706' country_code = 'BY' region = '' city = 'Minsk' street = '' building = '14' block = '' apartment = '' distance = '122' phone = '8-029-7449115' email = '8-029-7449115@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DBB3A5' post_code = '226047' country_code = 'BY' region = '' city = 'Minsk' street = 'Metallurgical' building = '29' block = '' apartment = '' distance = '117' phone = '8-029-3935997' email =
'8-029-3935997@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DBD3A5' post_code = '229117' country_code = 'BY' region = '' city = '' street = 'Power engineers' building = '21' block = '' apartment = '' distance = '59' phone = '8-029-5332242' email =
'8-029-5332242@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DBF3A5' post_code = '227177' country_code = 'BY' region = '' city = 'Minsk' street = 'Plekhanov' building = '6' block = '' apartment = '' distance = '135' phone = '8-029-2339168' email =
'8-029-2339168@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DC13A5' post_code = '222420' country_code = 'BY' region = '' city = '' street = 'Metallurgical' building = '13' block = '' apartment = '' distance = '144' phone = '8-029-1823399' email =
'8-029-1823399@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DC33A5' post_code = '227089' country_code = 'BY' region = '' city = 'Maryina Gorka' street = 'Railway station' building = '' block = '' apartment = '' distance = '28' phone = '8-029-6399910' email =
'8-029-6399910@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DC53A5' post_code = '227312' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '17' block = '' apartment = '' distance = '88' phone = '8-029-9165707' email =
'8-029-9165707@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DC73A5' post_code = '227260' country_code = 'BY' region = '' city = 'Demidovka' street = 'Metallurgical' building = '15' block = '' apartment = '' distance = '199' phone = '8-029-8816209' email =
'8-029-8816209@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DC93A5' post_code = '226737' country_code = 'BY' region = '' city = 'Gatovo' street = 'Metallurgical' building = '46' block = '' apartment = '' distance = '113' phone = '8-029-9151524' email =
'8-029-9151524@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DCB3A5' post_code = '220923' country_code = 'BY' region = 'Minsk' city = 'Krupeniki' street = 'Avenue Tashkent' building = '13' block = '' apartment = '' distance = '246' phone = '8-029-4482512' email =
'8-029-4482512@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DCD3A5' post_code = '220389' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'School' building = '' block = '' apartment = '' distance = '102' phone = '8-029-8833663' email =
'8-029-8833663@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DCF3A5' post_code = '227759' country_code = 'BY' region = '' city = 'The river district' street = '2nd lane. Dry' building = '30' block = '' apartment = '' distance = '154' phone = '8-029-8377480' email =
'8-029-8377480@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DD13A5' post_code = '224507' country_code = 'BY' region = '' city = 'Minsk' street = 'Galician' building = '17' block = '' apartment = '' distance = '175' phone = '8-029-3913444' email =
'8-029-3913444@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DD33A5' post_code = '222844' country_code = 'BY' region = 'Logoysky' city = 'Gatovo' street = 'Metallurgical' building = '' block = '' apartment = '' distance = '138' phone = '8-029-4854156' email =
'8-029-4854156@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DD53A5' post_code = '220947' country_code = 'BY' region = '' city = 'Minsk' street = 'Metallurgical' building = '20' block = '' apartment = '' distance = '219' phone = '8-029-5143237' email =
'8-029-5143237@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DD73A5' post_code = '225720' country_code = 'BY' region = '' city = 'Minsk' street = '' building = '7' block = '' apartment = '' distance = '79' phone = '8-029-7869138' email = '8-029-7869138@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DD93A5' post_code = '226539' country_code = 'BY' region = '' city = 'Minsk' street = 'Uborevich' building = '22' block = '' apartment = '' distance = '208' phone = '8-029-3984489' email =
'8-029-3984489@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DDB3A5' post_code = '226099' country_code = 'BY' region = 'Lubansky' city = 'The river district' street = 'October' building = '' block = '' apartment = '' distance = '195' phone = '8-029-2507769' email =
'8-029-2507769@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DDD3A5' post_code = '220352' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Metallurgical' building = '20' block = '' apartment = '' distance = '184' phone = '8-029-6852453' email =
'8-029-6852453@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DDF3A5' post_code = '226060' country_code = 'BY' region = 'Minsk' city = 'Semkovo' street = 'Prushinsky' building = '30' block = '' apartment = '' distance = '185' phone = '8-029-9948548' email =
'8-029-9948548@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DE13A5' post_code = '225731' country_code = 'BY' region = 'Minsk' city = 'Dacha' street = 'Metallurgical' building = '28' block = '' apartment = '' distance = '248' phone = '8-029-7138486' email =
'8-029-7138486@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DE33A5' post_code = '228571' country_code = 'BY' region = 'Minsk' city = 'The river district' street = 'Golodeda' building = '6' block = '' apartment = '' distance = '85' phone = '8-029-4711690' email =
'8-029-4711690@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DE53A5' post_code = '228900' country_code = 'BY' region = '' city = 'Minsk' street = 'Green' building = '' block = '' apartment = '' distance = '156' phone = '8-029-4629234' email = '8-029-4629234@gmail.com'
)
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DE73A5' post_code = '222534' country_code = 'BY' region = 'Minsk' city = 'Urechye-2' street = 'Metallurgical' building = '38' block = '' apartment = '' distance = '237' phone = '8-029-9461495' email =
'8-029-9461495@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DE93A5' post_code = '220572' country_code = 'BY' region = 'Minsk' city = 'Urechye-2' street = 'Bachilo' building = '' block = '' apartment = '' distance = '68' phone = '8-029-7710665' email =
'8-029-7710665@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DEB3A5' post_code = '223924' country_code = 'BY' region = 'Lubansky' city = 'Borisov' street = 'Metallurgical' building = '29' block = '' apartment = '' distance = '31' phone = '8-029-6837343' email =
'8-029-6837343@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DED3A5' post_code = '224342' country_code = 'BY' region = '' city = 'Minsk' street = 'Metallurgical' building = '6' block = '' apartment = '' distance = '117' phone = '8-029-1824352' email =
'8-029-1824352@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DEF3A5' post_code = '220249' country_code = 'BY' region = '' city = 'Minsk' street = 'prospect of Rokossovsky' building = '7' block = '' apartment = '' distance = '132' phone = '8-029-9758706' email =
'8-029-9758706@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DF13A5' post_code = '222769' country_code = 'BY' region = 'Minsk' city = 'Borisov' street = 'Lenin' building = '52' block = '' apartment = '' distance = '233' phone = '8-029-7038782' email =
'8-029-7038782@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DF33A5' post_code = '227712' country_code = 'BY' region = '' city = 'Minsk' street = '' building = '' block = '' apartment = '' distance = '119' phone = '8-029-9452039' email = '8-029-9452039@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DF53A5' post_code = '222401' country_code = 'BY' region = 'Minsk' city = '' street = 'Central' building = '' block = '' apartment = '' distance = '209' phone = '8-029-3472355' email =
'8-029-3472355@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DF73A5' post_code = '228860' country_code = 'BY' region = '' city = '' street = 'Metallurgical' building = '' block = '' apartment = '' distance = '69' phone = '8-029-7384777' email =
'8-029-7384777@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DF93A5' post_code = '227756' country_code = 'BY' region = '' city = 'Minsk' street = '' building = '20' block = '' apartment = '' distance = '64' phone = '8-029-2205025' email = '8-029-2205025@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DFB3A5' post_code = '224276' country_code = 'BY' region = '' city = 'Minsk' street = 'Rotmistrova' building = '70' block = '' apartment = '' distance = '200' phone = '8-029-8448969' email =
'8-029-8448969@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DFD3A5' post_code = '229797' country_code = 'BY' region = '' city = 'Minsk' street = 'Youth' building = '' block = '' apartment = '' distance = '164' phone = '8-029-2550534' email = '8-029-2550534@gmail.com'
)
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010DFF3A5' post_code = '229535' country_code = 'BY' region = '' city = 'Minsk' street = '' building = '20' block = '' apartment = '' distance = '65' phone = '8-029-4886413' email = '8-029-4886413@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010E013A5' post_code = '222489' country_code = 'BY' region = 'Minsk' city = 'Gatovo' street = 'Park' building = '62' block = '' apartment = '' distance = '109' phone = '8-029-6352350' email =
'8-029-6352350@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010E033A5' post_code = '222256' country_code = 'BY' region = '' city = 'Gatovo' street = 'Gromova' building = '20' block = '' apartment = '' distance = '111' phone = '8-029-7808301' email =
'8-029-7808301@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010E053A5' post_code = '224553' country_code = 'BY' region = '' city = 'Gatovo' street = 'Soviet' building = '' block = '' apartment = '' distance = '64' phone = '8-029-1533325' email = '8-029-1533325@gmail.com'
)
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010E073A5' post_code = '229000' country_code = 'BY' region = '' city = 'Gatovo' street = 'Highway' building = '68' block = '' apartment = '' distance = '91' phone = '8-029-1524801' email =
'8-029-1524801@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010E093A5' post_code = '221321' country_code = 'BY' region = '' city = 'Kolodishchi' street = 'Polesskaya' building = '20' block = '' apartment = '' distance = '212' phone = '8-029-4535812' email =
'8-029-4535812@gmail.com' )
( addr_pool_uuid = 'DEF285E354281EEE8CFADCA010E0B3A5' post_code = '222354' country_code = 'BY' region = 'Myadelsky' city = 'Dacha' street = 'Metallurgical' building = '17' block = '' apartment = '' distance = '225' phone = '8-029-1748627' email =
'8-029-1748627@gmail.com' )
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
    DELETE FROM (lc_tabname).

*   insert the new table entries
    INSERT (lc_tabname) FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } address entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
