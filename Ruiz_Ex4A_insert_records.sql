USE lana_dog_walking;
INSERT INTO Customer (
    CustomerID,
    CustomerFirstName,
    CustomerLastName,
    CustomerEmail,
    CustomerPhone,
    CustomerAddress
)
VALUES
-- Original record you provided
('1', 'Maria', 'Cervantes', 'mcervantes@gmail.com', '7734447789', '4552 Sesame Street Chicago, IL 65879'),

-- 10 additional sample records
('2', 'Daniel', 'Ortega', 'dortega@gmail.com', '3125559821', '7821 W Belmont Ave Chicago, IL 60634'),
('3', 'Jasmine', 'Patel', 'jpatel@yahoo.com', '7732214490', '1190 S Michigan Ave Chicago, IL 60605'),
('4', 'Kevin', 'Ramirez', 'kramirez@gmail.com', '8723301144', '3345 N Kimball Ave Chicago, IL 60618'),
('5', 'Sofia', 'Nguyen', 'snguyen@outlook.com', '7085557712', '9021 W 55th St Countryside, IL 60525'),
('6', 'Anthony', 'Brooks', 'abrooks@gmail.com', '3124409988', '1440 W Monroe St Chicago, IL 60607'),
('7', 'Brianna', 'Lopez', 'blopez@gmail.com', '7738824411', '6500 S Pulaski Rd Chicago, IL 60629'),
('8', 'Marcus', 'Johnson', 'mjohnson@yahoo.com', '8725556677', '210 E Pearson St Chicago, IL 60611'),
('9', 'Elena', 'Torres', 'etorres@gmail.com', '7739915520', '4301 W 26th St Chicago, IL 60623'),
('10', 'Victor', 'Hernandez', 'vhernandez@gmail.com', '3127779033', '500 W Madison St Chicago, IL 60661'),
('11', 'Olivia', 'Kim', 'okim@gmail.com', '7083304419', '7200 W Cermak Rd Berwyn, IL 60402');

USE lana_dog_walking;
INSERT INTO Dogs (
    DogID,
    CustomerID,
    DogName,
    Breed,
    Size,
    Age,
    SpecialNotes
)
VALUES
-- Original record
('1', '1', 'Vicky', 'Pitbull', 'Medium', 3, 'Scared of cars honking'),

-- 10 additional sample records
('2', '2', 'Rocky', 'German Shepherd', 'Large', 5, 'Needs long walks'),
('3', '3', 'Luna', 'Shih Tzu', 'Small', 2, 'Allergic to chicken'),
('4', '4', 'Milo', 'Beagle', 'Medium', 4, 'Pulls on leash'),
('5', '5', 'Bella', 'Golden Retriever', 'Large', 1, 'Very friendly'),
('6', '6', 'Shadow', 'Husky', 'Large', 3, 'High energy'),
('7', '7', 'Coco', 'Chihuahua', 'Small', 6, 'Nervous around strangers'),
('8', '8', 'Duke', 'Boxer', 'Medium', 7, 'Needs medication daily'),
('9', '9', 'Nala', 'Poodle Mix', 'Medium', 2, 'Good with kids'),
('10', '10', 'Bruno', 'Rottweiler', 'Large', 4, 'Strong but gentle'),
('11', '11', 'Daisy', 'Corgi', 'Small', 3, 'Loves treats');

USE lana_dog_walking;
INSERT INTO Walkers (
    WalkerID,
    WalkerFirstName,
    WalkerLastName,
    WalkerEmail,
    WalkerPhone,
    HireDate
)
VALUES
-- Original record
('1', 'Martha', 'Nunez', 'mnunez@gmail.com', '3125478896', '2023-02-01'),

-- 10 additional sample records
('2', 'Jason', 'Miller', 'jmiller@gmail.com', '7735501299', '2023-03-15'),
('3', 'Alicia', 'Gomez', 'agomez@yahoo.com', '3124417788', '2022-11-02'),
('4', 'Robert', 'Singh', 'rsingh@gmail.com', '8723309921', '2024-01-10'),
('5', 'Emily', 'Carter', 'ecarter@outlook.com', '7085552210', '2023-07-22'),
('6', 'Isaiah', 'Brown', 'ibrown@gmail.com', '7738821100', '2022-09-05'),
('7', 'Vanessa', 'Ruiz', 'vruiz@gmail.com', '3127774412', '2023-05-30'),
('8', 'Thomas', 'Lee', 'tlee@yahoo.com', '8725559912', '2024-02-14'),
('9', 'Daniela', 'Ortiz', 'dortiz@gmail.com', '7739913301', '2023-04-18'),
('10', 'Henry', 'Wilson', 'hwilson@gmail.com', '3124407722', '2022-12-01'),
('11', 'Chloe', 'Martinez', 'cmartinez@gmail.com', '7083305521', '2023-08-09');

USE lana_dog_walking;
INSERT INTO Walks (
    WalkID,
    DogID,
    WalkerID,
    StartTime,
    EndTime,
    Duration,
    Notes
)
VALUES
-- Original record
('1', '1', '1', '2024-04-16 13:02:00', '2024-04-16 13:47:00', 45, 'First walk of the day'),

-- 10 additional sample records
('2', '2', '2', '2024-04-16 09:00:00', '2024-04-16 09:35:00', 35, 'Morning walk'),
('3', '3', '3', '2024-04-16 10:15:00', '2024-04-16 10:50:00', 35, 'Slow pace today'),
('4', '4', '4', '2024-04-16 11:30:00', '2024-04-16 12:10:00', 40, 'Sniffed everything'),
('5', '5', '5', '2024-04-16 12:45:00', '2024-04-16 13:20:00', 35, 'Very energetic'),
('6', '6', '6', '2024-04-16 14:00:00', '2024-04-16 14:50:00', 50, 'Needed extra time'),
('7', '7', '7', '2024-04-16 15:10:00', '2024-04-16 15:40:00', 30, 'Nervous but improving'),
('8', '8', '8', '2024-04-16 16:00:00', '2024-04-16 16:30:00', 30, 'Took medication before walk'),
('9', '9', '9', '2024-04-16 17:20:00', '2024-04-16 17:55:00', 35, 'Great behavior'),
('10', '10', '10', '2024-04-16 18:00:00', '2024-04-16 18:45:00', 45, 'Strong puller'),
('11', '11', '11', '2024-04-16 19:10:00', '2024-04-16 19:40:00', 30, 'Loved meeting other dogs');


USE lana_dog_walking;
INSERT INTO Walks (
    WalkID,
    DogID,
    WalkerID,
    StartTime,
    EndTime,
    Duration,
    Notes
)
VALUES
-- Original record (kept the same)
('1', '1', '1', '2024-04-16 13:02:00', '2024-04-16 13:47:00', 45, 'First walk of the day'),

-- Randomized records
('7', '4', '9', '2024-04-16 09:10:00', '2024-04-16 09:45:00', 35, 'Morning walk'),
('3', '10', '2', '2024-04-16 10:00:00', '2024-04-16 10:40:00', 40, 'Good energy today'),
('11', '2', '7', '2024-04-16 11:20:00', '2024-04-16 11:55:00', 35, 'Sniffed everything'),
('5', '8', '4', '2024-04-16 12:30:00', '2024-04-16 13:05:00', 35, 'Very friendly'),
('9', '6', '11', '2024-04-16 14:15:00', '2024-04-16 15:00:00', 45, 'Needed extra time'),
('2', '3', '5', '2024-04-16 15:30:00', '2024-04-16 16:00:00', 30, 'Nervous but improving'),
('10', '11', '3', '2024-04-16 16:20:00', '2024-04-16 16:55:00', 35, 'Great behavior'),
('4', '9', '10', '2024-04-16 17:40:00', '2024-04-16 18:20:00', 40, 'Strong puller'),
('6', '7', '6', '2024-04-16 18:30:00', '2024-04-16 19:00:00', 30, 'Calm walk'),
('8', '5', '8', '2024-04-16 19:15:00', '2024-04-16 19:50:00', 35, 'Loved meeting other dogs');

USE lana_dog_walking;
INSERT INTO Transactions (
    TransactionID,
    WalkID,
    CustomerID,
    Amount,
    PaymentDate,
    PaymentMethod,
    Status
)
VALUES
-- Original record
('62646741', '1', '1', 50.00, '2026-04-17', 'VISA', 'Approved'),

-- 10 randomized sample records
('88213455', '7', '4', 35.00, '2026-04-16', 'Mastercard', 'Approved'),
('55290112', '3', '10', 40.00, '2026-04-16', 'Cash', 'Approved'),
('99124788', '11', '2', 35.00, '2026-04-16', 'VISA', 'Pending'),
('77452033', '5', '8', 35.00, '2026-04-16', 'Amex', 'Approved'),
('33019844', '9', '6', 45.00, '2026-04-16', 'Mastercard', 'Approved'),
('11874492', '2', '3', 30.00, '2026-04-16', 'Cash', 'Declined'),
('66420931', '10', '11', 35.00, '2026-04-16', 'VISA', 'Approved'),
('44781209', '4', '9', 40.00, '2026-04-16', 'Amex', 'Approved'),
('90331127', '6', '7', 30.00, '2026-04-16', 'Mastercard', 'Pending'),
('51278904', '8', '5', 35.00, '2026-04-16', 'Cash', 'Approved');

