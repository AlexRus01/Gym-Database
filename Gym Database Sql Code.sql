

create table PERSOANA(id_persoana number(10) primary key,nume varchar(20)not null,
prenume varchar(20) not null, cnp number(14) not null, telefon varchar(11) not null,
email varchar(35));

drop table PERSOANA;
drop sequence gen_id;

create sequence gen_id
start with 1
increment by 1
maxvalue 1000
nocycle
nocache;
insert into PERSOANA
values (gen_id.nextval, 'Rus', 'Alexandru', '5020407314016', '0745039315', 'alex.rus@gmail.com');

insert into PERSOANA
values (gen_id.nextval, 'Barna', 'Paul', '5060302343616', '074930252', 'pol.brn@gmail.com');

insert into PERSOANA
values (gen_id.nextval, 'Andro', 'Ruxandra', '6220602015987', '0745140525 ', 'ruxx534@gmail.com');

insert into PERSOANA
values (gen_id.nextval, 'Botea','Iulia', '5265332257631', '0723034666', 'iulixx22@yahoo.com');

insert into PERSOANA
values (gen_id.nextval, 'Popescu', 'Andrei', '5120217206953', '0762156203', 'popenr1@cneg.ro');

insert into PERSOANA
values (gen_id.nextval, 'Bondoc', 'Georgiana', '6140403456721', '0268477812', 'bondokfrumy23@gmail.com');

insert into PERSOANA
values (gen_id.nextval, 'Mechie', 'Mihai', '5000127314016', '0723567821', 'mihaimmm@gmail.com');

insert into PERSOANA
values (gen_id.nextval, 'Popa', 'Alexandru', '5050319234567', '0721452567', 'popalexx@gmail.com');

insert into PERSOANA
values (gen_id.nextval, 'Buzle', 'George', '5121212424563', '0752467835', 'georgyyy22@gmail.com');

insert into PERSOANA
values (gen_id.nextval, 'Sacara', 'Filip', '5041401124632', '0745632150', 'filip.s12@yahoo.com');

insert into PERSOANA
values (gen_id.nextval, 'Constantin', 'Andrei', '5060400143215', '0742137489', 'abdreiconst@yahoo.com');

insert into PERSOANA
values (gen_id.nextval, 'Bondoc', 'Georgiana', '6140403456721', '0268477812', 'bondokfrumy23@gmail.com');
select * from PERSOANA;


drop table club
drop sequence gen_id;
create sequence gen_id
start with 300
increment by 67
maxvalue 1000
nocycle
nocache;

create table CLUB(id_club number(4) primary key,nume varchar(20)not null,
tip varchar(20) not null);

insert into CLUB
values (gen_id.nextval, 'Titan', 'Bronze');

insert into CLUB
values (gen_id.nextval, 'Pipera', 'Platinum');

insert into CLUB
values (gen_id.nextval, 'Unirii', 'Gold');

insert into CLUB
values (gen_id.nextval, 'Militari', 'Bronze');

insert into CLUB
values (gen_id.nextval, 'Rahova', 'Bronze');


select * from CLUB;

drop table INCAPERE;

drop sequence gen_id;
create sequence gen_id
start with 5
increment by 5
maxvalue 1000
nocycle
nocache;

create table INCAPERE(id_incapere number(4) primary key,spatiu number(4)not null,id_sedinta references SEDINTA(id_sedinta), id_club references CLUB(id_club));

insert into INCAPERE
values (gen_id.nextval,63,1,300);

insert into INCAPERE
values (gen_id.nextval,48,4,300);

insert into INCAPERE
values (gen_id.nextval,50,2,367);

insert into INCAPERE
values (gen_id.nextval,100,1,501);

insert into INCAPERE
values (gen_id.nextval,130,4,501);

insert into INCAPERE
values (gen_id.nextval,150,1,300);

insert into INCAPERE
values (gen_id.nextval,70,2,434);

insert into INCAPERE
values (gen_id.nextval,30,1,501);

insert into INCAPERE
values (gen_id.nextval,130,6,367);

insert into INCAPERE
values (gen_id.nextval,130,6,501);

insert into INCAPERE
values (gen_id.nextval,130,5,501);

select * from incapere;


drop table antrenor;
drop sequence gen_id;
create sequence gen_id
start with 1
increment by 2
maxvalue 50
nocycle
nocache;

create table ANTRENOR(id_antrenor number(4) primary key,nume varchar(30),varsta number(3), sex char, salariu number(4),id_manager references MANAGER(id_manager));
insert into ANTRENOR
values (gen_id.nextval,'Alex',23,'M',2300,5);
insert into ANTRENOR
values (gen_id.nextval,'Mihaela',25,'F',2500,5);
insert into ANTRENOR
values (gen_id.nextval,'Andrei',30,'M',3300,25);
insert into ANTRENOR
values (gen_id.nextval,'Mihai',25,'M',4300,25);

insert into ANTRENOR
values (gen_id.nextval,'Ana',22,'F',3300,5);

select * from antrenor

------------------
drop table echipament;
drop sequence gen_id;
create sequence gen_id
start with 1
increment by 2
maxvalue 50
nocycle
nocache;

create table ECHIPAMENT(id_echipament number(5) primary key,nume varchar(20) not null,grupa varchar(20) not null,
id_persoana references PERSOANA(id_persoana),id_femeies references FEMEIES(id_femeies), id_club references CLUB(id_club));

insert into ECHIPAMENT
values (gen_id.nextval,'Chest Press','Piept',1,10,300);

insert into ECHIPAMENT
values (gen_id.nextval,'Leg Press','Picioare',5,20,367);

insert into ECHIPAMENT
values (gen_id.nextval,'Lat Pulldown','Spate',7,10,434);

insert into ECHIPAMENT
values (gen_id.nextval,'Deadlift','Spate',5,10,367);

insert into ECHIPAMENT
values (gen_id.nextval,'Bench Press','Piept',5,20,367);

insert into ECHIPAMENT
values (gen_id.nextval,'Incline Press','Piept',1,10,300);

insert into ECHIPAMENT
values (gen_id.nextval,'Treadmill','Cardio',4,10,501);

insert into ECHIPAMENT
values (gen_id.nextval,'Bycicle','Cardio',2,10,367);

insert into ECHIPAMENT
values (gen_id.nextval,'Stairs','Cardio',4,10,300);

insert into ECHIPAMENT
values (gen_id.nextval,'Shoulder Press','Umeri',5,10,300);


select * from ECHIPAMENT;


drop table facilitati;
drop sequence gen_id;
create sequence gen_id
start with 1
increment by 1
maxvalue 50
nocycle
nocache;

create table FACILITATI(id_facilitati number(5) primary key,tip varchar(20) not null,id_persoana references PERSOANA(id_persoana),id_femeies references FEMEIES(id_femeies));
insert into FACILITATI
values (gen_id.nextval,'Sauna',1,10);

insert into FACILITATI
values (gen_id.nextval,'Sauna',9,10);

insert into FACILITATI
values (gen_id.nextval,'Sauna',7,10);

insert into FACILITATI
values (gen_id.nextval,'Piscina',4,20);

insert into FACILITATI
values (gen_id.nextval,'Piscina',4,20);

insert into FACILITATI
values (gen_id.nextval,'Piscina',3,20);

insert into FACILITATI
values (gen_id.nextval,'Sauna',4,10);

insert into FACILITATI
values (gen_id.nextval,'Sauna',2,10);


insert into FACILITATI
values (gen_id.nextval,'Piscina',5,20);


insert into FACILITATI
values (gen_id.nextval,'Dus',2,10);


select * from facilitati;



drop table femeies;
drop sequence gen_id;
create sequence gen_id
start with 10
increment by 10
maxvalue 50
nocycle
nocache;

create table FEMEIES(id_femeies number(3) primary key,nume varchar(30),varsta number(3), experienta number(3),salariu number(5));

create table FEMEIES(id_femeies number(3) primary key,
nume varchar(30),
varsta number(3), 
experienta number(3),
salariu number(5));

insert into FEMEIES
values (gen_id.nextval,'Mariana',46,12,1600);

insert into FEMEIES
values (gen_id.nextval,'Maria',30,2,1400);

insert into FEMEIES
values (gen_id.nextval,'Andreea',55,20,1300);

insert into FEMEIES
values (gen_id.nextval,'Mirela',45,25,1900);

select * from femeies;

drop table manager;

drop sequence gen_id;
create sequence gen_id
start with 5
increment by 10
maxvalue 100
nocycle
nocache;

create table MANAGER(id_manager number(3) primary key,nume varchar(30),nivel varchar(30), tip varchar(30));

insert into MANAGER
values (gen_id.nextval,'Cristian','Avansat','Angajator');

insert into MANAGER
values (gen_id.nextval,'Marian','Incepator','Contabil');

insert into MANAGER
values (gen_id.nextval,'Alexandru','Incepator','Angajator');


select * from manager;


drop table raporturi;
drop sequence gen_id;
create sequence gen_id
start with 1323
increment by 1242
maxvalue 500000
nocycle
nocache;

create table RAPORTURI(id_raporturi number(10) primary key,capital number(10),abonati number(5),cheltuieli number(10),id_manager references MANAGER(id_manager));

insert into RAPORTURI
values (gen_id.nextval,98040,250,40000,15);

insert into RAPORTURI
values (gen_id.nextval,23040,100,12000,15);

insert into RAPORTURI
values (gen_id.nextval,120040,500,74000,15);

insert into RAPORTURI
values (gen_id.nextval,20400,50,7000,5);

insert into RAPORTURI
values (gen_id.nextval,98040,250,40000,5);

insert into RAPORTURI
values (gen_id.nextval,23040,100,12000,25);

insert into RAPORTURI
values (gen_id.nextval,120040,500,74000,25);

insert into RAPORTURI
values (gen_id.nextval,20400,50,7000,25);

insert into RAPORTURI
values (gen_id.nextval,20400,75,25000,25);

insert into RAPORTURI
values (gen_id.nextval,30400,200,15000,25);

insert into RAPORTURI
values (gen_id.nextval,34400,175,100000,25);

select * from raporturi

drop table adresa;
drop sequence gen_id;
create sequence gen_id
start with 1
increment by 1
maxvalue 500
nocycle
nocache;

create table ADRESA(id_adresa number(3) primary key, nume_str varchar(20) not null,nr_str number(3) not null, 
bloc number(3),ap number(3),id_club references CLUB(id_club),id_persoana references PERSOANA(id_persoana));

insert into ADRESA
values (gen_id.nextval,'Republicii',13,null,null,367,null);

insert into ADRESA
values (gen_id.nextval,'Unirii',9,12,6,null,3);

insert into ADRESA
values (gen_id.nextval,'Bravu',55,null,null,501,null);

insert into ADRESA
values (gen_id.nextval,'Vladimirescu',10,15,6,null,4);

insert into ADRESA
values (gen_id.nextval,'Balcescu',5,5,3,null,8);

insert into ADRESA
values (gen_id.nextval,'Primaverii',72,4,6,null,5);

insert into ADRESA
values (gen_id.nextval,'Libertatii',45,5,63,null,9);

insert into ADRESA
values (gen_id.nextval,'Trandafirilor',3,2,9,null,2);

insert into ADRESA
values (gen_id.nextval,'Garii',10,12,6,null,6);

insert into ADRESA
values (gen_id.nextval,'Florilor',2,12,34,null,1);

insert into ADRESA
values (gen_id.nextval,'Florilor',2,12,34,null,7);

insert into ADRESA
values (gen_id.nextval,'Teilor',23,null,null,300,null);

insert into ADRESA
values (gen_id.nextval,'Zorilor',3,null,null,434,null);

insert into ADRESA
values (gen_id.nextval,'Pacii',93,null,null,501,null);

select * from adresa;

drop table sedinta
drop sequence gen_id;
create sequence gen_id
start with 1
increment by 1
maxvalue 500
nocycle
nocache;

create table SEDINTA(id_sedinta number(3) primary key,durata number(4) check(durata>=30),pret number(4),tip varchar(20),id_antrenor references ANTRENOR(id_antrenor));

insert into SEDINTA
values (gen_id.nextval,40,70,'Yoga',3);

insert into SEDINTA
values (gen_id.nextval,90,95,'HIIT',5);

insert into SEDINTA
values (gen_id.nextval,45,95,'HIIT',5);

insert into SEDINTA
values (gen_id.nextval,45,100,'Cardio',1);

insert into SEDINTA
values (gen_id.nextval,30,35,'Cycle',1);

insert into SEDINTA
values (gen_id.nextval,130,200,'Jumping Jacks',1);

insert into SEDINTA
values (gen_id.nextval,75,35,'Cycle',1);

insert into SEDINTA
values (gen_id.nextval,130,200,'Jumping Jacks',1);

insert into SEDINTA
values (gen_id.nextval,75,35,'Kangoo Jumps',3);


select * from sedinta;


drop table acces
drop sequence gen_id;
create sequence gen_id
start with 100
increment by 50
maxvalue 5000
nocycle
nocache;

create table acces(id_acces number(10) primary key);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

insert into acces
values (gen_id.nextval);

select * from acces


drop table abonament
drop sequence gen_id;
create sequence gen_id
start with 1
increment by 1
maxvalue 5000
nocycle
nocache;

create table abonament(id_acces references ACCES(id_acces) primary key,inc date,fin date,pret number(4),id_persoana references PERSOANA(id_persoana));

insert into abonament
values (250,'11-JAN-2008','10-FEB-2008',150,1);

insert into abonament
values (300,'13-FEB-2008','12-MAR-2008',150,2);

insert into abonament
values (350,'11-DEC-2008','10-FEB-2009',200,4);

insert into abonament
values (450,'18-JUN-2008','18-AUG-2008',200,5);

select * from abonament

drop table invitatie
drop sequence gen_id;
create sequence gen_id
start with 1
increment by 1
maxvalue 50000
nocycle
nocache;

create table invitatie(id_acces number(10) references ACCES(id_acces) primary key,inc date,id_persoana references PERSOANA(id_persoana));

insert into invitatie
values (500,'11-JAN-2008',3);

insert into invitatie
values (600,'25-FEB-2009',7);

insert into invitatie
values (700,'20-APR-2010',8);

insert into invitatie
values (550,'15-JUN-2009',9);

select * from invitatie;

drop table abonament;
drop table acces;
drop table adresa;
drop table antrenor;
drop table club;
drop table echipament;
drop table facilitati;
drop table femeies;
drop table incapere;
drop table invitatie;
drop table manager;
drop table persoana;
drop table raporturi;
drop table sedinta;


------- ex 12

--Enumerarea aparatelor pe care le foloseste persoana cu id-ul 5

select e.nume, e.grupa,p.prenume,e.id_persoana from echipament e, persoana p where
e.id_persoana = p.id_persoana and e.id_persoana = 5;

--Sa se afiseze persoanele care detin cel mai scump abonament
select p.nume, p.prenume, a.pret from persoana p, abonament a where
p.id_persoana = a.id_persoana and a.pret = (select max(pret) from abonament);

--Sa se afiseze sedintele disponibile, ordonate crescator dupa pretul acestora

select s.id_sedinta, s.durata, s.pret, s.tip, s.id_antrenor from sedinta s order by pret asc; 

--Sa se afiseze salariile grupate dupa numele antrenorilor
select sum(salariu), nume from antrenor group by nume;

--
select tip,
decode(id_antrenor, 3, 'Mihaela',
5, 'Andrei',
'Nu exista antrenor')nume_antrenor
from sedinta;


--femeile de serviciu cu salariu mai mare decat cel mediu

with salariumediu(da) as (select avg(salariu) from femeies)
select f.nume, f.varsta, f.salariu from femeies f, salariumediu
where f.salariu > salariumediu.da;

--Gruparea tipurilor de sedinte cu antrenori


select tip,
decode(id_antrenor, 3, 'Mihaela',
5, 'Andrei',
'Nu exista antrenor')nume_antrenor
from sedinta;

--Sa se incadreze sedintele in functie de durata lor
--Cele mai scurte de 50 de minute se considera scurte, cele intre 50 si 90 medii, iar cele de peste 90 se considera lungi.

select id_sedinta,
CASE
    when durata <= 50 then 'SCURTA'
    when durata > 50 and durata <= 90 then 'MEDIE'
    else 'LUNGA'
end as lungime
from sedinta;


--Sa se afiseze numele, prenumele persoanelor al caror cnp incepe cu cifra 5
select nume,prenume, cnp from persoana where to_char(cnp) like '5%';


--

--Ex 13
--Sa se stearga din tabelul de FEMEIES cea care nu ingrijeste niciun aparat din echipament

delete from femeies f where f.id_femeies not in (select id_femeies from echipament);

select * from femeies;

--Sa se stearga incaperile din clubul cu cel mai mic cod

delete from incapere i where i.id_club = (select min(id_club) from incapere);
select * from incapere;
select * from club;
rollback;

--Dublam durata tuturor sedintelor de tip yoga

update sedinta
set durata = durata*2
where tip in (select s.tip from sedinta s where s.tip = 'Yoga');

select * from sedinta;



--14

create view vizz(id_sedinta, durata, pret, tip, id_antrenor,nume,varsta)
as select s.id_sedinta, s.durata,s.pret, s.tip, s.id_antrenor, a.nume, a.varsta
from sedinta s, antrenor a where s.id_antrenor = a.id_antrenor;

select * from vizz;
