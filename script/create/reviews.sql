CREATE TABLE reviews (
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reader_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    review_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (reader_id) REFERENCES readers(reader_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);