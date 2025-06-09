-- Логирование операций CRUD для таблицы books
CREATE TRIGGER log_book_insert AFTER INSERT ON books
BEGIN
    INSERT INTO logs (table_name, operation_type, record_id, timestamp)
    VALUES ('books', 'INSERT', NEW.book_id, CURRENT_TIMESTAMP);
END;

CREATE TRIGGER log_book_update AFTER UPDATE ON books
BEGIN
    INSERT INTO logs (table_name, operation_type, record_id, timestamp)
    VALUES ('books', 'UPDATE', NEW.book_id, CURRENT_TIMESTAMP);
END;

CREATE TRIGGER log_book_delete AFTER DELETE ON books
BEGIN
    INSERT INTO logs (table_name, operation_type, record_id, timestamp)
    VALUES ('books', 'DELETE', OLD.book_id, CURRENT_TIMESTAMP);
END;

-- Автоматическое уменьшение количества книг при заказе
CREATE TRIGGER decrease_stock_on_order AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE stock
    SET quantity = quantity - 1
    WHERE book_id = NEW.book_id AND library_id = NEW.library_id;
END;