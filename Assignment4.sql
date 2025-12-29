use hr;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'Arjun', 21, 'Computer Science'),
(2, 'Meera', 22, 'Data Science'),
(3, 'Rahul', 20, 'Computer Science'),
(4, 'Anita', 23, 'Electronics');

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

INSERT INTO marks VALUES
(1, 1, 'Python', 85),
(2, 2, 'Python', 90),
(3, 3, 'Python', 78),
(4, 4, 'Python', 88);
SELECT * 
FROM students
WHERE department = 'Computer Science' AND age > 20;

SELECT * 
FROM students
WHERE department = 'Data Science' OR age < 21;

SELECT * 
FROM students
WHERE NOT department = 'Electronics';


SELECT SUM(marks) AS total_marks
FROM marks;

SELECT AVG(marks) AS average_marks
FROM marks;

SELECT COUNT(student_id) AS total_students
FROM students;

SELECT * 
FROM students
ORDER BY age ASC;

SELECT * 
FROM marks
ORDER BY marks DESC;





