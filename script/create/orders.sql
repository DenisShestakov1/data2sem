CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reader_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    library_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    return_date DATE,
    status TEXT DEFAULT 'pending',
    FOREIGN KEY (reader_id) REFERENCES readers(reader_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (library_id) REFERENCES libraries(library_id)
);