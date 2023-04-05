-- Insert first customer
INSERT INTO customers (
    first_name,
    last_name,
    age,
    email,
    rewards_member
)VALUES(
    'Tyler',
    'O''Brien',
    26,
    'tyleremail@email.com',
    true
);

-- Add one person to customers
INSERT INTO customers (
    first_name
) VALUES (
    'Maddie'
);

-- Add multiple people to customers
INSERT INTO customers (
    first_name
) VALUES (
    'Colin'
),(
    'Chase'
),(
    'Julia'
),(
    'Anna'
);

-- Inserted a movie
INSERT INTO movies(
    title,
    rating,
    runtime_minutes
) VALUES (
    'Batman',
    'PG-13',
    120
);

-- Inserted movies
INSERT INTO movies(
    title
) VALUES (
    'Superman'
),(
    'Godfather'
),(
    'Simpsons'
),(
    'Some other movie'
),(
    'Why did I add this many movie options?'
);

-- Added Theater items
INSERT INTO theaters (
    theater_number
) VALUES (
    1
),(
    2
);

-- Added showings
INSERT INTO showings (
    movie_id,
    theater_id
) VALUES (1,2),(2,1);

-- Added some tickets
INSERT INTO tickets (
    customer_id,
    showing_id
) VALUES (1,1),(2,1),(1,2),(3,2),(4,2);


-- Added some concession_items
INSERT INTO concession_items (
    snack_name,
    price
) VALUES ('soda',2.99),('popcorn',5.99),('starbursts',4.75);

-- Added some concession_transactions aka receipts
INSERT INTO concession_transactions (
    customer_id,
    total_less_taxes,
    taxes
) VALUES (1,3.99,0.67),(2,6.00,1.2),(3,10,2.10);

-- Added some concession_transaction_items
INSERT INTO concession_transaction_items (
    concession_transaction_id,
    concession_item_id
) VALUES (1,1),(1,2),(1,3),(2,2);