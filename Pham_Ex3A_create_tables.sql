DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    address VARCHAR(255),
    customer_rating DECIMAL(2,1),
    CHECK (customer_rating BETWEEN 0 AND 5)
);

CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    dog_name VARCHAR(100) NOT NULL,
    breed VARCHAR(100),
    dog_rating DECIMAL(2,1),
    CHECK (dog_rating BETWEEN 0 AND 5),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    walker_rating DECIMAL(2,1),
    CHECK (walker_rating BETWEEN 0 AND 5)
);

CREATE TABLE walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    walk_date DATE NOT NULL,
    walk_time TIME NOT NULL,
    duration TIME,
    status ENUM('scheduled', 'completed', 'cancelled') DEFAULT 'scheduled',
    notes TEXT,
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (walker_id) REFERENCES walkers(walker_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT NOT NULL,
    amount DECIMAL(8,2) NOT NULL,
    tip_amount DECIMAL(6,2) DEFAULT 0.00,
    payment_method ENUM('cash', 'card', 'online') NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY (walk_id) REFERENCES walks(walk_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CHECK (amount >= 0),
    CHECK (tip_amount >= 0)
);