-- Информация о заказах с данными о читателе, книге и библиотеке
SELECT 
    o.order_id,
    r.first_name || ' ' || r.last_name AS reader_name,
    b.title AS book_title,
    l.name AS library_name,
    o.order_date,
    o.status
FROM orders o
JOIN readers r ON o.reader_id = r.reader_id
JOIN books b ON o.book_id = b.book_id
JOIN libraries l ON o.library_id = l.library_id;

-- Сотрудники с их ролями и библиотеками
SELECT 
    e.first_name || ' ' || e.last_name AS employee_name,
    r.name AS role_name,
    l.name AS library_name
FROM employee_roles er
JOIN employees e ON er.employee_id = e.employee_id
JOIN roles r ON er.role_id = r.role_id
JOIN libraries l ON e.library_id = l.library_id;

-- Отзывы с информацией о читателе и книге
SELECT 
    rev.review_id,
    r.first_name || ' ' || r.last_name AS reader_name,
    b.title AS book_title,
    rev.rating,
    rev.comment
FROM reviews rev
JOIN readers r ON rev.reader_id = r.reader_id
JOIN books b ON rev.book_id = b.book_id;

-- Остатки книг в библиотеках с информацией об авторе и жанре
SELECT 
    l.name AS library_name,
    b.title AS book_title,
    a.name AS author_name,
    g.name AS genre_name,
    s.quantity
FROM stock s
JOIN libraries l ON s.library_id = l.library_id
JOIN books b ON s.book_id = b.book_id
JOIN authors a ON b.author_id = a.author_id
JOIN genres g ON b.genre_id = g.genre_id;

-- Уведомления с именами читателей
SELECT 
    n.notification_id,
    r.first_name || ' ' || r.last_name AS reader_name,
    n.message,
    n.sent_date
FROM notifications n
JOIN readers r ON n.reader_id = r.reader_id;