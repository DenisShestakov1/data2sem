CREATE TABLE stock (
    stock_id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_id INTEGER NOT NULL,
    library_id INTEGER NOT NULL,
    quantity INTEGER DEFAULT 1,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (library_id) REFERENCES libraries(library_id)
);