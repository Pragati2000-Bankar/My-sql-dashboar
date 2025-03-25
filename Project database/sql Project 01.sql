use Healthcare_Facility ;

insert into Medical_Records(Record_id,patient_id,treatment,doctor_id, visit_date,diagnosis)
values(101,1,"Medication",01,'2024-11-01',"Hypertension"),(102,1,"Medication",01,'2024-11-08',"Thyroid Disorder"),
(103,2,"Inhaler",02,'2024-11-02','Asthma'),(104,3,"Pain Relief",03,'2024-11-03',"Migraine"),
(105,4,"Physical Therapy",04,'2024-11-04',"Arthritis"),(106,5,"Pain Relief",03,'2024-11-05',"Migraine"),
(107,2,"Inhaler",05,'2024-11-06',"Asthma"),(108,5,"Chiropractic Care",04,'2024-11-07',"Back Pain") ;

Select* from Medical_Records;

Select * from patients;

Select * from patients
Where address NOT IN ("Nashik","Mumbai");

Select * from patients
Where last_name like '%i';

select patient_id,first_name,last_name,
concat (first_name,"_",last_name,"@ITVedant.com") As "mailid"
From patients;

select first_name,length(first_name) as "length of name" From patients;

select trim("     Welcome to our HELTHCARE_FACILITY    ") as "result";

select first_name,upper(first_name) as "UPPER" 
From patients;

select first_name,lower(first_name) as "lower" 
From patients;

SELECT patients.patient_id
FROM patients
INNER JOIN Medical_Records
ON patients.patient_id =  Medical_Records.patient_id;

SELECT patients.patient_id
FROM patients
LEFT JOIN Medical_Records
ON patients.patient_id =  Medical_Records.patient_id;

select count(*)
from  Medical_Records;

select max(visit_date)
from Medical_Records ;

select min(visit_date)
from Medical_Records ;

select Avg(doctor_id)
from Medical_Records ;