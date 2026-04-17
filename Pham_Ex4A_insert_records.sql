USE lana_dog_walking;

INSERT INTO customers (name, phone, address, customer_rating) VALUES
('James Sera', '5056272144', '111 S Michigan Avenue, Chicago, IL 60603', 3.3),
('Maria Gonzalez', '3125550147', '742 W Adams St, Chicago, IL 60661', 4.5),
('David Chen', '7735552298', '1830 N Clark St, Chicago, IL 60614', 3.8),
('Alicia Patel', '8475556631', '55 E Monroe St, Chicago, IL 60603', 4.2),
('Robert Thompson', '7085559174', '1200 S Indiana Ave, Chicago, IL 60605', 2.9),
('Emily Johnson', '6305554821', '401 N Wabash Ave, Chicago, IL 60611', 5.0),
('Carlos Ramirez', '2245557732', '900 W Randolph St, Chicago, IL 60607', 3.6),
('Samantha Lee', '8155552904', '233 S Wacker Dr, Chicago, IL 60606', 4.7),
('Michael O''Connor', '8725556619', '10 E Grand Ave, Chicago, IL 60611', 3.1),
('Jessica Brown', '7795553388', '500 N Lake Shore Dr, Chicago, IL 60611', 4.0),
('Kevin White', '3315559027', '150 N Riverside Plaza, Chicago, IL 60606', 2.7);

INSERT INTO dogs (customer_id, dog_name, breed, dog_rating) VALUES
(1, 'Buddy', 'Golden Retriever', 4.5),
(2, 'Luna', 'French Bulldog', 4.8),
(3, 'Max', 'German Shepherd', 3.9),
(4, 'Bella', 'Labrador Retriever', 4.2),
(5, 'Charlie', 'Beagle', 3.1),
(6, 'Lucy', 'Poodle', 5.0),
(7, 'Rocky', 'Boxer', 3.7),
(8, 'Daisy', 'Cocker Spaniel', 4.6),
(9, 'Milo', 'Dachshund', 3.4),
(10, 'Zoe', 'Shih Tzu', 4.1),
(11, 'Oscar', 'Bulldog', 2.9);

INSERT INTO walkers (name, phone, walker_rating) VALUES
('Liam Carter', '3126001001', 4.6),
('Olivia Martinez', '3126001002', 4.9),
('Noah Wilson', '3126001003', 3.8),
('Emma Davis', '3126001004', 4.3),
('Elijah Moore', '3126001005', 3.5),
('Ava Taylor', '3126001006', 5.0),
('William Anderson', '3126001007', 4.1),
('Sophia Thomas', '3126001008', 4.7),
('James Jackson', '3126001009', 3.2),
('Isabella White', '3126001010', 4.4),
('Benjamin Harris', '3126001011', 2.8);

INSERT INTO walks (dog_id, walker_id, walk_date, walk_time, duration, status, notes) VALUES
(1, 1, '2026-04-01', '08:00:00', '00:30:00', 'completed', 'Good behavior'),
(2, 2, '2026-04-02', '09:00:00', '00:45:00', 'completed', 'Very energetic'),
(3, 3, '2026-04-03', '10:00:00', '00:30:00', 'completed', 'Pulled leash'),
(4, 4, '2026-04-04', '11:00:00', '01:00:00', 'completed', 'Calm walk'),
(5, 5, '2026-04-05', '12:00:00', '00:20:00', 'cancelled', 'Owner unavailable'),
(6, 6, '2026-04-06', '13:00:00', '00:50:00', 'completed', 'Excellent'),
(7, 7, '2026-04-07', '14:00:00', '00:30:00', 'scheduled', 'First walk'),
(8, 8, '2026-04-08', '15:00:00', '00:40:00', 'completed', 'Friendly dog'),
(9, 9, '2026-04-09', '16:00:00', '00:35:00', 'completed', 'Slight delay'),
(10, 10, '2026-04-10', '17:00:00', '00:25:00', 'scheduled', 'Evening walk'),
(11, 11, '2026-04-11', '18:00:00', '00:30:00', 'completed', 'Short walk');

INSERT INTO transactions (walk_id, amount, tip_amount, payment_method, transaction_date) VALUES
(1, 20.00, 3.00, 'card', '2026-04-01'),
(2, 25.00, 5.00, 'online', '2026-04-02'),
(3, 18.00, 2.00, 'cash', '2026-04-03'),
(4, 30.00, 6.00, 'card', '2026-04-04'),
(5, 0.00, 0.00, 'online', '2026-04-05'),
(6, 28.00, 4.00, 'card', '2026-04-06'),
(7, 22.00, 0.00, 'cash', '2026-04-07'),
(8, 24.00, 3.50, 'online', '2026-04-08'),
(9, 21.00, 2.50, 'card', '2026-04-09'),
(10, 19.00, 0.00, 'cash', '2026-04-10'),
(11, 23.00, 3.00, 'online', '2026-04-11');

-- customers table
SELECT *
FROM customers;

-- dogs table
SELECT *
FROM dogs;

-- walkers table
SELECT *
FROM walkers;

-- walks table
SELECT *
FROM walks;

-- transactions table
SELECT *
FROM transactions;