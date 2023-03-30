USE toDoList;

CREATE DATABASE toDoList;

CREATE TABLE Categories(
	ID int NOT NULL IDENTITY(1,1),
	Name varchar(50) NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE Tasks (
	ID int NOT NULL IDENTITY(1,1),
	CategoryID int NOT NULL,
	Name varchar(50) NOT NULL,
	Description varchar(255),
	DeadlineDate datetime,
	FOREIGN KEY (CategoryID) REFERENCES Categories(ID)
);


INSERT INTO Categories(Name)
VALUES('Sport'),
	  ('Shopping'),
	  ('Work'),
	  ('Habit');

INSERT INTO Tasks(CategoryID, Name, Description, DeadlineDate)
VALUES(1, 'Running', 'Run 2 km around city', '2023-03-31'),
	  (2, 'Buy some groceries', 'I need cheese, butter, milk and cucumbers', NULL),
	  (3, 'Do some tasks', 'I need to do some tasks', '2023-04-06'),
	  (4, 'Read book', NULL, NULL),
	  (1, '20 push-ups', '10 diamond, 10 casual', '2023-03-31'),
	  (2, 'Buy clothes', 'I need t-shirt and new pants', '2023-04-30'),
	  (3, 'Do some programming', 'HTML and CSS guides', NULL),
	  (4, 'Dont smoke for 1 day', NULL, '2023-03-31');

SELECT * FROM Categories;
SELECT * FROM Tasks;

SELECT *
FROM Categories INNER JOIN Tasks
ON Categories.ID = Tasks.CategoryID;