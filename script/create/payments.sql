CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    amount REAL NOT NULL,
    payment_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
