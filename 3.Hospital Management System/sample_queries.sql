INSERT INTO Patients (Name, Age, Gender, Contact) VALUES ('Aaryan Mudvikar', 21, 'Male', '9876543210');
INSERT INTO Doctors (Name, Specialty, Contact) VALUES ('Dr. Smith', 'General', '9876543211');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Diagnosis) VALUES (1, 1, '2025-12-25 10:00:00', 'General Checkup');
INSERT INTO Billing (AppointmentID, Amount) VALUES (1, 500.00);

SELECT A.AppointmentID, P.Name AS PatientName, A.AppointmentDate, A.Diagnosis
FROM Appointments A
JOIN Patients P ON A.PatientID = P.PatientID
WHERE A.DoctorID=1;
