
CREATE TABLE university.enrollments  (
enrollment_id  SERIAL PRIMARY KEY,
student_id INT,
FOREIGN KEY (student_id) REFERENCES university.students(student_id),
course_id INT,
FOREIGN KEY (course_id) REFERENCES university.courses(course_id)
);

INSERT INTO university.enrollments (student_id, course_id)
VALUES (1, 1),(2,1),(3,2),(4,3),(1,3);



CREATE TABLE university.teacherCourse   (
teacherCourse_id SERIAL PRIMARY KEY,
teacher_id INT,
FOREIGN KEY (teacher_id) REFERENCES university.teachers(teacher_id),
course_id INT,
FOREIGN KEY (course_id) REFERENCES university.courses(course_id)
);

INSERT INTO university.teacherCourse (teacher_id, course_id)
VALUES (1,1),(2,2),(3,3);


CREATE TABLE university.grades(
grades_id SERIAL PRIMARY KEY,
grade INT,
CHECK (grade BETWEEN 0 AND 100),
student_id INT,
FOREIGN KEY (student_id) REFERENCES university.students(student_id),
course_id INT,
FOREIGN KEY (course_id) REFERENCES university.courses(course_id)

);



INSERT INTO university.grades (grade,student_id, course_id)
VALUES (98,1, 1),(88,2,1),(100,3,2),(92,4,3),(99,1,3)



