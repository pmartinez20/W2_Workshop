USE lana_dog_walking;
-- INSERT script for Customer table
-- Table columns: customer_id, customer_name, customer_phone, customer_address, customer_rating

INSERT INTO Customer (customer_id, customer_name, customer_phone, customer_address, customer_rating) VALUES
('CUS-2',  'Marcus Rivera',    '3125559021', '847 N Clark St',         4),
('CUS-3',  'Sophia Chen',      '7734482315', '2301 W Belmont Ave',     5),
('CUS-4',  'Derek Okafor',     '3126673890', '519 S Michigan Ave',     3),
('CUS-5',  'Natalie Brennan',  '7732219847', '1102 N Damen Ave',       5),
('CUS-6',  'Trevor Walsh',     '3124430076', '3450 W Fullerton Ave',   4),
('CUS-7',  'Amelia Torres',    '7735561234', '728 W Roscoe St',        5),
('CUS-8',  'James Okonkwo',    '3127784512', '415 N Wabash Ave',       3),
('CUS-9',  'Lauren Fitzgerald','7736690023', '2089 N Clybourn Ave',    4),
('CUS-10', 'Brian Nakamura',   '3123347765', '950 W Armitage Ave',     5),
('CUS-11', 'Priya Patel',      '7731123456', '601 W Diversey Pkwy',    4);

-- ============================================================
-- INSERT script for Dogs table
-- Columns: Dog_ID, Customer_id, dog_name, breed, dog_rating
-- ============================================================

INSERT INTO Dogs (Dog_ID, Customer_id, dog_name, breed, dog_rating) VALUES
('DOG-2',  'CUS-2',  'Biscuit',  'Labrador Retriever',   4.5),
('DOG-3',  'CUS-3',  'Mochi',    'Shiba Inu',            4.8),
('DOG-4',  'CUS-4',  'Rex',      'German Shepherd',      3.9),
('DOG-5',  'CUS-5',  'Luna',     'Golden Retriever',     5.0),
('DOG-6',  'CUS-6',  'Champ',    'Beagle',               4.1),
('DOG-7',  'CUS-7',  'Bella',    'French Bulldog',       4.7),
('DOG-8',  'CUS-8',  'Duke',     'Rottweiler',           3.6),
('DOG-9',  'CUS-9',  'Coco',     'Maltese',              4.9),
('DOG-10', 'CUS-10', 'Titan',    'Siberian Husky',       4.3),
('DOG-11', 'CUS-11', 'Pepper',   'Dachshund',            4.6);


-- ============================================================
-- INSERT script for Walkers table
-- Columns: walker_id, walker_name, walker_phone, walker_rating
-- ============================================================

INSERT INTO Walkers (walker_id, walker_name, walker_phone, walker_rating) VALUES
('WAL-2',  'Brianna Moss',     '3124401987', 4.5),
('WAL-3',  'Carlos Mendez',    '7733328874', 4.8),
('WAL-4',  'Tiffany Grant',    '3125567743', 3.9),
('WAL-5',  'Owen Fitzgerald',  '7736650021', 5.0),
('WAL-6',  'Aisha Nwosu',      '3127789934', 4.2),
('WAL-7',  'Liam Kowalski',    '7731114523', 4.6),
('WAL-8',  'Dana Reyes',       '3122234786', 4.3),
('WAL-9',  'Marcus Webb',      '7734447812', 4.7),
('WAL-10', 'Priya Sharma',     '3129903341', 4.1),
('WAL-11', 'Tyler Henson',     '7738890056', 4.9);


-- ============================================================
-- INSERT script for Walks table
-- Columns: walk_id, dog_id, walker_id, walk_date, walk_time, duration
-- walk_date stored as yyyy-mm-dd
-- walk_time, duration format: HH:MM:SS
-- ============================================================

INSERT INTO Walks (walk_id, dog_id, walker_id, walk_date, walk_time, duration) VALUES
('W-00000002', 'DOG-2',  'WAL-2',  '2026-01-02', '08:00:00', 30),
('W-00000003', 'DOG-3',  'WAL-3',  '2026-01-05', '09:15:00', 45),
('W-00000004', 'DOG-4',  'WAL-4',  '2026-01-07', '10:00:00', 60),
('W-00000005', 'DOG-5',  'WAL-5',  '2026-01-10', '07:30:00', 30),
('W-00000006', 'DOG-6',  'WAL-6',  '2026-01-12', '11:00:00', 45),
('W-00000007', 'DOG-7',  'WAL-7',  '2026-01-15', '14:00:00', 60),
('W-00000008', 'DOG-8',  'WAL-8',  '2026-01-19', '15:30:00', 30),
('W-00000009', 'DOG-9',  'WAL-9',  '2026-01-22', '08:45:00', 45),
('W-00000010', 'DOG-10', 'WAL-10', '2026-01-26', '13:00:00', 60),
('W-00000011', 'DOG-11', 'WAL-11', '2026-01-29', '16:15:00', 30);

DESCRIBE Walks;
-- ============================================================
-- INSERT script for Transactions table
-- Columns: transaction_id, walk_id, amount, payment_method
-- ============================================================

INSERT INTO Transactions (transaction_id, walk_id, amount, payment_method) VALUES
('TR1234567891', 'W-00000002', 45.00,  'Visa'),
('TR1234567892', 'W-00000003', 67.50,  'Mastercard'),
('TR1234567893', 'W-00000004', 90.00,  'Amex'),
('TR1234567894', 'W-00000005', 45.00,  'PayPal'),
('TR1234567895', 'W-00000006', 67.50,  'Visa'),
('TR1234567896', 'W-00000007', 90.00,  'Cash'),
('TR1234567897', 'W-00000008', 45.00,  'Mastercard'),
('TR1234567898', 'W-00000009', 67.50,  'Amex'),
('TR1234567899', 'W-00000010', 90.00,  'Visa'),
('TR1234567900', 'W-00000011', 45.00,  'PayPal');


-- Testing the tables
SELECT * 
FROM walks
