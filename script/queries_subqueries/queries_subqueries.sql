-- Книги, у которых есть отзывы с оценкой 5
SELECT title FROM books WHERE book_id IN (
    SELECT book_id FROM reviews WHERE rating = 5
);

-- Читатели, которые брали книги в определённой библиотеке
SELECT first_name, last_name FROM readers WHERE reader_id IN (
    SELECT reader_id FROM orders WHERE library_id = 1
);

-- Сотрудники, работающие в библиотеке с названием "Центральная"
SELECT first_name, last_name FROM employees WHERE library_id IN (
    SELECT library_id FROM libraries WHERE name = 'Центральная библиотека'
);

-- Книги, которые не были взяты никем
SELECT title FROM books WHERE book_id NOT IN (
    SELECT DISTINCT book_id FROM orders
);

-- Платежи больше средней суммы
SELECT * FROM payments WHERE amount > (
    SELECT AVG(amount) FROM payments
);