-- Добавление новой книги (параметры: title, author_id, genre_id, publication_year, isbn)
INSERT INTO books (title, author_id, genre_id, publication_year, isbn)
VALUES (?, ?, ?, ?, ?);

-- Получение книг по жанру (параметр: genre_name)
SELECT b.title, a.name AS author_name
FROM books b
JOIN genres g ON b.genre_id = g.genre_id
JOIN authors a ON b.author_id = a.author_id
WHERE g.name = ?;