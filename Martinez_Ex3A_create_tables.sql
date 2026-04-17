DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    breed VARCHAR(100),
    age INT,
    size VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    walk_date DATE,
    walk_time TIME,
    duration_minutes INT,
    status VARCHAR(20),
    payment_amount DECIMAL(6,2),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);

CREATE TABLE Transactions (
    transactions_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT NOT NULL,
    amount DECIMAL(6,2),
    payment_method VARCHAR(50),
    payment_date DATE,
    FOREIGN KEY (walk_id) REFERENCES Walks(walk_id)
);