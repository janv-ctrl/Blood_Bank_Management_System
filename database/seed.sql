USE blood_bank_management_system;

-- =========================================================
-- 1. USER_ADMIN : 10 RECORDS
-- =========================================================

INSERT INTO user_admin
(username, password, role, note)
VALUES
('admin01', 'Admin@123', 'Admin', 'Main system administrator'),
('admin02', 'Admin@456', 'Admin', 'Database administrator'),
('staff01', 'Staff@123', 'Staff', 'Blood inventory staff'),
('staff02', 'Staff@456', 'Staff', 'Donor registration staff'),
('staff03', 'Staff@789', 'Staff', 'Blood request staff'),
('manager01', 'Manager@123', 'Manager', 'Blood bank manager'),
('manager02', 'Manager@456', 'Manager', 'Operations manager'),
('reception01', 'Reception@123', 'Staff', 'Reception desk'),
('reception02', 'Reception@456', 'Staff', 'Registration desk'),
('admin03', 'Admin@789', 'Admin', 'System support');


-- =========================================================
-- 2. DONOR : 25 RECORDS
-- =========================================================

INSERT INTO donor
(name, age, address, gender, blood_grp, contact)
VALUES
('Aarav Sharma', 24, 'Kothrud, Pune', 'Male', 'O+', '9000000001'),
('Ananya Patil', 27, 'Baner, Pune', 'Female', 'A+', '9000000002'),
('Rohan Deshmukh', 31, 'Hadapsar, Pune', 'Male', 'B+', '9000000003'),
('Sneha Kulkarni', 23, 'Viman Nagar, Pune', 'Female', 'AB+', '9000000004'),
('Aditya Joshi', 29, 'Wakad, Pune', 'Male', 'O-', '9000000005'),
('Isha Shah', 26, 'Aundh, Pune', 'Female', 'A-', '9000000006'),
('Kunal Mehta', 35, 'Pimpri, Pune', 'Male', 'B-', '9000000007'),
('Priya Nair', 30, 'Kalyani Nagar, Pune', 'Female', 'AB-', '9000000008'),
('Vivek Patil', 28, 'Karve Nagar, Pune', 'Male', 'O+', '9000000009'),
('Neha Joshi', 25, 'Sinhagad Road, Pune', 'Female', 'A+', '9000000010'),
('Rahul More', 33, 'Katraj, Pune', 'Male', 'B+', '9000000011'),
('Pooja Desai', 29, 'Deccan, Pune', 'Female', 'O+', '9000000012'),
('Siddharth Rao', 37, 'Camp, Pune', 'Male', 'A-', '9000000013'),
('Meera Kulkarni', 32, 'Pashan, Pune', 'Female', 'B+', '9000000014'),
('Akash Jadhav', 26, 'Bavdhan, Pune', 'Male', 'O-', '9000000015'),
('Riya Kapoor', 24, 'Magarpatta, Pune', 'Female', 'AB+', '9000000016'),
('Manish Gupta', 40, 'Kharadi, Pune', 'Male', 'A+', '9000000017'),
('Tanvi Shah', 28, 'Kondhwa, Pune', 'Female', 'B-', '9000000018'),
('Nikhil Pawar', 30, 'Dhanori, Pune', 'Male', 'O+', '9000000019'),
('Simran Kaur', 27, 'Yerawada, Pune', 'Female', 'A+', '9000000020'),
('Saurabh Singh', 36, 'Lohegaon, Pune', 'Male', 'B+', '9000000021'),
('Kavya Rao', 25, 'Kothrud, Pune', 'Female', 'O-', '9000000022'),
('Harsh Vora', 34, 'Wagholi, Pune', 'Male', 'AB-', '9000000023'),
('Aditi Bansal', 29, 'Shivajinagar, Pune', 'Female', 'A-', '9000000024'),
('Yash Thakur', 22, 'Bibwewadi, Pune', 'Male', 'O+', '9000000025');


-- =========================================================
-- 3. HOSPITAL : 10 RECORDS
-- =========================================================

INSERT INTO hospital
(name, address, contact, license_no)
VALUES
('City Care Hospital', 'Shivajinagar, Pune', '9110000001', 'LIC-PN-001'),
('Ruby General Hospital', 'Sassoon Road, Pune', '9110000002', 'LIC-PN-002'),
('Sahyadri Hospital', 'Deccan Gymkhana, Pune', '9110000003', 'LIC-PN-003'),
('Jehangir Hospital', 'Sangamvadi, Pune', '9110000004', 'LIC-PN-004'),
('Noble Hospital', 'Hadapsar, Pune', '9110000005', 'LIC-PN-005'),
('Deenanath Mangeshkar Hospital', 'Erandwane, Pune', '9110000006', 'LIC-PN-006'),
('KEM Hospital', 'Rasta Peth, Pune', '9110000007', 'LIC-PN-007'),
('Sancheti Hospital', 'Shivajinagar, Pune', '9110000008', 'LIC-PN-008'),
('Columbia Asia Hospital', 'Kharadi, Pune', '9110000009', 'LIC-PN-009'),
('Aditya Birla Hospital', 'Pimpri, Pune', '9110000010', 'LIC-PN-010');


-- =========================================================
-- 4. RECIPIENT : 20 RECORDS
-- =========================================================

INSERT INTO recipient
(recipient, age, gender, contact, address, blood_grp)
VALUES
('Rahul Kulkarni', 45, 'Male', '9200000001', 'Kothrud, Pune', 'O+'),
('Snehal Patil', 34, 'Female', '9200000002', 'Baner, Pune', 'A+'),
('Amit Shah', 52, 'Male', '9200000003', 'Hadapsar, Pune', 'B+'),
('Pallavi Joshi', 29, 'Female', '9200000004', 'Aundh, Pune', 'AB+'),
('Vikram Deshmukh', 61, 'Male', '9200000005', 'Wakad, Pune', 'O-'),
('Nisha Mehta', 38, 'Female', '9200000006', 'Kharadi, Pune', 'A-'),
('Suresh Rao', 47, 'Male', '9200000007', 'Viman Nagar, Pune', 'B-'),
('Kiran Nair', 26, 'Female', '9200000008', 'Pashan, Pune', 'AB-'),
('Raj Malhotra', 41, 'Male', '9200000009', 'Kondhwa, Pune', 'O+'),
('Maya Shah', 55, 'Female', '9200000010', 'Camp, Pune', 'A+'),
('Vishal Patil', 36, 'Male', '9200000011', 'Pimpri, Pune', 'B+'),
('Divya Kulkarni', 31, 'Female', '9200000012', 'Karve Nagar, Pune', 'O+'),
('Arjun More', 48, 'Male', '9200000013', 'Katraj, Pune', 'A-'),
('Swati Desai', 43, 'Female', '9200000014', 'Deccan, Pune', 'B+'),
('Mahesh Jadhav', 58, 'Male', '9200000015', 'Bibwewadi, Pune', 'O-'),
('Ritu Kapoor', 27, 'Female', '9200000016', 'Magarpatta, Pune', 'AB+'),
('Deepak Gupta', 50, 'Male', '9200000017', 'Lohegaon, Pune', 'A+'),
('Shreya Vora', 33, 'Female', '9200000018', 'Wagholi, Pune', 'B-'),
('Nitin Pawar', 44, 'Male', '9200000019', 'Dhanori, Pune', 'O+'),
('Komal Bansal', 39, 'Female', '9200000020', 'Shivajinagar, Pune', 'A-');


-- =========================================================
-- 5. BLOOD : 25 RECORDS
-- =========================================================

INSERT INTO blood
(donor_id, hospital_id, blood_grp, quantity, status,
 donation_date, donation_id, supply_details)
VALUES
(1, 1, 'O+', 450, 'Available', '2026-08-01', 1001, 'Stored in refrigerator A1'),
(2, 2, 'A+', 450, 'Available', '2026-08-02', 1002, 'Stored in refrigerator A2'),
(3, 3, 'B+', 450, 'Supplied', '2026-08-03', 1003, 'Supplied to emergency unit'),
(4, 4, 'AB+', 350, 'Available', '2026-08-04', 1004, 'Stored in refrigerator B1'),
(5, 5, 'O-', 450, 'Available', '2026-08-05', 1005, 'Stored in refrigerator B2'),
(6, 6, 'A-', 350, 'Reserved', '2026-08-06', 1006, 'Reserved for scheduled surgery'),
(7, 7, 'B-', 450, 'Available', '2026-08-07', 1007, 'Stored in refrigerator C1'),
(8, 8, 'AB-', 350, 'Available', '2026-08-08', 1008, 'Stored in refrigerator C2'),
(9, 9, 'O+', 450, 'Supplied', '2026-08-09', 1009, 'Supplied to trauma department'),
(10, 10, 'A+', 450, 'Available', '2026-08-10', 1010, 'Stored in refrigerator D1'),
(11, 1, 'B+', 450, 'Available', '2026-08-11', 1011, 'Stored in refrigerator D2'),
(12, 2, 'O+', 450, 'Reserved', '2026-08-12', 1012, 'Reserved for patient request'),
(13, 3, 'A-', 350, 'Available', '2026-08-13', 1013, 'Stored in refrigerator E1'),
(14, 4, 'B+', 450, 'Supplied', '2026-08-14', 1014, 'Supplied to surgical unit'),
(15, 5, 'O-', 450, 'Available', '2026-08-15', 1015, 'Stored in refrigerator E2'),
(16, 6, 'AB+', 350, 'Available', '2026-08-16', 1016, 'Stored in refrigerator F1'),
(17, 7, 'A+', 450, 'Available', '2026-08-17', 1017, 'Stored in refrigerator F2'),
(18, 8, 'B-', 450, 'Reserved', '2026-08-18', 1018, 'Reserved for emergency request'),
(19, 9, 'O+', 450, 'Available', '2026-08-19', 1019, 'Stored in refrigerator G1'),
(20, 10, 'A+', 450, 'Supplied', '2026-08-20', 1020, 'Supplied to medical ward'),
(21, 1, 'B+', 350, 'Available', '2026-08-21', 1021, 'Stored in refrigerator G2'),
(22, 2, 'O-', 450, 'Available', '2026-08-22', 1022, 'Stored in refrigerator H1'),
(23, 3, 'AB-', 350, 'Available', '2026-08-23', 1023, 'Stored in refrigerator H2'),
(24, 4, 'A-', 450, 'Reserved', '2026-08-24', 1024, 'Reserved for scheduled procedure'),
(25, 5, 'O+', 450, 'Available', '2026-08-25', 1025, 'Stored in refrigerator I1');


-- =========================================================
-- 6. BLOOD_REQUEST : 10 RECORDS
-- =========================================================

INSERT INTO blood_request
(hospital_id, recipient_id, blood_id, blood_type, quantity,
 request_date, status, completion_date)
VALUES
(1, 1, NULL, 'O+', 2, '2026-09-01', 'Pending', NULL),
(2, 2, 2, 'A+', 1, '2026-09-02', 'Completed', '2026-09-03'),
(3, 3, 3, 'B+', 2, '2026-09-03', 'Completed', '2026-09-04'),
(4, 4, NULL, 'AB+', 1, '2026-09-04', 'Pending', NULL),
(5, 5, 5, 'O-', 2, '2026-09-05', 'Approved', NULL),
(6, 6, 6, 'A-', 1, '2026-09-06', 'Completed', '2026-09-07'),
(7, 7, NULL, 'B-', 2, '2026-09-07', 'Pending', NULL),
(8, 8, 8, 'AB-', 1, '2026-09-08', 'Completed', '2026-09-09'),
(9, 9, 9, 'O+', 2, '2026-09-09', 'Completed', '2026-09-10'),
(10, 10, NULL, 'A+', 1, '2026-09-10', 'Rejected', NULL);