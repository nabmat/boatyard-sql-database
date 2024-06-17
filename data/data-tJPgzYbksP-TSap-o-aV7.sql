DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `cust_fname` varchar(255) default NULL,
  `cust_lname` varchar(255) default NULL,
  `cust_addr1` varchar(255) default NULL,
  `cust_addr2` varchar(255) default NULL,
  `cust_town` varchar(255),
  `cust_postcode` varchar(10) default NULL,
  `cust_phone` varchar(100) default NULL,
  `cust_dob` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `customer` (`cust_fname`,`cust_lname`,`cust_addr1`,`cust_addr2`,`cust_town`,`cust_postcode`,`cust_phone`,`cust_dob`)
VALUES
  ("Macon","Acevedo","Ap #391-164 Non, Rd.","594-7675 Tincidunt. St.","Coldstream","VV94 3JF","(020) 1464 8339","magna"),
  ("Caesar","Mills","441-9526 Odio, Rd.","2839 Consequat Av.","Mansfield","J3 0UY","(0116) 007 0151","mus."),
  ("Baker","Rivera","397-3608 Faucibus Road","710-2456 Duis Ave","Holywell","PX2L 8LJ","0954 786 8751","Aenean"),
  ("Brennan","Clarke","830-4481 Id Avenue","6959 Praesent Rd.","St. Austell","KZ9 0HJ","0845 46 47","gravida"),
  ("Quinn","Newton","430-4858 Massa. Ave","Ap #681-3929 Malesuada Avenue","Ambleside","M9 6XC","0500 476982","Donec"),
  ("Brian","Aguilar","3432 Erat. Rd.","Ap #113-8830 Nam Road","Baltasound","K2F 6YQ","0825 612 9817","Sed"),
  ("Zephania","Morrison","188 Orci, Av.","Ap #881-1124 Id, Street","Ellesmere Port","IY5 5TI","0800 1111","eget,"),
  ("Kibo","English","695-7652 Elit Av.","772-8679 Et, Rd.","Stornaway","EO4E 6ZX","0500 349575","sit"),
  ("Azalia","Floyd","5313 Id, St.","Ap #396-4921 Vitae Ave","Yeovil","S48 1PA","(01392) 01051","est"),
  ("Candice","Meyers","P.O. Box 970, 2473 Mauris St.","Ap #896-1250 Nunc Rd.","West Ham","JC08 3IB","0800 868 6603","eu");
INSERT INTO `customer` (`cust_fname`,`cust_lname`,`cust_addr1`,`cust_addr2`,`cust_town`,`cust_postcode`,`cust_phone`,`cust_dob`)
VALUES
  ("Dominic","Hester","5436 Id Street","Ap #278-7774 Lectus Street","Barmouth","X5 7JI","0385 484 7528","nisl"),
  ("Alana","Herman","Ap #367-4852 Feugiat. Rd.","Ap #955-6494 Pede. Rd.","Callander","WU4 1FT","(0101) 987 1734","erat,"),
  ("Bree","Lopez","697-8303 Vitae Ave","Ap #294-7611 Tincidunt Rd.","Banchory","CB7M 9GN","07417 621452","id"),
  ("Caldwell","Yates","112-1108 Fermentum Ave","466 Scelerisque Rd.","Reading","CU4 4IX","056 2029 4268","tincidunt"),
  ("Imani","Hensley","Ap #140-2413 Nunc St.","Ap #965-6973 Pharetra, Street","Tongue","KJ8 0UE","(016977) 3715","Aliquam"),
  ("Armando","Estrada","Ap #313-1271 Fringilla Ave","P.O. Box 662, 8272 Sed Street","Leighton Buzzard","K6R 3VJ","(019916) 15201","dui"),
  ("Slade","Shepherd","Ap #436-3197 Facilisis Av.","7760 Mi St.","Nuneaton","QG4F 8CE","(0181) 507 8805","eget"),
  ("Rhonda","Velasquez","Ap #966-9865 Euismod Rd.","Ap #787-9913 Suspendisse St.","Hornsea","B3 7PM","0800 267 4328","dui"),
  ("Beck","Stuart","749-1133 Semper Road","Ap #233-2587 Tellus. St.","Mansfield","UE6 3UV","0800 665 1538","lectus,"),
  ("Chandler","Hamilton","Ap #319-367 Mauris. St.","Ap #265-2966 Ridiculus Road","Newton Abbot","EW41 4TH","(0110) 175 5321","ipsum");
INSERT INTO `customer` (`cust_fname`,`cust_lname`,`cust_addr1`,`cust_addr2`,`cust_town`,`cust_postcode`,`cust_phone`,`cust_dob`)
VALUES
  ("Lane","Barron","P.O. Box 361, 2232 Adipiscing, Av.","P.O. Box 528, 5298 Rutrum, Rd.","Maidstone","U1 4LT","0878 931 5314","viverra."),
  ("Bruno","Tucker","Ap #439-246 Suspendisse Street","745 Sed Avenue","Portsoy","PS3U 5NI","0800 1111","tortor."),
  ("Cullen","Lloyd","863-9283 Donec Rd.","2840 Tincidunt Avenue","Balfour","Y8C 6FX","(01489) 784222","dolor"),
  ("Colette","Jensen","771-5775 Donec Street","360-7276 Quisque Ave","Stirling","BP7 4LR","0324 167 3331","nascetur"),
  ("Rigel","Oneal","Ap #612-8586 Vehicula Avenue","122-4740 Nec Street","Salisbury","EH8P 5OF","0500 646515","ipsum"),
  ("Hamish","Ruiz","808-740 Ut, Road","851-5683 Orci Street","Helmsdale","KK7 3NL","(021) 4128 5973","ligula"),
  ("Lillian","David","1628 Dictum St.","783-8272 Commodo Ave","Kelso","ME1 0SC","(0113) 329 7383","justo"),
  ("Jermaine","Pierce","981-9025 Urna Street","703-9704 Ante. Rd.","Callander","WT3 5XB","(021) 9035 2428","vitae"),
  ("Penelope","Garrison","7114 Velit Avenue","Ap #308-3777 Ligula. Av.","Brodick","P5Y 8HU","070 3122 1316","Donec"),
  ("Erica","Castaneda","956-2762 Amet Rd.","P.O. Box 937, 9126 Elementum, Road","Sandy","MY0 4BR","0800 076578","Nam");
INSERT INTO `customer` (`cust_fname`,`cust_lname`,`cust_addr1`,`cust_addr2`,`cust_town`,`cust_postcode`,`cust_phone`,`cust_dob`)
VALUES
  ("Sonya","Owen","743-3544 Magna. Street","P.O. Box 558, 326 Cras Avenue","Prestatyn","R34 7CT","0800 301429","ullamcorper"),
  ("Callum","Holcomb","3965 Commodo Avenue","Ap #147-4981 Semper St.","Lockerbie","SS9 7XJ","(011143) 87987","eget"),
  ("Ima","Perry","286-6453 Laoreet St.","P.O. Box 996, 6149 Tristique Ave","Wrexham","M17 9RQ","(0171) 567 8221","eget"),
  ("Abdul","Sparks","P.O. Box 124, 8341 Pede. Road","P.O. Box 649, 1718 Sed Road","Aylesbury","V5 2YT","056 3106 6306","augue"),
  ("Martin","Cash","465-9760 Molestie Road","5602 Sed, St.","Menai Bridge","G8O 7DA","056 0827 9621","Donec"),
  ("Jermaine","Gray","343-8226 Etiam Avenue","2246 Ante Street","Whithorn","B2V 1EQ","0845 46 47","tempus,"),
  ("Lewis","Riddle","926-6435 In Rd.","3293 Volutpat St.","Kirriemuir","D8 8TS","056 2077 4265","semper"),
  ("Caldwell","Garrison","Ap #856-9175 Leo, Rd.","P.O. Box 559, 5634 Cum Rd.","Pontypridd","BM89 2RV","055 3493 5363","mattis."),
  ("Rudyard","Atkinson","6886 Odio St.","Ap #188-5218 Id, Avenue","Banchory","I13 7CA","(013386) 46788","magna."),
  ("Lars","William","P.O. Box 710, 9532 Donec Avenue","Ap #274-5592 Suspendisse Street","Falmouth","O1 6ST","070 1032 2131","sed,");
INSERT INTO `customer` (`cust_fname`,`cust_lname`,`cust_addr1`,`cust_addr2`,`cust_town`,`cust_postcode`,`cust_phone`,`cust_dob`)
VALUES
  ("Richard","Eaton","4069 Lorem Rd.","Ap #529-6238 Volutpat. Rd.","Ledbury","F1 8YW","0367 597 1168","ligula."),
  ("Xena","Schmidt","3057 Nec Street","Ap #773-4184 Aliquam Av.","Hawick","PN7 3IW","070 0058 5883","aliquam"),
  ("Chantale","Murphy","Ap #166-6016 Ligula. Rd.","152-1456 Ultricies Av.","Worcester","Y66 1RG","(025) 3819 1445","lorem"),
  ("Kim","Keith","4965 Molestie Avenue","875-6927 Sed, Av.","Lowestoft","QC2 5DS","055 3284 3304","faucibus"),
  ("Candace","Gilmore","Ap #755-8960 Ligula. Rd.","Ap #221-447 Diam. St.","Aberystwyth","CG8O 7JP","056 4814 6785","urna"),
  ("Nigel","Harrison","571-1478 Arcu Rd.","281-9397 Et St.","Folkestone","X7 6IM","055 9919 3231","enim."),
  ("Dora","Mack","741-8379 Nam Avenue","9766 Porttitor Rd.","Dumfries","B51 2PX","0349 165 4654","lorem"),
  ("Stone","Short","Ap #286-5325 Eu Rd.","Ap #111-990 Dui St.","Ipswich","X2O 8XE","055 1540 6455","tincidunt"),
  ("Ishmael","Maddox","9434 Mus. Road","9455 Semper, Rd.","St. David's","LJ52 3NB","0845 46 41","lobortis"),
  ("Barclay","Park","Ap #136-2251 Tincidunt Avenue","P.O. Box 292, 218 Auctor, St.","Montgomery","L1Q 2LB","(01875) 153829","Sed");
