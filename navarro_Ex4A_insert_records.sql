USE lana_dog_walking;
INSERT INTO Customer (customer_id, customer_name, customer_phone, customer_address, customer_rating)
VALUES
(1, 'Longley Pham', '214-555-1001', '123 Maple St, Dallas, TX', 5),
(2, 'Onur Karaer', '214-555-1002', '456 Oak Ave, Irving, TX', 4),
(3, 'Maritza Ruiz', '214-555-1003', '789 Pine Rd, Arlington, TX', 5),
(4, 'Paola Martinez', '214-555-1004', '321 Cedar Ln, Grand Prairie, TX', 3),
(5, 'Julissa Flores', '214-555-1005', '654 Birch Blvd, Dallas, TX', 4),
(6, 'Teodoro Juarez', '214-555-1006', '987 Elm St, Irving, TX', 5),
(7, 'Mina Saeday', '214-555-1007', '159 Spruce Dr, Carrollton, TX', 4),
(8, 'Godknows Mutize', '214-555-1008', '753 Willow Way, Euless, TX', 2),
(9, 'Tracy Arista', '214-555-1009', '852 Aspen Ct, Coppell, TX', 5),
(10, 'Sultan Simsek', '214-555-1010', '951 Poplar St, Bedford, TX', 3);

INSERT INTO Dogs (dog_id, customer_id, dog_name, dog_breed, dog_rating)
VALUES
(1, 1, 'Buddy', 'Golden Retriever', 5),
(2, 2, 'Max', 'Poodle', 4),
(3, 3, 'Bella', 'Labrador Retriever', 5),
(4, 4, 'Charlie', 'Beagle', 3),
(5, 5, 'Lucy', 'French Bulldog', 4),
(6, 6, 'Rocky', 'Boxer', 5),
(7, 7, 'Daisy', 'Poodle', 4),
(8, 8, 'Milo', 'Husky', 2),
(9, 9, 'Luna', 'Husky', 5),
(10, 10, 'Coco', 'Shih Tzu', 3);

INSERT INTO Walkers (walker_id, walker_name, walker_phone, walker_rating)
VALUES
(1, 'John Cena', '214-555-2001', 1),
(2, 'Tom Holland', '214-555-2002', 4),
(3, 'Katy Perry', '214-555-2003', 5),
(4, 'Lady Gaga', '214-555-2004', 2),
(5, 'Kevin Hart', '214-555-2005', 4),
(6, 'Salma Hayek', '214-555-2006', 5),
(7, 'Barack Obama', '214-555-2007', 5),
(8, 'Paris Hilton', '214-555-2008', 3),
(9, 'Kim Kardashian', '214-555-2009', 5),
(10, 'Bad Bunny', '214-555-2010', 3);

INSERT INTO Walks (walk_id, dog_id, walker_id, walk_date, walk_time, duration_minutes)
VALUES
(1, 1, 3, '2026-04-01', '2026-04-01 08:00:00', 30),
(2, 2, 5, '2026-04-01', '2026-04-01 09:00:00', 45),
(3, 3, 1, '2026-04-02', '2026-04-02 10:00:00', 60),
(4, 4, 7, '2026-04-02', '2026-04-02 11:00:00', 25),
(5, 5, 2, '2026-04-03', '2026-04-03 08:30:00', 40),
(6, 6, 9, '2026-04-03', '2026-04-03 09:15:00', 50),
(7, 7, 4, '2026-04-04', '2026-04-04 07:45:00', 35),
(8, 8, 6, '2026-04-04', '2026-04-04 10:30:00', 20),
(9, 9, 8, '2026-04-05', '2026-04-05 12:00:00', 55),
(10, 10, 10, '2026-04-05', '2026-04-05 13:15:00', 30);

INSERT INTO Transactions (transaction_id, customer_id, walk_id, amount, payment_method)
VALUES
(1, 1, 1, 25, 'Credit Card'),
(2, 2, 2, 35, 'Debit Card'),
(3, 3, 3, 40, 'Cash'),
(4, 4, 4, 20, 'Credit Card'),
(5, 5, 5, 30, 'Venmo'),
(6, 6, 6, 45, 'PayPal'),
(7, 7, 7, 28, 'Cash'),
(8, 8, 8, 18, 'Debit Card'),
(9, 9, 9, 50, 'Credit Card'),
(10, 10, 10, 32, 'Zelle');



