CLASS ztda_cl_generate_customer DEFINITION
  PUBLIC
  INHERITING FROM ztda_cl_generate
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDA_CL_GENERATE_CUSTOMER IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
        CONSTANTS lc_tabname TYPE tabname VALUE ztda_cl_constants=>tabname-cust.    " Имя таблицы БД в словаре
    DATA itab       TYPE TABLE OF ztda_a_cust.                                      " Имя таблицы БД в словаре
    DATA lo_guid    TYPE REF TO if_system_uuid.
*   fill internal travel table (itab)

    itab = VALUE #(
( inn = '809001335' kpp = '' addr_id = '700002398' bank_id = '600000104' acc = 'BY20AKBB16758576587680500000' cust_name = 'LLC "Avtonoya-T"' )
( inn = '401164260' kpp = '' addr_id = '700002399' bank_id = '600000105' acc = 'BY33AKBB59725172004801300000' cust_name = 'PPO JSC "CBK-Consult" BPSRLiP' )
( inn = '401164258' kpp = '' addr_id = '700002400' bank_id = '600000106' acc = 'BY94AKBB32466103683629200000' cust_name = 'PPO TPUP "Svetlspetstekhnika"' )
( inn = '601082350' kpp = '' addr_id = '700002401' bank_id = '600000107' acc = 'BY67AKBB65186638379795900000' cust_name = 'Kravchenko D. V.' )
( inn = '601082348' kpp = '' addr_id = '700002402' bank_id = '600000108' acc = 'BY25AKBB23778580360779700000' cust_name = 'Ralko V. V.' )
( inn = '601082335' kpp = '' addr_id = '700002403' bank_id = '600000109' acc = 'BY15AKBB35469937347371500000' cust_name = 'Zabudova company store-branchPPO SOOO ""MAG-2000"" BPS of workers of chemical, mining and oil industries' )"
( inn = '601082322' kpp = '' addr_id = '700002404' bank_id = '600000110' acc = 'BY46AKBB51536100447546500000' cust_name = 'Branch "Experimental base Svisloch"' )
( inn = '601082307' kpp = '' addr_id = '700002405' bank_id = '600000111' acc = 'BY22AKBB22495282524919700000' cust_name = 'UAB "ENERSTENA"' )
( inn = '601082297' kpp = '' addr_id = '700002406' bank_id = '600000112' acc = 'BY97AKBB51245633272868000000' cust_name = 'LLC "Management company "Strait"' )
( inn = '601082284' kpp = '' addr_id = '700002407' bank_id = '600000113' acc = 'BY82AKBB56907891431889300000' cust_name = 'PPO of the municipal consulting unitary enterprise "Minsk Regional Center for Investments and Priva' )
( inn = '601082271' kpp = '' addr_id = '700002408' bank_id = '600000114' acc = 'BY66AKBB62786284127470300000' cust_name = 'Religious community "Parish of the Church of the Holy Great Martyr Paraskeva Friday in the agro-town of Malye Avtyuki' )
( inn = '401164245' kpp = '' addr_id = '700002409' bank_id = '600000115' acc = 'BY30AKBB33743234146226200000' cust_name = 'Branch of CHPTUP "ARABEY"' )
( inn = '601082269' kpp = '' addr_id = '700002410' bank_id = '600000116' acc = 'BY79AKBB59406067623312500000' cust_name = 'Branch of "WABIK" LLC "Abiboki"' )
( inn = '601082256' kpp = '' addr_id = '700002411' bank_id = '600000117' acc = 'BY29AKBB34624446931635900000' cust_name = 'Deilmann-Haniel GmbH' )
( inn = '601082243' kpp = '' addr_id = '700002412' bank_id = '600000104' acc = 'BY99AKBB92869601617618700000' cust_name = 'Branch "Mogilevoblgidromet"' )
( inn = '701485281' kpp = '' addr_id = '700002413' bank_id = '600000105' acc = 'BY18AKBB35634380543355700000' cust_name = 'LLP "Silk Road-Astana"' )
( inn = '601082230' kpp = '' addr_id = '700002414' bank_id = '600000106' acc = 'BY50AKBB36771657435275000000' cust_name = 'Branch "Gomeloblgidromet"' )
( inn = '401164232' kpp = '' addr_id = '700002415' bank_id = '600000107' acc = 'BY97AKBB46903351413388200000' cust_name = 'PPO LLC "Sunny forest"' )
( inn = '401164217' kpp = '' addr_id = '700002416' bank_id = '600000108' acc = 'BY59AKBB23213157977098900000' cust_name = 'LLC "ELTRON JAN KLEWINOWSKI SPOLRF Z OGRANICZONA ODPOWIEDZIALNOSCIA" (RP)' )
( inn = '102391399' kpp = '' addr_id = '700002417' bank_id = '600000109' acc = 'BY92AKBB16951133615025200000' cust_name = 'PT "Commercial Planet Timber OU" (Republic of Estonia)' )
( inn = '102391386' kpp = '' addr_id = '700002418' bank_id = '600000110' acc = 'BY42AKBB79582602829634900000' cust_name = 'PPO ODO "Dah" of the Belarusian Professional Union of Construction Workers and the Building Materials Industry' )
( inn = '401164204' kpp = '' addr_id = '700002419' bank_id = '600000111' acc = 'BY71AKBB49228081158275200000' cust_name = 'Kohan E. N.' )
( inn = '102391373' kpp = '' addr_id = '700002420' bank_id = '600000112' acc = 'BY35AKBB81650697243947400000' cust_name = 'Parish of the Church of the Great Martyr George the Victorious ag.Gostilovichi' )
( inn = '601082228' kpp = '' addr_id = '700002421' bank_id = '600000113' acc = 'BY27AKBB42622807486008600000' cust_name = 'UE and RZ and S "Stroykompleks"' )
( inn = '102391360' kpp = '' addr_id = '700002422' bank_id = '600000114' acc = 'BY68AKBB63048235898109600000' cust_name = 'PPO military unit 2007' )
( inn = '102391358' kpp = '' addr_id = '700002423' bank_id = '600000115' acc = 'BY96AKBB58963894942920200000' cust_name = 'Primary trade union organization of the unitary enterprise "Orsha"' )
( inn = '300995910' kpp = '' addr_id = '700002424' bank_id = '600000116' acc = 'BY90AKBB78354657435726900000' cust_name = 'The company "FARMAMARKETING LLC"' )
( inn = '102391345' kpp = '' addr_id = '700002425' bank_id = '600000117' acc = 'BY25AKBB40842854678834900000' cust_name = 'PPO LLC "AutoRiO center"' )
( inn = '401164194' kpp = '' addr_id = '700002426' bank_id = '600000104' acc = 'BY37AKBB81620051248124000000' cust_name = 'Branch "Engineering Bureau" of the Local Educational Fund "Energostroyeffektivnost"' )
( inn = '401164181' kpp = '' addr_id = '700002427' bank_id = '600000105' acc = 'BY58AKBB32451868311258200000' cust_name = 'PPO SOOO "Lekpharm"' )
( inn = '601082215' kpp = '' addr_id = '700002428' bank_id = '600000106' acc = 'BY94AKBB78247614261336300000' cust_name = 'Vorontsova E. V.' )
( inn = '102391332' kpp = '' addr_id = '700002429' bank_id = '600000107' acc = 'BY95AKBB56753567517397600000' cust_name = 'PPO institutions "Yelskaya childrens and youth school of agricultural workers"' )
( inn = '401164179' kpp = '' addr_id = '700002430' bank_id = '600000108' acc = 'BY76AKBB40562260065912300000' cust_name = 'Branch "Poultry farm Orshanskaya" JSC "Orshansky KHP"' )
( inn = '300995908' kpp = '' addr_id = '700002431' bank_id = '600000109' acc = 'BY11AKBB17387274777428700000' cust_name = 'PPO f-la "Victoriaolimpotel" KUP "Business center "Capital"' )
( inn = '102391317' kpp = '' addr_id = '700002432' bank_id = '600000110' acc = 'BY17AKBB89741718861059500000' cust_name = 'PPO institutions "Mogilev OOS RGOO "BOOR" BPSR forests and nature management' )
( inn = '701485279' kpp = '' addr_id = '700002433' bank_id = '600000111' acc = 'BY18AKBB48930180854122300000' cust_name = 'FYLANDOX HOLDING LTD' )
( inn = '102391304' kpp = '' addr_id = '700002434' bank_id = '600000112' acc = 'BY72AKBB63304192646883100000' cust_name = 'Grodno ablasnaya arganizatsia GA "Belarusskaya federatsia amatarskaga boxing"' )
( inn = '500842274' kpp = '' addr_id = '700002435' bank_id = '600000113' acc = 'BY14AKBB57565862328788900000' cust_name = 'Private limited liability company "Pfizer Export B.' )
( inn = '102391294' kpp = '' addr_id = '700002436' bank_id = '600000114' acc = 'BY44AKBB34682688748500600000' cust_name = 'V." JSC "Novinka" (simple partnership)' )
( inn = '102391281' kpp = '' addr_id = '700002437' bank_id = '600000115' acc = 'BY24AKBB76345247309746900000' cust_name = 'RO "Parish of the Church of the Holy Martyr Cyprian the Presbyter of the Yatran agro-town of Ditva Lida district"' )
( inn = '500842261' kpp = '' addr_id = '700002438' bank_id = '600000116' acc = 'BY85AKBB89577521902802900000' cust_name = 'Novobelitskaya RO G.Gomel NGO "BSZH"' )
( inn = '401164166' kpp = '' addr_id = '700002439' bank_id = '600000117' acc = 'BY10AKBB68029121298434700000' cust_name = 'PPO LLC "ECM-Gomel"' )
( inn = '401164153' kpp = '' addr_id = '700002440' bank_id = '600000104' acc = 'BY24AKBB64469347340544200000' cust_name = 'Branch "SZHB No. 3 g.Vitebsk" JSC "Krichevtsementnoshifer"' )
( inn = '300995898' kpp = '' addr_id = '700002441' bank_id = '600000105' acc = 'BY82AKBB32092896315613600000' cust_name = 'Branch of CJSC "Unifood" in the Vitebsk region' )
( inn = '300995885' kpp = '' addr_id = '700002442' bank_id = '600000106' acc = 'BY50AKBB95352340136609800000' cust_name = 'LLC IRKANERTO INVESTMENTS LTD"' )
( inn = '102391279' kpp = '' addr_id = '700002443' bank_id = '600000107' acc = 'BY41AKBB30882167416034700000' cust_name = 'PPO NWAO "MEDVAKS"' )
( inn = '102391266' kpp = '' addr_id = '700002444' bank_id = '600000108' acc = 'BY78AKBB69685917718242600000' cust_name = 'PPO of JSC "Planar"' )
( inn = '102391253' kpp = '' addr_id = '700002445' bank_id = '600000109' acc = 'BY92AKBB73501415897743600000' cust_name = 'PPO of the sports institution "Hockey club "Chemist"' )
( inn = '300995872' kpp = '' addr_id = '700002446' bank_id = '600000110' acc = 'BY50AKBB31669927398934000000' cust_name = 'Kutser Yu. I.' )
( inn = '102391240' kpp = '' addr_id = '700002447' bank_id = '600000111' acc = 'BY56AKBB52173382130869400000' cust_name = 'PPO of JSC "BBB"' )
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
    out->write( |{ sy-dbcnt } customer entries inserted successfully!| ).
  ENDMETHOD.
ENDCLASS.
