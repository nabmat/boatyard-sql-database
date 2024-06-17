DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `staff_fname` varchar(255) default NULL,
  `staff_lname` varchar(255) default NULL,
  `staff_addr1` varchar(255) default NULL,
  `staff_addr2` varchar(255) default NULL,
  `postalZip` varchar(255),
  `postalZip1` varchar(10) default NULL,
  `staff_dob` TEXT default NULL,
  `staff_workphone` varchar(100) default NULL,
  `staff_homephone` varchar(100) default NULL,
  `staff_email` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`staff_fname`,`staff_lname`,`staff_addr1`,`staff_addr2`,`postalZip`,`postalZip1`,`staff_dob`,`staff_workphone`,`staff_homephone`,`staff_email`)
VALUES
  ("Orli","Duran","281-4408 Nec St.","352-8756 Mauris St.","Menai Bridge","N5Y 1WE","eget,","0800 551568","0928 584 9631","eu.dolor.egestas@icloud.com"),
  ("Roary","Baker","399-8945 Et Avenue","395-8350 Ullamcorper, Ave","Harlech","L17 1SK","penatibus","0800 623160","07624 195254","mi.lacinia.mattis@hotmail.edu"),
  ("Tashya","Mccullough","5833 Elit, Ave","8403 Lorem Av.","Melrose","R0Q 1WI","ac","0303 750 3869","07756 744664","etiam.ligula@google.ca"),
  ("Gretchen","Mcconnell","P.O. Box 149, 4685 Etiam Road","830-1926 Nunc Av.","Rothesay","T8 7HO","quis","0825 341 5443","0800 811364","vitae@outlook.couk"),
  ("Natalie","James","446-8089 Non, St.","434-7252 Magna St.","Felixstowe","AL7 3ZK","dolor,","056 4466 2571","076 2897 5242","turpis.egestas.aliquam@google.org"),
  ("Moses","Mejia","125-5192 Et Street","4500 Amet Ave","Telford","V9 8CZ","porttitor","07718 515261","0862 222 2446","elit.pede@aol.ca"),
  ("Chanda","Boyle","732-2617 Sapien Road","Ap #916-742 Mi Av.","Boston","LO23 0YB","sem.","0845 46 49","0948 362 6162","sapien@google.net"),
  ("Russell","Norman","Ap #774-8153 Donec Av.","Ap #223-8335 Vivamus St.","Linton","SJ4V 8BV","quam","07039 325063","0500 410732","adipiscing.mauris.molestie@outlook.net"),
  ("Wallace","Lloyd","5093 Quisque St.","2542 Magnis St.","Rothesay","C6V 1IC","massa.","0335 522 9424","07624 121350","non.enim@protonmail.edu"),
  ("Dacey","Velez","870-8980 Commodo St.","P.O. Box 591, 8711 Sem, Rd.","Wellingborough","TJ52 2DV","tempus","0845 46 44","0800 1111","mauris.quis@icloud.org");
INSERT INTO `myTable` (`staff_fname`,`staff_lname`,`staff_addr1`,`staff_addr2`,`postalZip`,`postalZip1`,`staff_dob`,`staff_workphone`,`staff_homephone`,`staff_email`)
VALUES
  ("Griffin","Bender","Ap #621-2767 Ut St.","Ap #716-5114 Nunc Ave","Lerwick","V5 1UX","eget","0500 395376","0800 1111","pellentesque@aol.org"),
  ("Unity","Stout","Ap #303-9700 Eu Ave","P.O. Box 783, 8922 Vel Avenue","Aylesbury","L9 6BX","vestibulum","0800 1111","0845 46 44","curabitur.dictum@hotmail.org"),
  ("Lunea","Woodard","P.O. Box 995, 6793 Laoreet, Street","8005 Vehicula Street","Rhyl","ES2 0OM","luctus","070 1238 0437","0800 274 2411","eros.nec@yahoo.ca"),
  ("Stephen","Hooper","9478 Nonummy Rd.","789-1056 Eget St.","Abergele","FR0 0QR","Mauris","055 1657 6182","07233 112700","nunc@yahoo.ca"),
  ("Cullen","Olson","Ap #351-9991 Ut, Avenue","P.O. Box 143, 3548 Vestibulum, Road","Presteigne","V2 6JI","erat","0800 331 2115","076 5178 6124","class@aol.edu"),
  ("Hanna","Daugherty","6621 Ut Street","2536 Tincidunt. Street","Grimsby","QI7 7SS","id","0975 188 4334","070 3223 4447","malesuada@protonmail.couk"),
  ("Amos","Levy","P.O. Box 782, 994 Etiam Avenue","Ap #933-2622 Vulputate, Avenue","Poole","M83 8RY","vel","0867 745 3264","0800 725 8266","urna.justo@hotmail.edu"),
  ("Whilemina","House","Ap #679-1916 Natoque St.","412-2183 Nulla. Rd.","Kelso","YG0 7PL","Mauris","0800 378939","07624 753937","libero.integer.in@google.com"),
  ("Clio","Holder","Ap #690-7189 Dui Rd.","669-7746 Maecenas Av.","Alnwick","WQ67 5HT","non","0909 823 2629","076 2171 2163","ipsum.leo@hotmail.edu"),
  ("Ruth","Owens","250-4047 Sed, St.","7264 Lorem, Avenue","Kirriemuir","P0O 2QM","nisi","0845 46 41","0352 187 7338","risus.quisque.libero@aol.couk");
INSERT INTO `myTable` (`staff_fname`,`staff_lname`,`staff_addr1`,`staff_addr2`,`postalZip`,`postalZip1`,`staff_dob`,`staff_workphone`,`staff_homephone`,`staff_email`)
VALUES
  ("Zahir","Malone","6183 Nunc. St.","P.O. Box 910, 5245 A, Av.","Penicuik","DM6 4WT","mi","0500 645308","0800 099 9988","eu@aol.couk"),
  ("Arsenio","Clemons","Ap #709-7784 Magna. St.","Ap #735-4409 Morbi St.","New Galloway","M90 1CP","est,","0800 1111","070 3448 1518","ac.fermentum@hotmail.couk"),
  ("Xaviera","Finch","160-1153 Vehicula Av.","Ap #835-5364 Montes, Avenue","Tenby","BP66 5JR","eget","0500 975115","0800 243911","auctor.odio@google.ca"),
  ("Chancellor","Key","974-6939 A, Rd.","393-1746 Ut Street","Kinross","L18 3XQ","auctor","055 1818 2128","0800 1111","nisl.sem@google.com"),
  ("Ria","Jimenez","Ap #575-6473 Natoque Av.","6391 Ante. Street","Dumbarton","GG6W 6PJ","a,","070 8198 3225","07624 724539","pede.malesuada@google.couk"),
  ("Sade","Lawson","786-4277 Lectus, Street","Ap #808-8597 Vehicula Rd.","North Berwick","HO7K 7GJ","rutrum","0836 488 5555","0800 1111","vivamus.sit@protonmail.net"),
  ("Beverly","Cash","P.O. Box 198, 8304 Quisque Ave","463-6341 Et, St.","Weymouth","CV4P 3XU","Mauris","0500 937779","070 3822 7359","luctus.sit.amet@google.net"),
  ("Todd","French","7506 A, St.","683-6088 Cras Av.","Arbroath","YS9 6HG","Vivamus","056 3092 9716","0500 986453","curabitur.dictum@aol.org"),
  ("Lyle","Dodson","7357 Quis Rd.","P.O. Box 443, 2280 Sed Avenue","Aberystwyth","Y42 0CS","nunc","0845 46 47","0800 1111","dui.suspendisse@aol.com"),
  ("Victoria","Spence","P.O. Box 385, 821 Quam. Rd.","P.O. Box 410, 8561 Ullamcorper Av.","Amlwch","OE81 6RD","interdum","056 5247 3622","055 2347 2228","tellus.eu.augue@icloud.couk");
INSERT INTO `myTable` (`staff_fname`,`staff_lname`,`staff_addr1`,`staff_addr2`,`postalZip`,`postalZip1`,`staff_dob`,`staff_workphone`,`staff_homephone`,`staff_email`)
VALUES
  ("Hyatt","Ortega","Ap #296-1768 Neque. St.","P.O. Box 307, 1036 Vitae Av.","Grimsby","N4 1EN","iaculis","07624 123351","07864 455497","mus.proin.vel@icloud.edu"),
  ("Kermit","Rios","450-2596 Elit Ave","816-185 Ac Road","Milton Keynes","N6 0BQ","semper","0800 1111","056 4486 2181","velit.cras@outlook.org"),
  ("Mark","Reeves","906-163 Vel Road","P.O. Box 572, 4864 Rutrum Road","Hereford","B1H 5KV","nec,","07663 384710","056 6277 5373","tempus.mauris.erat@hotmail.net"),
  ("Elton","Travis","2231 Ut Ave","275-4495 Aliquet Street","Buckie","B1 2OR","velit","07624 431363","056 4605 5761","sit.amet@hotmail.ca"),
  ("Nicole","Murphy","Ap #343-7296 Vehicula Av.","P.O. Box 792, 5898 Mauris Road","Lochranza","Q2U 7FN","fermentum","0800 458 7605","070 3631 0777","et.netus@icloud.org"),
  ("Brock","Hampton","608-6970 A Rd.","230-6381 Molestie. Av.","Huntley","K0C 3NH","pede","070 3235 3877","07696 320431","consectetuer.adipiscing.elit@aol.org"),
  ("Kim","Gallegos","916-3981 Feugiat Avenue","P.O. Box 661, 4609 Odio Av.","Workington","V57 9VY","Aliquam","070 1739 3411","0800 1111","non@protonmail.org"),
  ("Jacqueline","Manning","Ap #586-5126 Urna. Rd.","870-5033 Aliquam Av.","Taunton","TY2Q 8JX","tempor,","0984 556 2427","07422 162133","libero.nec.ligula@protonmail.couk"),
  ("Alan","Salas","Ap #468-5541 Auctor, Av.","950-3729 Vitae Rd.","Thame","ND7R 8QQ","egestas.","07348 697416","055 7792 2371","eget.varius@hotmail.ca"),
  ("Kadeem","Edwards","582-7481 Morbi Road","5499 Tempor Ave","Neath","M8 5YR","Nullam","070 6345 2852","0800 262 5886","fringilla@google.net");
INSERT INTO `myTable` (`staff_fname`,`staff_lname`,`staff_addr1`,`staff_addr2`,`postalZip`,`postalZip1`,`staff_dob`,`staff_workphone`,`staff_homephone`,`staff_email`)
VALUES
  ("Leslie","Cline","Ap #182-1097 Aliquam Road","6008 Sed St.","Southwell","SS1H 0KX","mattis.","07624 817632","070 5452 3536","consectetuer@hotmail.edu"),
  ("Chloe","Carroll","P.O. Box 614, 4305 Mus. Road","380-9882 Sem, Avenue","Clovenfords","TZ55 8OU","nisi.","0800 1111","0800 588852","urna.et@yahoo.net"),
  ("Magee","Sanchez","Ap #449-2687 Eu, St.","125-1382 Consectetuer Av.","Holywell","J7H 4OS","magna","07221 854531","0500 232647","amet.lorem@outlook.org"),
  ("Amity","Little","675-8361 Metus St.","514-3263 Ut, Road","Llanwrtwd Wells","M3P 3TI","cursus","0800 815858","0800 053 5499","euismod.est@outlook.edu"),
  ("Fay","Logan","6682 Eu Ave","5771 Molestie Rd.","Chippenham","WE88 1TB","eros","0500 084495","0982 814 3554","in.lobortis@google.ca"),
  ("Breanna","Hayden","Ap #344-5923 Lacus. St.","Ap #258-8845 Scelerisque Ave","Scalloway","PJ6 8DS","a,","0958 271 1444","0995 173 2763","ipsum.phasellus@protonmail.net"),
  ("Kylynn","Lee","Ap #212-4667 Quam, St.","Ap #887-2445 Amet, Av.","Tregaron","O13 4CY","neque","0845 46 41","0800 1111","montes.nascetur@protonmail.couk"),
  ("Nevada","Ochoa","P.O. Box 676, 3418 Eu Rd.","543-9531 Sed, Av.","Hexham","A1 8WH","Aliquam","07624 251976","0500 203245","gravida.molestie@hotmail.com"),
  ("Isaac","Carroll","Ap #364-700 Risus. St.","P.O. Box 796, 8612 Nunc. Road","Great Yarmouth","I49 6LU","mollis.","0800 561 7696","07624 176335","fringilla.donec.feugiat@outlook.org"),
  ("Seth","Hebert","Ap #133-860 Iaculis St.","Ap #482-4491 Lobortis Avenue","Eyemouth","OG0 2XK","amet","056 8610 5017","07946 411315","elit.pharetra.ut@hotmail.org");
