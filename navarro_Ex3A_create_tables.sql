DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_phone VARCHAR(20),
    customer_address VARCHAR(255),
    customer_rating INT
);

CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY,
    customer_id INT,
    dog_name VARCHAR(100),
    dog_breed VARCHAR(100),
    dog_rating INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Walkers (
    walker_id INT PRIMARY KEY,
    walker_name VARCHAR(100),
    walker_phone VARCHAR(20),
    walker_rating INT
);

CREATE TABLE Walks (
    walk_id INT PRIMARY KEY,
    dog_id INT,
    walker_id INT,
    walk_date DATE,
    walk_time TIMESTAMP,
    duration_minutes INT,
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);
