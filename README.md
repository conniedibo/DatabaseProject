# DatabaseProject

# 🏥 Clinic Booking System

A relational database system designed to manage a clinic's core operations, including patient registration, doctor specialization, and appointment scheduling.

---

## 📘 Project Description

The **Clinic Booking System** helps clinics efficiently manage appointments and patient-doctor interactions. It stores essential information about:

- Patients
- Doctors and their specializations
- Scheduled appointments

The system ensures data integrity through the use of primary and foreign key constraints and supports 1-to-many relationships (e.g., one doctor can have many appointments).

---

## ⚙️ How to Run / Setup the Project

1. **Install MySQL** or use a MySQL-compatible environment (e.g., MySQL Workbench).
2. **Clone this repository** or download the `.sql` file.
3. Open your SQL editor and run the script `clinic_booking_system.sql`.
4. The script will:
   - Drop existing tables (if any)
   - Create fresh tables with all constraints and relationships
   - (Optional) You may uncomment the `INSERT` statements to load sample data

### Import Instructions via CLI:
```bash
mysql -u your_username -p your_database_name < clinic_booking_system.sql
```

---

## 🧩 Entity-Relationship Diagram (ERD)

![Clinic ERD](https://via.placeholder.com/800x600.png?text=Clinic+ERD+Diagram)

> 🔗 *Replace the placeholder link above with an actual screenshot of your ERD or link to an image/diagram from Lucidchart, dbdiagram.io, or DrawSQL.*

---

## 🗃️ Tables Overview
| Table Name     | Description                                  |
|----------------|----------------------------------------------|
| `Specializations` | List of medical specializations             |
| `Doctors`         | Information about doctors and specialties  |
| `Patients`        | Registered patient data                    |
| `Appointments`    | Scheduled appointment details              |

---

## 📌 Author
**CONNIE**  
Feel free to contribute or extend this project for larger clinical systems!
