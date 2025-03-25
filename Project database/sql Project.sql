CREATE DATABASE Healthcare_Facility ;

use Healthcare_Facility ;

CREATE TABLE Patients(
patient_id int ,
first_name varchar(255),
last_name varchar(255),
DOB date,
contact_number int,
address varchar(255));

describe Patients;

alter table Patients
Rename column contact_number to mob_no;

alter table Patients
add constraint primary key(patient_id);

Insert into Patients(patient_id, first_name, last_name, DOB, mob_no, address)
values (1,"Roj","D'soza",'2024-02-11',999999999,"Thane"),(2,"Kajal","Soni",'2023-04-25',888888888,"Pune"),(3,"Akash","Jadhav",'2023-04-28',555555555,"Pune"),(4,"Anuj","Joshi",'2024-06-23',444444444,"Nashik"),(5,"Raj","Joshi",'2024-08-08',777777777,"Thane"),(6,"Neha","Sharma",'2022-10-10',111111111,"Mumbai");

select * From  Patients;

alter table patients
add column Gender varchar(50);

update patients
set Gender='M'
where patient_id=5;

CREATE TABLE Medical_Records(
Record_id int,
patient_id int,
treatment varchar(255),
doctor_id double);

describe Medical_Records;

alter table Medical_Records
add constraint primary key(Record_id);

alter table Medical_Records
add constraint foreign key(patient_id) references patients(patient_id);

alter table Medical_Records
add column visit_date year ;

alter table medical_records
add column diagnosis varchar(255);

alter table medical_records
modify column visit_date  date;

alter table medical_records
modify column doctor_id int;

select * from medical_records;

SElECT diagnosis, count(Record_id)
from medical_records
Where diagnosis ="Asthma";