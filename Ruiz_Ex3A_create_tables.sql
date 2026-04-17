DROP SCHEMA IF EXISTS lana_dog_walking; CREATE SCHEMA lana_dog_walking; USE lana_dog_walking;

CREATE TABLE Customer (
    CustomerID VARCHAR(50) NOT NULL,
    CustomerFirstName VARCHAR(100) NOT NULL,
    CustomerLastName VARCHAR(100) NOT NULL,
    CustomerEmail VARCHAR(255) NOT NULL,
    CustomerPhone VARCHAR(50),
    CustomerAddress VARCHAR(255),
    PRIMARY KEY (CustomerID),
    UNIQUE (CustomerEmail)
);

CREATE TABLE Dogs (
    DogID VARCHAR(50) NOT NULL,
    CustomerID VARCHAR(50) NOT NULL,
    DogName VARCHAR(100) NOT NULL,
    Breed VARCHAR(100),
    Size VARCHAR(50),
    Age INT,
    SpecialNotes VARCHAR(255),
    PRIMARY KEY (DogID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Walkers (
    WalkerID VARCHAR(50) NOT NULL,
    WalkerFirstName VARCHAR(100) NOT NULL,
    WalkerLastName VARCHAR(100) NOT NULL,
    WalkerEmail VARCHAR(255) NOT NULL,
    WalkerPhone VARCHAR(50),
    HireDate DATE,
    PRIMARY KEY (WalkerID),
    UNIQUE (WalkerEmail)
);

CREATE TABLE Walks (
    WalkID VARCHAR(50) NOT NULL,
    DogID VARCHAR(50) NOT NULL,
    WalkerID VARCHAR(50) NOT NULL,
    StartTime DATETIME,
    EndTime DATETIME,
    Duration INT,
    Notes VARCHAR(255),
    PRIMARY KEY (WalkID),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID),
    FOREIGN KEY (WalkerID) REFERENCES Walkers(WalkerID)
);

CREATE TABLE Transactions (
    TransactionID VARCHAR(50) NOT NULL,
    WalkID VARCHAR(50) NOT NULL,
    CustomerID VARCHAR(50) NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    Status VARCHAR(50),
    PRIMARY KEY (TransactionID),
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

