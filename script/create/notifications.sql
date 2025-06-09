CREATE TABLE notifications (
    notification_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reader_id INTEGER NOT NULL,
    message TEXT NOT NULL,
    sent_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (reader_id) REFERENCES readers(reader_id)
);