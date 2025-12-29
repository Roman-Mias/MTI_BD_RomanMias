-- Выбираю БД
USE StudentDB;
GO

-- Удаляю таблицы, если уже существуют(чтобы мог повторно запускать код)
DROP TABLE IF EXISTS dbo.Subjects;
DROP TABLE IF EXISTS dbo.Students;
DROP TABLE IF EXISTS dbo.Groups;
GO

-- Таблица Groups
CREATE TABLE dbo.Groups (
    GroupID   INT         NOT NULL PRIMARY KEY,
    GroupName VARCHAR(20) NOT NULL,
    Faculty   VARCHAR(50) NOT NULL
);

-- Таблица Students
CREATE TABLE dbo.Students (
    StudentID INT          NOT NULL PRIMARY KEY,
    FirstName VARCHAR(50)  NOT NULL,
    LastName  VARCHAR(50)  NOT NULL,
    BirthDate DATE         NULL,
    GroupID   INT          NULL
);
GO

-- Заполнение Groups
INSERT INTO dbo.Groups (GroupID, GroupName, Faculty) VALUES
(1, 'ИКБО-01-24', 'ИТ'),
(2, 'ИКБО-02-24', 'ИТ'),
(3, 'МТ-01-24',   'Математика'),
(4, 'ФИЗ-01-24',  'Физика'),
(5, 'ЭК-01-24',   'Экономика');

-- Заполнение Students
INSERT INTO dbo.Students (StudentID, FirstName, LastName, BirthDate, GroupID) VALUES
(101, 'Иван',   'Иванов',  '2005-03-12', 1),
(102, 'Пётр',   'Петров',  '2004-11-05', 1),
(103, 'Анна',   'Смирнова','2005-01-28', 2),
(104, 'Мария',  'Кузнецова','2004-07-19', 3),
(105, 'Дмитрий','Соколов', '2005-09-02', 4);
GO

-- Вывод
SELECT * FROM dbo.Groups;
SELECT * FROM dbo.Students;

-- Создаю Subjects
CREATE TABLE dbo.Subjects (
    SubjectID   INT PRIMARY KEY,
    SubjectName VARCHAR(100) NOT NULL,
    Hours       INT
);
GO

-- Добавляю Email, если еще нет
IF COL_LENGTH('dbo.Students', 'Email') IS NULL
    ALTER TABLE dbo.Students ADD Email VARCHAR(100);
GO

-- Заполняю Subjects
INSERT INTO dbo.Subjects (SubjectID, SubjectName, Hours) VALUES
(1, 'Базы данных', 72),
(2, 'Программирование', 108),
(3, 'Математика', 90),
(4, 'Физика', 64),
(5, 'Английский язык', 60);
GO

-- Отдельно заполняю почту
UPDATE dbo.Students SET Email = 'ivanov101@student.ru' WHERE StudentID = 101;
UPDATE dbo.Students SET Email = 'petrov102@student.ru' WHERE StudentID = 102;
UPDATE dbo.Students SET Email = 'smirnova103@student.ru' WHERE StudentID = 103;
UPDATE dbo.Students SET Email = 'kuznetsova104@student.ru' WHERE StudentID = 104;
UPDATE dbo.Students SET Email = 'sokolov105@student.ru' WHERE StudentID = 105;
GO

-- Вывод
SELECT * FROM dbo.Subjects;
SELECT StudentID, FirstName, LastName, Email FROM dbo.Students;
-- Выбираю БД
USE StudentDB;
GO

-- Удаляю таблицы, если уже существуют(чтобы мог повторно запускать код)
DROP TABLE IF EXISTS dbo.Subjects;
DROP TABLE IF EXISTS dbo.Students;
DROP TABLE IF EXISTS dbo.Groups;
GO

-- Таблица Groups
CREATE TABLE dbo.Groups (
    GroupID   INT         NOT NULL PRIMARY KEY,
    GroupName VARCHAR(20) NOT NULL,
    Faculty   VARCHAR(50) NOT NULL
);

-- Таблица Students
CREATE TABLE dbo.Students (
    StudentID INT          NOT NULL PRIMARY KEY,
    FirstName VARCHAR(50)  NOT NULL,
    LastName  VARCHAR(50)  NOT NULL,
    BirthDate DATE         NULL,
    GroupID   INT          NULL
);
GO

-- Заполнение Groups
INSERT INTO dbo.Groups (GroupID, GroupName, Faculty) VALUES
(1, 'ИКБО-01-24', 'ИТ'),
(2, 'ИКБО-02-24', 'ИТ'),
(3, 'МТ-01-24',   'Математика'),
(4, 'ФИЗ-01-24',  'Физика'),
(5, 'ЭК-01-24',   'Экономика');

-- Заполнение Students
INSERT INTO dbo.Students (StudentID, FirstName, LastName, BirthDate, GroupID) VALUES
(101, 'Иван',   'Иванов',  '2005-03-12', 1),
(102, 'Пётр',   'Петров',  '2004-11-05', 1),
(103, 'Анна',   'Смирнова','2005-01-28', 2),
(104, 'Мария',  'Кузнецова','2004-07-19', 3),
(105, 'Дмитрий','Соколов', '2005-09-02', 4);
GO

-- Вывод
SELECT * FROM dbo.Groups;
SELECT * FROM dbo.Students;

-- Создаю Subjects
CREATE TABLE dbo.Subjects (
    SubjectID   INT PRIMARY KEY,
    SubjectName VARCHAR(100) NOT NULL,
    Hours       INT
);
GO

-- Добавляю Email, если еще нет
IF COL_LENGTH('dbo.Students', 'Email') IS NULL
    ALTER TABLE dbo.Students ADD Email VARCHAR(100);
GO

-- Заполняю Subjects
INSERT INTO dbo.Subjects (SubjectID, SubjectName, Hours) VALUES
(1, 'Базы данных', 72),
(2, 'Программирование', 108),
(3, 'Математика', 90),
(4, 'Физика', 64),
(5, 'Английский язык', 60);
GO

-- Отдельно заполняю почту
UPDATE dbo.Students SET Email = 'ivanov101@student.ru' WHERE StudentID = 101;
UPDATE dbo.Students SET Email = 'petrov102@student.ru' WHERE StudentID = 102;
UPDATE dbo.Students SET Email = 'smirnova103@student.ru' WHERE StudentID = 103;
UPDATE dbo.Students SET Email = 'kuznetsova104@student.ru' WHERE StudentID = 104;
UPDATE dbo.Students SET Email = 'sokolov105@student.ru' WHERE StudentID = 105;
GO

-- Вывод
SELECT * FROM dbo.Subjects;
SELECT StudentID, FirstName, LastName, Email FROM dbo.Students;
