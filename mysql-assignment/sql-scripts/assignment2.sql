USE sakila;
SELECT
    TABLE_NAME AS 'Название таблицы',
    COLUMN_NAME AS 'Название первичного ключа'
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = 'sakila'
    AND COLUMN_KEY = 'PRI'
ORDER BY TABLE_NAME;
