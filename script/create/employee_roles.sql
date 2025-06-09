CREATE TABLE employee_roles (
    employee_role_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER NOT NULL,
    role_id INTEGER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);