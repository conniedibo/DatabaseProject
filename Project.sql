-- Clinic Booking System Database
-- Author: [Your Name]
-- Description: Relational schema for a simple clinic appointment and patient management system

-- Drop tables if they exist (for reset purposes)
DROP TABLE IF EXISTS Appointments, Patients, Doctors, Specializations;

-- Table: Specializations
CREATE TABLE Specializations (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Table: Doctors
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    specialization_id INT,
    FOREIGN KEY (specialization_id) REFERENCES Specializations(specialization_id)
);

-- Table: Patients
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    birth_date DATE
);

-- Table: Appointments
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATETIME NOT NULL,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    notes TEXT,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Sample Data Insertion (optional)
-- You can comment this out if needed
-- INSERT INTO Specializations (name) VALUES ('General Physician'), ('Dermatologist'), ('Cardiologist');
-- INSERT INTO Doctors (full_name, email, phone, specialization_id) VALUES 
-- ('Dr. Alice Kamau', 'alice@clinic.com', '0711222333', 1),
-- ('Dr. Brian Otieno', 'brian@clinic.com', '0711444555', 2);
-- INSERT INTO Patients (full_name, email, phone, birth_date) VALUES 
-- ('Jane Doe', 'jane@example.com', '0722333444', '1990-05-10'),
-- ('John Smith', 'john@example.com', '0733444555', '1985-11-20');
-- INSERT INTO Appointments (appointment_date, doctor_id, patient_id, notes) VALUES
-- ('2025-05-18 09:30:00', 1, 1, 'Routine checkup'),
-- ('2025-05-19 11:00:00', 2, 2, 'Skin allergy consultation');
