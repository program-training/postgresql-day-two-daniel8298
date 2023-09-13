

CREATE TABLE university.studyGroup(
studyGroup_id SERIAL PRIMARY KEY,
nameGroup TEXT NOT NULL
);
INSERT INTO university.studyGroup(nameGroup)
VALUES ('Computer Science'),('Mathematics'),('History');


CREATE TABLE university.studentsInGroups(
studentsInGroups_id SERIAL PRIMARY KEY,
student_id INT,
FOREIGN KEY (student_id) REFERENCES university.students(student_id),
studyGroup_id INT,
FOREIGN KEY (studyGroup_id) REFERENCES university.studyGroup(studyGroup_id)
);


INSERT INTO university.studentsInGroups(student_id,studyGroup_id)
VALUES (1, 1),(2,1),(3,2),(2,3),(1,3);

SELECT * FROM university.Students 
SELECT * FROM university.Teachers 
SELECT * FROM university.Courses 
SELECT * FROM university.Enrollments  
SELECT * FROM university.TeacherCourse  
SELECT * FROM university.Grades   
SELECT * FROM university.studyGroup
SELECT * FROM university.studentsInGroups



כדי להגביל שתלמיד לא יקבל ציון לקורס שהוא אינו רשום אליו
כדי להגביל מצב שבו תלמיד רשום פעמיים לאותו הקורס

	

ALTER TABLE university.enrollments
ADD CONSTRAINT Enrollment UNIQUE (student_id, course_id);


INSERT INTO university.grades (enrollment_id,grade)
VALUES (1,98),(2,88),(3,100),(4,92),(1,99)


INSERT INTO university.enrollments (student_id, course_id)
VALUES (1, 1),(3,2),(4,3),(1,3)




