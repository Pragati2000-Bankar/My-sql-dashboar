SELECT patient_id, COUNT(*) as record_count
FROM medical_records
GROUP BY patient_id;

SELECT p.patient_id, p.last_name, MAX(m.visit_date) as last_record_date
FROM patients p
JOIN medical_records m ON p.patient_id = m.patient_id
GROUP BY p.patient_id, p.last_name;

SELECT patient_id, last_name
FROM patients
WHERE patient_id IN (
    SELECT patient_id
    FROM medical_records
    GROUP BY patient_id
    HAVING COUNT(*) <2
);

select DOB, month(DOB) as "MONTH"
from patients;

select DOB, year(DOB) as "YEAR"
from patients;

