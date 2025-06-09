CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    position TEXT,
    library_id INTEGER NOT NULL,
    hire_date DATE,
    FOREIGN KEY (library_id) REFERENCES libraries(library_id)
);