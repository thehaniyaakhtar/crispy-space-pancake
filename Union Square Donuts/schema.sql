--tables: ingredients, donuts, orders, customers
CREATE TABLE ingredients(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    pay_per_unit REAL NOT NULL
);

CREATE TABLE donuts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    gluten BOOLEAN NOT NULL,
    price REAL NOT NULL
);

CREATE TABLE donut_ing(
    donut_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    FOREIGN KEY (donut_id) REFERENCES donuts(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(id),
    PRIMARY KEY (donut_id, ingredient_id)
);

CREATE TABLE orders(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE customers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE order_items(
    order_id INTEGER NOT NULL,
    donut_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (donut_id) REFERENCES donuts(id),
    PRIMARY KEY (order_id, donut_id)
);

INSERT INTO ingredients(id, name, pay_per_unit)
VALUES (1, 'Cocoa', 5.00 ),
       (2, 'Flour', 2.00 ),
       (3, 'Buttermilk', 5.00 ),
       (4, 'Sugar', 5.00 ),
       (5, 'Sprinkles', 5.00 )
;

INSERT INTO donuts(id, name, gluten, price)
VALUES (1, 'Belgian Dark Chocolate', 0, 4.00),
       (2, 'Back-To-School Sprinkles', 0, 4.00)
;

INSERT INTO donut_ing(donut_id, ingredient_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4)
;

INSERT INTO donut_ing(donut_id, ingredient_id)
VALUES (2, 2),
       (2, 3),
       (2, 4),
       (2, 5)
;

INSERT INTO customers(id, first_name, last_name)
VALUES (1, 'Luis', 'Singh')
;

INSERT INTO orders (customer_id)
VALUES (1)
;

INSERT INTO order_items (order_id, donut_id, quantity)
VALUES
    (1, 1, 3),
    (1, 2, 2)
;
