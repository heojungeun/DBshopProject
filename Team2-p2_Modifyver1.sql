
#CREATE DATABASE SPM;
#USE SPM;


#DROP TABLE SUPPLIER;
#DROP TABLE CUSTOMER;
#DROP TABLE SHOPBAG;
#DROP TABLE CATEGORY;
#DROP TABLE SHIPCP;
#DROP TABLE SUPPLIER;
#DROP TABLE SUPPLIER_BRAND;
#DROP TABLE BRAND;
#DROP TABLE ITEM;
#DROP TABLE SHOPITEM;

CREATE TABLE CUSTOMER (
  Custom_id INT(11) NOT NULL,
  Custom_pw INT(20) NOT NULL,
  Address VARCHAR(32) NOT NULL,
  Telephone VARCHAR(32) NOT NULL,
  Sex VARCHAR(2) ,
  Age INT,
  Custom_name VARCHAR(11),
  Job VARCHAR(20),
  Type VARCHAR(15),
  PRIMARY KEY (Custom_id)
);

CREATE TABLE CATEGORY (
  Category_id INT(11) NOT NULL,
  Large_ct VARCHAR(32) NOT NULL,
  Middle_ct VARCHAR(32) NOT NULL,
  Small_ct VARCHAR(32) NOT NULL,
  PRIMARY KEY (Category_id)
);
CREATE TABLE SHIPCP (
  Ship_id INT(11) NOT NULL,
  Ship_name VARCHAR(20) NOT NULL,
  Ship_area VARCHAR(32) NOT NULL,
  PRIMARY KEY (Ship_id)
);

CREATE TABLE ORDERS(
	Octm_id INT(11) NOT NULL,
	Obag_id INT NOT NULL,
	Order_date DATETIME NOT NULL,
	Total_num INT,
	Oship_id INT NOT NULL,
	PRIMARY KEY (Octm_id, Obag_id)
);

CREATE TABLE SUPPLIER
  (
Supplier_id INT NOT NULL,
  PRIMARY KEY(Supplier_id)
  );
CREATE TABLE SUPPLIER_BRAND
  (
    S_Supplier_id INT NOT NULL,
    S_Brand_id  INT,
    PRIMARY KEY(S_Supplier_id, S_brand_id)
  );
CREATE TABLE BRAND
  (
    Brand_id   INT NOT NULL,
    Brand_name VARCHAR(20),
    PRIMARY KEY(Brand_id)
  );
CREATE TABLE ITEM
  (
    Item_code   VARCHAR(10) NOT NULL,
    Item_name   VARCHAR(30),
    Units       VARCHAR(10),
    Std_price   INT,
    Icategory_id INT,
    Ibrand_id INT,
    Stock INT,
    PRIMARY KEY(Item_code)
  );
  CREATE TABLE SHOPBAG (
    Bag_id INT(11) NOT NULL,
    Bctm_id INT(11) NOT NULL,
    Total_price VARCHAR(32) NOT NULL,
    PRIMARY KEY (Bag_id)
  );
  CREATE TABLE SHOPITEM (
    Sbag_id INT(11) NOT NULL,
    Sitem_code  VARCHAR(10) NOT NULL,
    Stotal_num INT,
    FOREIGN KEY (Sbag_id) REFERENCES SHOPBAG(Bag_id),
    FOREIGN KEY (Sitem_code) REFERENCES ITEM(Item_code),
    PRIMARY KEY (Sbag_id)
  );

INSERT INTO CUSTOMER VALUES
(10000, 20000,'aaa000', '010-1111-1111',NULL,NULL,NULL,NULL,NULL),
(10001, 20001,'aaa000', '010-7467-2111',NULL,NULL,NULL,NULL,NULL),
(10002, 20002,'aaa000', '010-4912-4701',NULL,NULL,NULL,NULL,NULL),
(10003, 20003,'aaa000', '010-9374-5864',NULL,NULL,NULL,NULL,NULL),
(10004, 20004,'aaa000', '010-9705-7507',NULL,NULL,NULL,NULL,NULL),
(10005, 20005,'aaa000', '010-9199-9770',NULL,NULL,NULL,NULL,NULL),
(10006, 20006,'aaa000', '010-5748-8896',NULL,NULL,NULL,NULL,NULL),
(10007, 20007,'aaa000', '010-4314-4595',NULL,NULL,NULL,NULL,NULL),
(10008, 20008,'aaa000', '010-1669-6751',NULL,NULL,NULL,NULL,NULL),
(10009, 20009,'aaa000', '010-7558-8648',NULL,NULL,NULL,NULL,NULL),
(10010, 20010,'aaa000', '010-9227-6911',NULL,NULL,NULL,NULL,NULL),
(10011, 20011,'aaa000', '010-1573-5417',NULL,NULL,NULL,NULL,NULL),
(10012, 20012,'aaa000', '010-1335-5393',NULL,NULL,NULL,NULL,NULL),
(10013, 20013,'aaa000', '010-4930-8289',NULL,NULL,NULL,NULL,NULL),
(10014, 20014,'aaa000', '010-1544-4096',NULL,NULL,NULL,NULL,NULL),
(10015, 20015,'aaa000', '010-5275-2813',NULL,NULL,NULL,NULL,NULL),
(10016, 20016,'aaa000', '010-5443-5830',NULL,NULL,NULL,NULL,NULL),
(10017, 20017,'aaa000', '010-1932-1332',NULL,NULL,NULL,NULL,NULL),
(10018, 20018,'aaa000', '010-3325-1846',NULL,NULL,NULL,NULL,NULL),
(10019, 20019,'aaa000', '010-3365-2020',NULL,NULL,NULL,NULL,NULL),
(10020, 20020,'bbb000', '010-9091-9517',NULL,NULL,NULL,NULL,NULL),
(10021, 20021,'bbb000', '010-4303-4885',NULL,NULL,NULL,NULL,NULL),
(10022, 20022,'bbb000', '010-2245-6212',NULL,NULL,NULL,NULL,NULL),
(10023, 20023,'bbb000', '010-9091-8540',NULL,NULL,NULL,NULL,NULL),
(10024, 20024,'bbb000', '010-8302-1012',NULL,NULL,NULL,NULL,NULL),
(10025, 20025,'bbb000', '010-3168-7685',NULL,NULL,NULL,NULL,NULL),
(10026, 20026,'bbb000', '010-4469-5548',NULL,NULL,NULL,NULL,NULL),
(10027, 20027,'bbb000', '010-1041-2930',NULL,NULL,NULL,NULL,NULL),
(10028, 20028,'bbb000', '010-8462-4555',NULL,NULL,NULL,NULL,NULL),
(10029, 20029,'bbb000', '010-3475-8917',NULL,NULL,NULL,NULL,NULL),
(10030, 20030,'bbb000', '010-9852-7728',NULL,NULL,NULL,NULL,NULL),
(10031, 20031,'bbb000', '010-4505-6397',NULL,NULL,NULL,NULL,NULL),
(10032, 20032,'bbb000', '010-4043-4007',NULL,NULL,NULL,NULL,NULL),
(10033, 20033,'bbb000', '010-3078-9755',NULL,NULL,NULL,NULL,NULL),
(10034, 20034,'bbb000', '010-8249-1708',NULL,NULL,NULL,NULL,NULL),
(10035, 20035,'bbb000', '010-6079-5191',NULL,NULL,NULL,NULL,NULL),
(10036, 20036,'bbb000', '010-2348-3517',NULL,NULL,NULL,NULL,NULL),
(10037, 20037,'bbb000', '010-8469-4165',NULL,NULL,NULL,NULL,NULL),
(10038, 20038,'bbb000', '010-5924-2950',NULL,NULL,NULL,NULL,NULL),
(10039, 20039,'bbb000', '010-3929-9730',NULL,NULL,NULL,NULL,NULL),
(10040, 20040,'ccc000', '010-2388-3291',NULL,NULL,NULL,NULL,NULL),
(10041, 20041,'ccc000', '010-6370-4570',NULL,NULL,NULL,NULL,NULL),
(10042, 20042,'ccc000', '010-6500-1627',NULL,NULL,NULL,NULL,NULL),
(10043, 20043,'ccc000', '010-9376-5923',NULL,NULL,NULL,NULL,NULL),
(10044, 20044,'ccc000', '010-6779-3488',NULL,NULL,NULL,NULL,NULL),
(10045, 20045,'ccc000', '010-4712-8847',NULL,NULL,NULL,NULL,NULL),
(10046, 20046,'ccc000', '010-2518-8586',NULL,NULL,NULL,NULL,NULL),
(10047, 20047,'ccc000', '010-1833-3020',NULL,NULL,NULL,NULL,NULL),
(10048, 20048,'ccc000', '010-2461-4653',NULL,NULL,NULL,NULL,NULL),
(10049, 20049,'ccc000', '010-3411-9815',NULL,NULL,NULL,NULL,NULL),
(10050, 20050,'ccc000', '010-6790-7214',NULL,NULL,NULL,NULL,NULL),
(10051, 20051,'ccc000', '010-2767-9286',NULL,NULL,NULL,NULL,NULL),
(10052, 20052,'ccc000', '010-1180-6846',NULL,NULL,NULL,NULL,NULL),
(10053, 20053,'ccc000', '010-8103-3804',NULL,NULL,NULL,NULL,NULL),
(10054, 20054,'ccc000', '010-9242-1250',NULL,NULL,NULL,NULL,NULL),
(10055, 20055,'ccc000', '010-3281-8162',NULL,NULL,NULL,NULL,NULL),
(10056, 20056,'ccc000', '010-2816-4677',NULL,NULL,NULL,NULL,NULL),
(10057, 20057,'ccc000', '010-8291-6528',NULL,NULL,NULL,NULL,NULL),
(10058, 20058,'ccc000', '010-2704-3136',NULL,NULL,NULL,NULL,NULL),
(10059, 20059,'ccc000', '010-5751-6670',NULL,NULL,NULL,NULL,NULL);

INSERT INTO CATEGORY VALUES
(1111, 'HHO','DC','Battery'),
(1112, 'HHO','DC','Gscissors'),
(1113, 'HHO','DC','Household'),
(1121, 'HHO','OL','Multiknife'),
(1122, 'HHO','OL','Labelprinter'),
(1123, 'HHO','OL','Light'),
(1211, 'SE','LPE','Leather'),
(1212, 'SE','LPE','Weldingcloth'),
(1213, 'SE','LPE','Weldinggloves'),
(1221, 'SE','SS','Winterization'),
(1222, 'SE','SS','Safety'),
(1223, 'SE','SS','Insulated'),
(1311, 'IS','HR','Rubberboard'),
(1312, 'IS','HR','Antivibrubber'),
(1313, 'IS','HR','Hose'),
(1321, 'IS','PG','PPPET'),
(1322, 'IS','PG','Vinyl'),
(1323, 'IS','PG','Stretchwrap');

INSERT INTO SHIPCP VALUES
('11','sp1','aaa000'),
('12','sp2','bbb000'),
('13','sp3','ccc000');

INSERT INTO SUPPLIER VALUES
(1),(2),(3),(4),(5),(6),(7);

INSERT INTO SUPPLIER_BRAND VALUES
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(2, 105),
(2, 106),
(2, 107),
(3, 108),
(3, 109),
(3, 110),
(3, 111),
(4, 112),
(4, 113),
(4, 114),
(5, 115),
(5, 116),
(5, 117),
(5, 118),
(6, 119),
(6, 120),
(6, 121),
(7, 122),
(7, 123),
(7, 124),
(7, 125);

INSERT INTO BRAND VALUES
(101, 'bexel'),
(102, 'panasonic'),
(103, 'peace'),
(104, 'dorco'),
(105, 'smato'),
(106, 'changshin'),
(107, 'gerber'),
(108, 'hanatools'),
(109, 'motex'),
(110, 'vortex'),
(111, 'maglite'),
(112, 'cretos'),
(113, 'carmelo'),
(114, 'finewell'),
(115, 'lecaf'),
(116, 'fila'),
(117, 'hwasung'),
(118, 'hwaseung'),
(119, 'ilshinrnp'),
(120, 'dspack'),
(121, 'changsung'),
(122, 'sungjin'),
(123, 'polytop'),
(124, '3M'),
(125, 'hanil');


INSERT INTO ITEM VALUES
('C142-0405', 'Battery(alkaline)', '24 / board', 670, 1111, 101, 1332),
('C142-0089', 'Battery(manganese)', '12 / board', 1400, 1111, 101, 1201),
('C142-0876', 'Rechargeablebattery(eneloop)', '1 / board', 26700, 1111, 102, 1109),
('C142-0964', 'Charger', '1 / EA', 52200, 1111 , 102, 18),
('C180-0054', 'Scissors', '1 / EA', 9200, 1112, 103, 2563),
('C180-0081', 'Pinking scissors', '1 / EA', 30400, 1112 , 103, 13),
('C186-0658', 'Scissors(office)', '1 / EA', 2900, 1112 , 104, 1654),
('C186-0649', 'Scissors(office)', '1 / EA', 5800, 1112 , 104, 1899),
('C102-3071', 'Papercup', '1 / BOX', 16800, 1113, 105, 1988),
('C171-5516', 'Smart hanger', '1 / SET', 4770, 1113, 106, 1),
('C171-5941', 'Tableware Dryingrack', '1 / EA', 32000, 1113, 106, 3454),
('C171-6278', 'Skylock', '1 / SET', 13300, 1113, 106, 16),
('C276-3112','Knife', '1 / EA', 16700, 1121, 107, 1322),
('C276-3149','Survival knife', '1 / EA', 51900, 1121, 107, 8),
('C276-3219','Multipurpose tool', '1 / EA', 83500, 1121, 107, 11),
('C176-1339','Magic cutter', '1 / SET', 70800, 1121, 108, 4),
('C184-1972','Price indicator', '1 / EA', 36000, 1122, 109, 1847),
('C184-3545','Ink', '1 / EA', 2600, 1122, 109, 4655),
('C184-2166','Tape cutter', '1 / EA', 15000, 1122, 109, 1002),
('C180-2007','Tape cutter', '1 / EA', 20400,1122 , 103, 12),
('C276-0072','Rechargeable light', '1 / EA', 171000, 1123, 110, 2450),
('C276-1220','Battery', '1 / EA', 15100, 1123, 110, 1678),
('C275-0039','Light', '1 / EA', 22600, 1123, 111, 2304),
('C275-0224','Charging unit', '1 / EA', 56500, 1123, 111, 78),
('W855-140', 'Welding gaiter', '10 / EA', 5470, 1211, 112, 1645),
('W855-139', 'Leather apron', '5 / EA', 9270, 1211, 112, 3125),
('W856-069', 'Leather apron', '5 / EA', 13100, 1211, 125, 1645),
('W856-013', 'Welding sleeve', '10 / pair', 9400, 1211, 125, 5),
('W856-021', 'Welding jacket', '1 / EA', 26200, 1212, 125, 1468),
('W856-024', 'Welding jacket', '1 / EA', 28000, 1212, 125, 13),
('W857-038', 'Welding jacket', '1 / EA', 29800, 1212, 113, 2454),
('W857-043', 'Welding pants', '1 / EA', 35800, 1212, 113, 7),
('W855-135', 'Welding gloves', '10 / pair', 3340, 1213, 112, 3445),
('W855-041', 'Work gloves', '10 / pair', 2640, 1213, 112, 1334),
('W857-030', 'Argon gloves', '10 / pair', 5960, 1213, 113, 20),
('W857-036', 'Heat-resistant gloves', '5 / pair', 9930, 1213, 113, 178),
('W850-480', 'Winter boots', '1 / pair', 14400, 1221 , 114, 1023),
('W899-248', 'Fashion boots', '1 / pair', 16200,1221 , 114, 19),
('W850-509', 'Cap fashion Boots', '1 / pair', 17100,1221, 114, 18),
('W846-461', 'Winter boots', '1 / pair', 81000, 1221,115, 0),
('W845-062', 'Safety shoes', '1 / pair', 56900, 1222, 115, 142),
('W845-050', 'Safety shoes', '1 / pair', 42800, 1222, 115, 10),
('W864-112', 'Safety shoes', '1 / pair', 59200,1222 , 116, 48),
('W864-044', 'Safety shoes', '1 / pair', 89800, 1222, 116, 0),
('W845-246', 'Insulating shoes', '1 / pair', 64300,1223 , 115, 462),
('W845-143', 'Insulating shoes', '1 / pair', 61400,1223 , 115, 6),
('W864-996', 'Safety shoes', '1 / pair', 59000, 1223, 116, 8),
('W864-893', 'Insulating shoes', '1 / pair', 90500, 1223, 116, 19),
('W103-959', 'Plain rubber plate', '1 / roll', 95300, 1311, 105, 4511),
('W103-961', 'Plain rubber plate', '1 / roll', 191000, 1311, 105, 1574),
('W800-122', 'Green rubber plate', '1 / EA', 245000,1311 , 118, 1677),
('W800-112', 'Black rubber plate', '1 / EA', 143000,1311 , 118, 1844),
('W805-041', 'Piece rubber foot', '20 / EA', 360,1312 , 117, 4684),
('W805-058', 'Circular anti-vibration rubber', '1 / EA', 1340, 1312, 117, 1624),
('W805-221', 'Square anti-vibration rubber', '1 / EA', 6950,1312 , 119, 1874),
('W805-189', 'Bolt anti-vibration rubber', '1 / EA', 2860,1312 , 119, 64),
('W103-379', 'Pair rubber hose', '1 / EA', 29500,1313 , 105, 134),
('W800-069', 'High pressure hose', '100 / M', 2550,1313 , 118, 1541),
('W800-024', 'Sand hose', '1 / EA', 334000,1313 , 118, 5),
('W800-208', 'Paint hose', '1 / roll', 36300,1313 , 118, 12),
('W892-030', 'PETband', '1 / EA', 94000, 1321, 120, 3468),
('W892-033', 'PETband', '1 / BOX', 88000, 1321, 120, 12),
('W892-150', 'PPband(manual)', '1 / EA', 16500, 1321, 121, 868),
('W892-144', 'PPband(auto)', '1 / EA', 18900, 1321, 121, 5),
('W891-083', 'Disposable table cloth', '1 / BOX', 12700, 1322, 122, 978),
('W891-084', 'Disposable table cloth', '1 / BOX', 13800, 1322, 122, 135),
('W890-371', 'Tent sheet', '1 / EA', 123000, 1322, 123, 4875),
('W890-370', 'Tent sheet', '1 / EA', 267000, 1322, 123, 0),
('W890-185', 'Stretch wrap', '4 / EA', 12100, 1323, 105, 2465),
('W890-159', 'Machine wrap', '1 / EA', 70800, 1323, 105, 1342),
('W825-340', 'Stretch wrap', '4 / EA', 14800, 1323, 124, 3785),
('W825-423', 'Stretch wrap', '4 / EA', 15900, 1323, 124, 0);


#(Octm_id,Obag_id,Order_date,Total_num,Oship_id)
INSERT INTO ORDERS VALUES
(10000,30000,"2017-07-05 01:00:00",5,12),
(10001,30001,"2017-07-05 02:00:00",4,13),
(10002,30002,"2017-07-05 06:30:00",5,11),
(10003,30003,"2017-05-04 06:30:00",1,12),
(10004,30004,"2017-05-03 06:30:00",5,11),
(10005,30005,"2017-05-05 06:30:00",8,12),
(10006,30006,"2017-05-05 07:30:00",5,11),
(10007,30007,"2017-05-02 06:30:00",5,11),
(10008,30008,"2017-05-05 03:30:00",5,11),
(10009,30009,"2017-05-05 02:30:00",5,13),
(10010,30010,"2017-05-05 03:30:00",1,12),
(10011,30011,"2017-05-03 06:30:00",2,12),
(10012,30012,"2017-05-05 06:30:00",5,12),
(10013,30013,"2017-05-05 01:30:00",5,11),
(10014,30014,"2017-05-01 10:30:00",5,12),
(10015,30015,"2017-05-05 06:30:00",5,11),
(10016,30016,"2017-05-02 16:30:00",2,11),
(10017,30017,"2017-07-05 06:30:00",5,12),
(10018,30018,"2017-07-05 17:30:00",5,12),
(10019,30019,"2017-07-14 06:30:00",5,11),
(10020,30020,"2017-07-05 06:30:00",4,12),
(10021,30021,"2017-07-05 19:30:00",5,11),
(10022,30022,"2017-07-05 06:30:00",15,11),
(10023,30023,"2017-07-22 20:30:00",5,11),
(10024,30024,"2017-07-05 06:30:00",5,11),
(10025,30025,"2017-07-30 06:30:00",5,11),
(10026,30026,"2017-07-23 15:30:00",8,12),
(10027,30027,"2017-07-29 19:30:00",1,13),
(10028,30028,"2017-07-01 20:00:00",2,11),
(10029,30029,"2017-07-02 21:00:00",5,12);


INSERT INTO SHOPBAG VALUES
(30000, 10000, 670),
(30001, 10001, 1400),
(30002, 10002, 26700),
(30003, 10003, 52200),
(30004, 10004, 9200),
(30005, 10005, 30400),
(30006, 10006, 2900),
(30007, 10007, 5800),
(30008, 10008, 16800),
(30009, 10009, 4770),
(30010, 10010, 32000),
(30011, 10011, 13300),
(30012, 10012, 16700),
(30013, 10013, 51900),
(30014, 10014, 83500),
(30015, 10015, 70800),
(30016, 10016, 36000),
(30017, 10017, 2600),
(30018, 10018, 15000),
(30019, 10019, 20400),
(30020, 10020, 0),
(30021, 10021, 0),
(30022, 10022, 0),
(30023, 10023, 0),
(30024, 10024, 0),
(30025, 10025, 0),
(30026, 10026, 0),
(30027, 10027, 0),
(30028, 10028, 0),
(30029, 10029, 0);

INSERT INTO SHOPITEM VALUES
(30000, 'C142-0405', 1), #670
(30001, 'C142-0089', 1), #1400
(30002, 'C142-0876', 1), #26700
(30003, 'C142-0964', 1), #52200
(30004, 'C180-0054', 1), #9200
(30005, 'C180-0081', 1), #30400
(30006, 'C186-0658', 1), #2900
(30007, 'C186-0649', 1), #5800
(30008, 'C102-3071', 1), #16800
(30009, 'C171-5516', 1), #4770
(30010, 'C171-5941', 1), #32000
(30011, 'C171-6278', 1), #13300
(30012, 'C276-3112', 1), #16700
(30013, 'C276-3149', 1), #51900
(30014, 'C276-3219', 1), #83500
(30015, 'C176-1339', 1), #70800
(30016, 'C184-1972', 1), #36000
(30017, 'C184-3545', 1), #2600
(30018, 'C184-2166', 1), #15000
(30019, 'C180-2007', 1); #20400


#add foreign key

ALTER TABLE ITEM ADD foreign key (Icategory_id) REFERENCES CATEGORY (Category_id);
ALTER TABLE ITEM ADD foreign key (Ibrand_id) REFERENCES BRAND (Brand_id);
ALTER TABLE SUPPLIER_BRAND ADD foreign key (S_Supplier_id) REFERENCES SUPPLIER (Supplier_id);
ALTER TABLE SUPPLIER_BRAND ADD foreign key (S_Brand_id) REFERENCES BRAND (Brand_id);
ALTER TABLE SHOPITEM ADD foreign key (Sitem_code) REFERENCES ITEM (Item_code);
ALTER TABLE ORDERS ADD foreign key (Octm_id) REFERENCES CUSTOMER (Custom_id);
ALTER TABLE ORDERS ADD foreign key (Obag_id) REFERENCES SHOPBAG (Bag_id);
ALTER TABLE ORDERS ADD foreign key (Oship_id) REFERENCES SHIPCP (Ship_id);
ALTER TABLE SHOPBAG ADD foreign key (Bctm_id) REFERENCES CUSTOMER (Custom_id);

CREATE INDEX idx_ctm_id ON CUSTOMER(Custom_id);
CREATE INDEX idx_ctg_id ON CATEGORY(Category_id);
CREATE INDEX idx_item_name ON ITEM(Item_name);
CREATE INDEX idx_ord_date ON ORDERS(Order_date);
CREATE INDEX idx_item_stc ON ITEM(Stock);



select COUNT(*) from ITEM where Stock <= 20;
select COUNT(*) from CUSTOMER;
