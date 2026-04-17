USE lana_dog_walking;

-- Insert Customers
INSERT INTO Customers (customer_id, first_name, last_name, phone, email, address) VALUES
(1, 'Paola', 'Martinez', '(555) 201-3344', 'paola.martinez@email.com', '101 Maple St, Chicago IL 60601'),
(2, 'Maritza', 'Lopez', '(555) 874-2210', 'maritza.lopez@email.com', '42 Oak Ave, Chicago IL 60602'),
(3, 'Onur', 'Karaer', '(555) 990-5567', 'onur.karaer@email.com', '8 Elm Blvd, Chicago IL 60603'),
(4, 'James', 'Longley', '(555) 334-7788', 'j.longley@email.com', '55 Pine Rd, Chicago IL 60604'),
(5, 'Jessica', 'Pham', '(555) 912-7663', 'jessica.pham@email.com', '12 Spaulding Ave, Dallas TX 78263'),
(6, 'Carlos', 'Ruiz', '(555) 445-9910', 'carlos.ruiz@email.com', '88 Willow Dr, Chicago IL 60605'),
(7, 'Aisha', 'Johnson', '(555) 223-5541', 'aisha.j@email.com', '200 Lakeview Blvd, Chicago IL 60606'),
(8, 'Mei', 'Chen', '(555) 678-3320', 'mei.chen@email.com', '33 Birch Ln, Evanston IL 60201'),
(9, 'David', 'Navarro', '(555) 119-8874', 'd.navarro@email.com', '75 Cedar St, Chicago IL 60607'),
(10, 'Sofia', 'Rivera', '(555) 556-2290', 'sofia.r@email.com', '410 Maple Ave, Chicago IL 60608');

-- Insert Walkers
INSERT INTO Walkers (walker_id, name, phone, email) VALUES
(1, 'Lana Owner', '(555) 010-1111', 'lana@lanaswalks.com'),
(2, 'Jake Torres', '(555) 020-2222', 'jake@lanaswalks.com'),
(3, 'Mia Chen', '(555) 030-3333', 'mia@lanaswalks.com'),
(4, 'Andre Williams', '(555) 040-4444', 'andre@lanaswalks.com'),
(5, 'Sara Nguyen', '(555) 050-5555', 'sara@lanaswalks.com'),
(6, 'Tyler Brooks', '(555) 060-6666', 'tyler@lanaswalks.com'),
(7, 'Priya Patel', '(555) 070-7777', 'priya@lanaswalks.com'),
(8, 'Marcus Lee', '(555) 080-8888', 'marcus@lanaswalks.com'),
(9, 'Emily Tran', '(555) 090-9999', 'emily@lanaswalks.com'),
(10, 'Jordan Kim', '(555) 100-1010', 'jordan@lanaswalks.com');

-- Insert Dogs
INSERT INTO Dogs (dog_id, customer_id, name, breed, age, size) VALUES
(1, 1, 'Dexter', 'Pomeranian', 9, 'Small'),
(2, 2, 'Mochi', 'Shiba Inu', 5, 'Medium'),
(3, 3, 'Rex', 'German Shepherd', 4, 'Large'),
(4, 4, 'Princess', 'Pitbull', 2, 'Large'),
(5, 5, 'Coco', 'Miniature Poodle', 6, 'Small'),
(6, 6, 'Pluto', 'Golden Doodle', 2, 'Large'),
(7, 7, 'Bella', 'Labrador', 3, 'Large'),
(8, 8, 'Luna', 'Chihuahua', 4, 'Small'),
(9, 9, 'Max', 'Beagle', 5, 'Medium'),
(10, 10, 'Daisy', 'French Bulldog', 1, 'Medium');

-- Insert Walks
INSERT INTO Walks (walk_id, dog_id, walker_id, walk_date, walk_time, duration_minutes, status, payment_amount) VALUES
(1, 1, 1, '2026-04-15', '08:00:00', 30, 'Completed', 15.00),
(2, 3, 2, '2026-04-15', '09:00:00', 60, 'Completed', 25.00),
(3, 2, 1, '2026-04-16', '08:30:00', 30, 'Scheduled', 15.00),
(4, 4, 3, '2026-04-16', '10:00:00', 45, 'Scheduled', 20.00),
(5, 5, 2, '2026-04-17', '07:30:00', 60, 'Scheduled', 25.00),
(6, 6, 3, '2026-04-17', '09:00:00', 30, 'Cancelled', 0.00),
(7, 7, 4, '2026-04-18', '08:00:00', 45, 'Completed', 20.00),
(8, 8, 5, '2026-04-18', '10:30:00', 30, 'Completed', 15.00),
(9, 9, 6, '2026-04-19', '07:00:00', 60, 'Scheduled', 25.00),
(10, 10, 7, '2026-04-19', '11:00:00', 45, 'Scheduled', 20.00);

-- Insert Transactions
INSERT INTO Transactions (transactions_id, walk_id, amount, payment_method, payment_date) VALUES
(1, 1, 15.00, 'Credit Card', '2026-04-15'),
(2, 2, 25.00, 'Cash', '2026-04-15'),
(3, 3, 15.00, 'Venmo', '2026-04-16'),
(4, 4, 20.00, 'Credit Card', '2026-04-16'),
(5, 5, 25.00, 'Cash', '2026-04-17'),
(6, 7, 20.00, 'Zelle', '2026-04-18'),
(7, 8, 15.00, 'Credit Card', '2026-04-18'),
(8, 9, 25.00, 'Venmo', '2026-04-19'),
(9, 10, 20.00, 'Cash', '2026-04-19'),
(10, 2, 5.00, 'Cash', '2026-04-15');

-- Verify all tables
SELECT * FROM Customers;
SELECT * FROM Walkers;
SELECT * FROM Dogs;
SELECT * FROM Walks;
SELECT * FROM Transactions;