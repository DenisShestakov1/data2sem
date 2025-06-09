-- Средняя оценка по жанрам
SELECT g.name AS genre_name, AVG(r.rating) AS avg_rating
FROM genres g
JOIN books b ON g.genre_id = b.genre_id
JOIN reviews r ON b.book_id = r.book_id
GROUP BY g.genre_id;

-- Общее количество заказов на каждого читателя
SELECT r.reader_id, r.first_name, COUNT(o.order_id) AS total_orders
FROM readers r
LEFT JOIN orders o ON r.reader_id = o.reader_id
GROUP BY r.reader_id;

-- Общая сумма платежей за книги
SELECT SUM(amount) AS total_payments FROM payments;

-- Минимальное и максимальное количество книг в наличии
SELECT MIN(quantity) AS min_stock, MAX(quantity) AS max_stock FROM stock;

-- Количество сотрудников по ролям
SELECT r.name AS role_name, COUNT(er.employee_role_id) AS employee_count
FROM roles r
LEFT JOIN employee_roles er ON r.role_id = er.role_id
GROUP BY r.role_id;