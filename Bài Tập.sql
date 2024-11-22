CREATE TABLE Student(
	Student_ID VARCHAR(10) PRIMARY KEY,
	Sur_name VARCHAR(50),
	Given_name VARCHAR(50),
	Gender VARCHAR(20)
);

CREATE TABLE Student_Mark(
	Student_ID VARCHAR(10),
	Course_ID VARCHAR(10) PRIMARY KEY,
	Course_name VARCHAR(50),
	Scholastic YEAR,
	Semester INT,
	Mark INT,
	FOREIGN KEY (Student_ID) REFERENCES student(Student_ID)
);