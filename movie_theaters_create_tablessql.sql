DROP TABLE IF EXISTS tickets
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    customer_id INTEGER NULL,
    theater_id INTEGER NOT NULL,
    ticket_price DECIMAL(8, 2) NOT NULL,
    screening_time INTEGER NOT NULL,
    theater_number INTEGER NOT NULL,
    seat_number INTEGER NOT NULL,
    purchase_date DATE NOT NULL,
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(theater_id) REFERENCES theaters(theater_id) 
);
DROP TABLE IF EXISTS customers
CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(50) NULL,
    customer_age INTEGER NULL
);
DROP TABLE IF EXISTS movies
CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50) NOT NULL,
    rating VARCHAR(5) NOT NULL,
    release_date DATE NOT NULL,
    description VARCHAR(100) NULL,
    movie_length INTEGER NOT NULL
);
DROP TABLE IF EXISTS theaters
CREATE TABLE theaters(
    theater_id SERIAL PRIMARY KEY,
    seats INTEGER NOT NULL,
    theater_type VARCHAR(25) NOT NULL
);
DROP TABLE IF EXISTS concessions
CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    item_price DECIMAL(8, 2) NOT NULL,
    item_description VARCHAR(200) NOT NULL,
    customer_id INTEGER NOT NULL,
    purchase_date DATE NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
