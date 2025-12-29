--CREATE DATABASE StudentDB;
--GO
SELECT name, collation_name, recovery_model_desc
FROM sys.databases
WHERE name = 'StudentDB';

SELECT name AS logical_name,
       type_desc,
       physical_name
FROM sys.master_files
WHERE database_id = DB_ID('StudentDB');

ALTER DATABASE StudentDB COLLATE Cyrillic_General_CS_AS;

SELECT name, collation_name, recovery_model_desc
FROM sys.databases
WHERE name = 'StudentDB';

-- 1) Создание БД StudentDB_Backup
CREATE DATABASE StudentDB_Backup;
GO

-- 2) Список доступных Cyrillic collations
SELECT name
FROM sys.fn_helpcollations()
WHERE name LIKE 'Cyrillic%';
GO

-- 3) Установка модели восстановления FULL
ALTER DATABASE StudentDB_Backup SET RECOVERY FULL;
GO

-- 4) Переименование базы
ALTER DATABASE StudentDB_Backup MODIFY NAME = StudentDB_Main;
GO

-- 5) Проверка результата
SELECT name, collation_name, recovery_model_desc
FROM sys.databases
WHERE name IN ('StudentDB_Main','StudentDB_Backup');
GO

-- 1 скрин
SELECT name, collation_name, recovery_model_desc
FROM sys.databases
WHERE name IN ('StudentDB', 'StudentDB_Main');
GO

-- 2 скрин
SELECT DB_NAME(database_id) AS db_name,
       name AS logical_name,
       type_desc,
       physical_name
FROM sys.master_files
WHERE DB_NAME(database_id) IN ('StudentDB', 'StudentDB_Main')
ORDER BY db_name, type_desc;
GO

