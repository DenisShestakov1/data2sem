-- Информация о книгах с авторами и жанрами
CREATE VIEW book_author_genre_info AS
SELECT 
    b.title,
    a.name AS author_name,
    g.name AS genre_name,
    b.publication_year,
    b.isbn
FROM books b
JOIN authors a ON b.author_id = a.author_id
JOIN genres g ON b.genre_id = g.genre_id;

-- Статистика заказов по читателям
CREATE VIEW reader_order_stats AS
SELECT 
    r.reader_id,
    r.first_name || ' ' || r.last_name AS reader_name,
    COUNT(o.order_id) AS total_orders,
    SUM(CASE WHEN o.return_date IS NULL THEN 1 ELSE 0 END) AS current_orders
FROM readers r
LEFT JOIN orders o ON r.reader_id = o.reader_id
GROUP BY r.reader_id;

-- Количество книг на складе по библиотекам
CREATE VIEW stock_by_library AS
SELECT 
    l.name AS library_name,
    b.title AS book_title,
    s.quantity
FROM stock s
JOIN libraries l ON s.library_id = l.library_id
JOIN books b ON s.book_id = b.book_id;