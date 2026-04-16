DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customer (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_phone VARCHAR(15),
    customer_address VARCHAR(255),
    customer_rating FLOAT CHECK (customer_rating BETWEEN 0 AND 5)
);

CREATE TABLE Dogs (
    dog_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    dog_name VARCHAR(100) NOT NULL,
    breed VARCHAR(100),
    dog_rating FLOAT CHECK (dog_rating BETWEEN 0 AND 5),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Walkers (
    walker_id VARCHAR(50) PRIMARY KEY,
    walker_name VARCHAR(100) NOT NULL,
    walker_phone VARCHAR(15),
    walker_rating FLOAT CHECK (walker_rating BETWEEN 0 AND 5)
);

CREATE TABLE Walks (
    walk_id VARCHAR(50) PRIMARY KEY,
    dog_id VARCHAR(50) NOT NULL,
    walker_id VARCHAR(50) NOT NULL,
    walk_date DATE NOT NULL,
    walk_time TIME NOT NULL,
    duration INT, -- duration in minutes
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);

CREATE TABLE Transactions (
    transaction_id VARCHAR(50) PRIMARY KEY,
    walk_id VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) CHECK (amount >= 0),
    payment_method VARCHAR(50),
    FOREIGN KEY (walk_id) REFERENCES Walks(walk_id)
);