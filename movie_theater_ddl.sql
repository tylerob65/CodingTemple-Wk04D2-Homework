
CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age SMALLINT CHECK (age > 0),
    email VARCHAR (100),
    rewards_member BOOLEAN DEFAULT FALSE
);


CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    rating VARCHAR(10),
    runtime_minutes INTEGER
);


CREATE TABLE theaters (
    theater_id SERIAL PRIMARY KEY,
    theater_number SMALLINT NOT NULL,
    capacity SMALLINT
);

CREATE TABLE showings (
    showing_id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    theater_id INTEGER,
    FOREIGN KEY (theater_id) REFERENCES theaters(theater_id),
    start_times TIMESTAMP
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    showing_id INTEGER NOT NULL,
    FOREIGN KEY (showing_id) REFERENCES showings(showing_id),
    total_price NUMERIC(6,2),
    viewers INTEGER DEFAULT 1
);

CREATE TABLE concession_items (
    concession_item_id SERIAL PRIMARY KEY,
    snack_name VARCHAR(30) NOT NULL,
    price NUMERIC(5,2)
);

CREATE TABLE concession_transactions (
    concession_transaction_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_less_taxes NUMERIC(5,2),
    taxes NUMERIC(5,2)
);

CREATE TABLE concession_transaction_items (
    concession_transaction_id INTEGER NOT NULL,
    FOREIGN KEY (concession_transaction_id) REFERENCES concession_transactions(concession_transaction_id),
    concession_item_id INTEGER NOT NULL,
    FOREIGN KEY (concession_item_id) REFERENCES concession_items(concession_item_id),
    concession_quantity INTEGER DEFAULT 1
);