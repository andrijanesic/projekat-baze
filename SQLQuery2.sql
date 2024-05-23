create database prog_1
use prog_1
create table Osoba(
id int  identity(1,1) not null,
ime varchar(20),
broj_telefona varchar(15),
primary key(id));

create table Prostorija(
id int identity(1,1) not null,
ime_studija varchar(20),
gitarska_pojacala int,
bubnjebi bit,
bas_pojacalo bit,
mikseta bit,
mikrofoni int,
primary key(id));

create table Datum(
id int  identity(1,1) not null,
datum date,
primary key(id));

create table Zakazivanje(
id int  identity(1,1) not null,
pocetak_termina int,
kraj_termina int,
id_prostorije int not null,
id_osoba int not null,
id_datuma int not null,
foreign key (id_osoba) references Osoba(id),
foreign key (id_prostorije) references Prostorija(id),
foreign key (id_datuma) references Datum(id),
primary key(id));

create table Termini(
id int  identity(1,1) not null,
id_prostorije int,
id_datuma int,
s10_11 bit,
s11_12 bit,
s12_13 bit,
s13_14 bit,
s14_15 bit,
s15_16 bit,
s16_17 bit,
s17_18 bit,
s18_19 bit,
s19_20 bit,
s20_21 bit,
s21_22 bit,
s22_23 bit,
s23_24 bit,
foreign key(id_prostorije) references Prostorija(id),
foreign key(id_datuma) references Datum(id),
primary key(id));

insert into Prostorija
values('Balon1',2, 1,1,1,3)

insert into Prostorija
values('Balon2',1, 0,0,1,2)

insert into Prostorija
values('Balon3',2, 1,1,0,0)

insert into Prostorija
values('Balon4',0, 1,1,0,0)

Select * from Prostorija

insert into Osoba
values('Dragan', 631231231)

insert into Osoba
values('Jovan', 631331231)

insert into Osoba
values('Milos', 62321321)

Select * from Osoba

insert into Datum
values('2024-05-25')

insert into Datum
values('2024-05-26')

insert into Datum
values('2024-05-27')


select * from Datum

insert into Zakazivanje
values(12,14,1,2,2)

insert into Zakazivanje
values(14,17,2,1,3)

Select pocetak_termina,kraj_termina, ime_studija, ime, datum from Zakazivanje
join Osoba on id_osoba=Osoba.id
join Prostorija on id_prostorije=Prostorija.id
join Datum on id_datuma=Datum.id

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,3)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,3)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,3)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,2)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,2)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,1)

insert into Termini (s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24,id_prostorije,id_datuma)
values(0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,1)

Select s10_11, s11_12, s12_13, s13_14, s14_15, s15_16, s16_17, s17_18, s18_19, s19_20, s20_21, s21_22, s22_23, s23_24, ime_studija,datum from Termini
join Prostorija on id_prostorije = Prostorija.id
join Datum on id_datuma = Datum.id