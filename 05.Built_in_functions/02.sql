UPDATE books
SET title = REPLACE (title, 'The', REPEAT('*', 3))
;
SELECT title FROM books
WHERE SUBSTRING(title, 1, 3) = '***';