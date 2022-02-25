

---TABLE FOR FLIGHT
--create table FLIGHT(Flight_Number varchar(255) primary key,Airline varchar(255),Week_Days varchar(255))
--insert into FLIGHT
--VALUES('DF2753','AIRINDIA','3');
--insert into FLIGHT values('LN3211','INDIGO','7');
--insert into FLIGHT values('GT4638','SPICEJET','2');
--insert into FLIGHT values('KV3323','EMIRATES','4');
--insert into FLIGHT values('LX3100','AIRASIA','3');
--insert into FLIGHT values('LV2317','VISTARA','5');
--insert into FLIGHT values('BD9032','GOAIR','3');
--insert into FLIGHT values('LY4488','TRUJET','2');
--insert into FLIGHT values('MV2314','VISTAIR','5');
--insert into FLIGHT values('ND9033','GOJET','3');
--insert into FLIGHT values('OY4482','TRAIRLINE','2');



--TABLE FOR AIRPORT 
--create table AIRPORT(Airport_Code varchar(255) primary key,City varchar(255),State varchar(255),Name varchar(255))
--insert into Airport values('H1','HYDERABAD','TELENGANA','RGIA');
--insert into Airport values('K10','KURNOOL','ANDHRAPRADESH','UNRA');
--insert into Airport values('C1','CHENNAI','TAMILNADU','MAA');
--insert into Airport values('M1','MUMBAI','MAHARASTHRA','CSMIA');
--insert into Airport values('K5','KOCHI','KERALA','CIA');
--insert into Airport values('B1','BANGALORE','KARNATAKA','BIAL');
--insert into airport values('D2','DABOLIM','GOA','GOI');
--insert into airport values('P1','PUNE','MAHARASTHRA','PIA');
--INSERT INTO AIRPORT VALUES('V2','KADAPA','ANDHRAPRADESH','KPAAIR');
--INSERT INTO AIRPORT VALUES('W2','KADAPA2','ANDHRAPRADESH2','KPAAIR2');
--INSERT INTO AIRPORT VALUES('Y2','KADAPA3','ANDHRAPRADESH3','KPAAIR3');


------TABLE FOR FLIGHT LEG
--CREATE TABLE FLIGHT_LEG(Flight_Number varchar(255), foreign key(Flight_Number) references FLIGHT(Flight_Number),Leg_No varchar(255),PRIMARY KEY(Leg_No,Flight_Number),Scheduled_Dep_Time varchar(255),Scheduled_Arr_Time varchar(255),Depature_Airport_Code varchar(255),Arrival_Airport_Code varchar(255),foreign key(Depature_Airport_Code) references AIRPORT(Airport_Code),foreign key(Arrival_Airport_Code) references AIRPORT(Airport_Code));
--INSERT INTO FLIGHT_LEG VALUES('LN3211','1','4:00PM','6.00PM','H1','Y2');
--INSERT INTO FLIGHT_LEG VALUES('GT4638','2','5:00PM','7.00PM','V2','W2');
--INSERT INTO FLIGHT_LEG VALUES('KV3323','3','6:00PM','8.00PM','K10','V2');
--INSERT INTO FLIGHT_LEG VALUES('LX3100','4','7:00PM','9.00PM','C1','P1');
--INSERT INTO FLIGHT_LEG VALUES('LV2317','5','8:00PM','10.00PM','M1','D2');
--INSERT INTO FLIGHT_LEG VALUES('BD9032','6','9:00PM','11.00PM','K5','B1');
--INSERT INTO FLIGHT_LEG VALUES('LY4488','7','10:00PM','11.55PM','B1','K5');
--INSERT INTO FLIGHT_LEG VALUES('MV2314','8','11:00PM','5.00AM','D2','M1');
--INSERT INTO FLIGHT_LEG VALUES('ND9033','9','11:45PM','6.00AM','P1','C1');
--INSERT INTO FLIGHT_LEG VALUES('OY4482','10','4:00PM','6.00PM','W2','K10');
--INSERT INTO FLIGHT_LEG VALUES('DF2753','11','6:00PM','10.00PM','Y2','H1');


-------TABLE FOR FARE
--create table FARE(Flight_Number varchar(255), foreign key(Flight_Number) references FLIGHT(Flight_Number),Fare_Code varchar(255),PRIMARY KEY(Flight_Number,Fare_Code),Restrictions varchar(255),Amount varchar(255))
--INSERT INTO FARE VALUES('LN3211','1234','DONTROM','2500');
--INSERT INTO FARE VALUES('DF2753','123467','DONTROMTY','2500');
--INSERT INTO FARE VALUES('GT4638','1235','DONTAXE','25000');
--INSERT INTO FARE VALUES('KV3323','12367','DONTBXE','250000');
--INSERT INTO FARE VALUES('LX3100','12389','DONTSPLIT','25005');
--INSERT INTO FARE VALUES('LV2317','12310','DONTTEAR','250045');
--INSERT INTO FARE VALUES('BD9032','12311','DONTMIX','2500453');
--INSERT INTO FARE VALUES('LY4488','12312','DONTFARE','250033');
--INSERT INTO FARE VALUES('MV2314','12313','DONTMIGHT','250044');
--INSERT INTO FARE VALUES('ND9033','12314','DONTMIX','250066');
--INSERT INTO FARE VALUES('OY4482','12315','DONTRAN','250077');

--TABLE FOR AIRPLANE_TYPE
--create table AIRPLANE_TYPE(Airplane_Type_Name varchar(255) primary key,Max_Seats varchar(255),Company varchar(255))
--insert into Airplane_type values('JET','050','SAFRAN');
--insert into Airplane_type values('AIRBUSA350','250','AIRBUS');
--insert into Airplane_type values('AIRBUSA220','350','AIRBUS');
--insert into Airplane_type values('BOEING767','200','BOEING');
--insert into Airplane_type values('AIRBUSA380','300','AIRBUS');
--insert into Airplane_type values('AIRBUSA320NEO','320','AIRBUS');
--insert into Airplane_type values('BOEING787','350','BOEING');
--insert into Airplane_type values('AIRBUS123','150','AIRBUS');
--insert into Airplane_type values('AIRJET123','155','AIRBUS');
--insert into Airplane_type values('SARRAIPOTRU123','150','SURYAAIRLINE');
--insert into Airplane_type values('BABYAIR123','190','SURYAAIRLINE');

--TABLE FOR CANLAND 
--create table CAN_LAND(Airport_Code varchar(255),foreign key(Airport_Code) references AIRPORT(Airport_Code),Airplane_Type_Name varchar(255),foreign key(Airplane_Type_Name) references AIRPLANE_TYPE(Airplane_Type_Name),PRIMARY KEY(Airplane_Type_Name,Airport_Code));
--insert into can_land values('H1','JET');
--insert into can_land values('K10','AIRBUSA350');
--insert into can_land values('C1','AIRBUSA220');
--insert into can_land values('M1','BOEING767');
--insert into can_land values('K5','AIRBUSA380');
--insert into can_land values('B1','AIRBUSA320NEO');
--insert into can_land values('D2','BOEING787');
--insert into can_land values('P1','AIRBUS123');
--insert into can_land values('V2','AIRJET123');
--insert into can_land values('W2','SARRAIPOTRU123');
--insert into can_land values('Y2','BABYAIR123');

--TABLE FOR AIRPLANE
--CREATE TABLE AIRPLANE(Airplane_Id varchar(255) primary key,Total_No_Of_Seats varchar(255),Airplane_Type_Name varchar(255),foreign key(Airplane_Type_Name) references AIRPLANE_TYPE(Airplane_Type_Name))
--INSERT INTO AIRPLANE VALUES('AB1290',050,'JET');
--INSERT INTO AIRPLANE VALUES('AB12',250,'BABYAIR123');
--INSERT INTO AIRPLANE VALUES('AB123',350,'AIRBUSA350');
--INSERT INTO AIRPLANE VALUES('AB124',200,'AIRBUSA220');
--INSERT INTO AIRPLANE VALUES('AB125',300,'BOEING767');
--INSERT INTO AIRPLANE VALUES('AB126',320,'AIRBUSA380');
--INSERT INTO AIRPLANE VALUES('AB127',350,'AIRBUSA320NEO');
--INSERT INTO AIRPLANE VALUES('AB128',150,'BOEING787');
--INSERT INTO AIRPLANE VALUES('AB129',155,'AIRBUS123');
--INSERT INTO AIRPLANE VALUES('AB1210',150,'AIRJET123');
--INSERT INTO AIRPLANE VALUES('AB1211',190,'SARRAIPOTRU123');

----TABLE FOR lEG_INSTANCE

--create table LEG_INSTANCE(Flight_Number varchar(255), Leg_No varchar(255),foreign key(Flight_Number,Leg_no) references FLIGHT_LEG(Flight_Number,Leg_No),Date_Leg varchar(255),PRIMARY KEY(Leg_No,Flight_Number,Date_Leg),No_Of_Avail_Seats varchar(255),Depature_Airport_Code varchar(255),Arrival_Airport_Code varchar(255),foreign key(Depature_Airport_Code) references AIRPORT(Airport_Code),foreign key(Arrival_Airport_Code) references AIRPORT(Airport_Code),Dep_Time varchar(255),Arr_Time varchar(255),Airplane_Id varchar(255),foreign key(Airplane_Id) references AIRPLANE(Airplane_Id));
--INSERT INTO LEG_INSTANCE VALUES('LN3211','1','12-10-2021','250','H1','Y2','4:00PM','6:00PM','AB1290');
--INSERT INTO LEG_INSTANCE VALUES('GT4638','2','12-11-2021','150','C1','V2','4:55PM','6:34PM','AB123');
--INSERT INTO LEG_INSTANCE VALUES('KV3323','3','1-12-2021','250','M1','P1','5:00PM','7:00PM','AB124');
--INSERT INTO LEG_INSTANCE VALUES('LX3100','4','5-12-2021','155','K5','D2','5:55PM','8:00PM','AB125');
--INSERT INTO LEG_INSTANCE VALUES('LV2317','5','10-12-2021','150','B1','K5','6:00PM','8:55PM','AB126');
--INSERT INTO LEG_INSTANCE VALUES('BD9032','6','12-12-2021','350','D2','B1','6:55PM','9:00PM','AB127');
--INSERT INTO LEG_INSTANCE VALUES('LY4488','7','20-12-2021','250','P1','M1','7:00PM','10:00PM','AB128');
--INSERT INTO LEG_INSTANCE VALUES('MV2314','8','27-12-2021','150','V2','C1','7:55PM','10:55PM','AB129');
--INSERT INTO LEG_INSTANCE VALUES('ND9033','9','1-01-2022','240','W2','K10','8:00PM','3:00AM','AB1210');
--INSERT INTO LEG_INSTANCE VALUES('OY4482','10','12-01-2022','250','Y2','H1','9:00PM','4:00AM','AB1211');
--INSERT INTO LEG_INSTANCE VALUES('DF2753','11','15-01-2022','250','K10','W2','4:00PM','6:00PM','AB12');


------TABLE FOR SEAT
--create table  SEAT(Flight_Number varchar(255), Leg_No varchar(255),Date_Leg varchar(255),foreign key(Flight_Number,Leg_no,Date_Leg) references Leg_Instance(Flight_Number,Leg_No,Date_Leg),Seat_Number varchar(255),PRIMARY KEY(Flight_Number,Leg_No,Date_Leg,Seat_Number),Customer_name varchar(255),Customer_Phone varchar(255));
--INSERT INTO SEAT VALUES('LN3211','1','12-10-2021','1','VISHNU','9989808705');
--INSERT INTO SEAT VALUES('GT4638','2','12-11-2021','2','VISHNU','9989808705');
--INSERT INTO SEAT VALUES('KV3323','3','1-12-2021','3','VISHNU','9989808705');
--INSERT INTO SEAT VALUES('LX3100','4','5-12-2021','8','VAMSHI','9989008705');
--INSERT INTO SEAT VALUES('LV2317','5','10-12-2021','10','VISHNUVARDHAN','9391586197');
--INSERT INTO SEAT VALUES('BD9032','6','12-12-2021','11','VISHNUVARDHAN','9391586197');
--INSERT INTO SEAT VALUES('LY4488','7','20-12-2021','16','BHARAT','9951278047');
--INSERT INTO SEAT VALUES('MV2314','8','27-12-2021','19','BHARAT','9951278047');
--INSERT INTO SEAT VALUES('ND9033','9','1-01-2022','20','SUDHA','6304469151');
--INSERT INTO SEAT VALUES('OY4482','10','12-01-2022','35','SUBHADRA','9878786750');
--INSERT INTO SEAT VALUES('DF2753','11','15-01-2022','100','ADINARAYANA','9895949392');



------QUERIES  
--vi)
--airplane names having  seats greater than 200 seats
--SELECT AIRPLANE_TYPE_NAME as Flight_Name
--FROM AIRPLANE 
--WHERE total_no_of_seats >'200';


---ix)  query  
-- find the comapny name designed by flight AIRBUS123 
--Answer
--select Company 
--from airplane_type 
--where airplane_type_name= 'AIRBUS123';

--select flight.airline 
--from airport ,flight_leg ,flight 
--where flight_leg.Scheduled_dep_time between '5:00PM' and '8.00PM' and airport.city='kurnool';
