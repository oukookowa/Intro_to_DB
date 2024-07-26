--@block
USE alx_book_store;

--@block
--# Shows full description of Books table in alx_book_store
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'alx_book_store' 
AND TABLE_NAME = 'Books';
