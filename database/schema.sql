-- =========================================================
-- BLOOD BANK MANAGEMENT SYSTEM
-- Database Schema
-- =========================================================

-- Create database
CREATE DATABASE IF NOT EXISTS blood_bank_management_system;

-- Select database
USE blood_bank_management_system;


-- =========================================================
-- 1. USER_ADMIN TABLE
-- =========================================================

CREATE TABLE user_admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(30) NOT NULL,
    note VARCHAR(255)
);


-- =========================================================
-- 2. DONOR TABLE
-- =========================================================

CREATE TABLE donor (
    donor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    address VARCHAR(255),
    gender VARCHAR(10),
    blood_grp VARCHAR(5),
    contact VARCHAR(15)
);


-- =========================================================
-- 3. HOSPITAL TABLE
-- =========================================================

CREATE TABLE hospital (
    hospital_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    contact VARCHAR(15),
    license_no VARCHAR(50)
);


-- =========================================================
-- 4. RECIPIENT TABLE
-- =========================================================

CREATE TABLE recipient (
    recipient_id INT AUTO_INCREMENT PRIMARY KEY,
    recipient VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    contact VARCHAR(15),
    address VARCHAR(255),
    blood_grp VARCHAR(5)
);


-- =========================================================
-- 5. BLOOD TABLE
-- =========================================================

CREATE TABLE blood (
    blood_id INT AUTO_INCREMENT PRIMARY KEY,

    donor_id INT NOT NULL,
    hospital_id INT,

    blood_grp VARCHAR(5) NOT NULL,
    quantity INT NOT NULL,
    status VARCHAR(30) NOT NULL,
    donation_date DATE,
    donation_id INT,
    supply_details VARCHAR(255),

    CONSTRAINT fk_blood_donor
        FOREIGN KEY (donor_id)
        REFERENCES donor(donor_id),

    CONSTRAINT fk_blood_hospital
        FOREIGN KEY (hospital_id)
        REFERENCES hospital(hospital_id)
);


-- =========================================================
-- 6. BLOOD_REQUEST TABLE
-- =========================================================

CREATE TABLE blood_request (
    request_id INT AUTO_INCREMENT PRIMARY KEY,

    hospital_id INT NOT NULL,
    recipient_id INT NOT NULL,
    blood_id INT,

    blood_type VARCHAR(5) NOT NULL,
    quantity INT NOT NULL,
    request_date DATE NOT NULL,
    status VARCHAR(30) NOT NULL,
    completion_date DATE,

    CONSTRAINT fk_request_hospital
        FOREIGN KEY (hospital_id)
        REFERENCES hospital(hospital_id),

    CONSTRAINT fk_request_recipient
        FOREIGN KEY (recipient_id)
        REFERENCES recipient(recipient_id),

    CONSTRAINT fk_request_blood
        FOREIGN KEY (blood_id)
        REFERENCES blood(blood_id)
);


-- =========================================================
-- END OF SCHEMA
-- =========================================================