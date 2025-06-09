CREATE TABLE logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    table_name TEXT NOT NULL,
    operation_type TEXT NOT NULL,
    record_id INTEGER,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);