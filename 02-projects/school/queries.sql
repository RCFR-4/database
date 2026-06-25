SELECT *
FROM students;

SELECT *
FROM teachers;

SELECT *
FROM subjects;

SELECT *
FROM classes;

SELECT *
FROM enrollments;

SELECT
    students.full_name,
    enrollments.enrollment_date
FROM students, enrollments
WHERE students.id = enrollments.student_id;

SELECT
    classes.class_code,
    subjects.name AS subject_name
FROM classes, subjects
WHERE classes.subject_id = subjects.id;

SELECT
    classes.class_code,
    teachers.full_name AS teacher_name
FROM classes, teachers
WHERE classes.teacher_id = teachers.id;

SELECT
    classes.class_code,
    students.full_name AS student_name
FROM classes, students, enrollments
WHERE classes.id = enrollments.class_id
AND students.id = enrollments.student_id;

SELECT
    classes.class_code,
    subjects.name AS subject_name,
    teachers.full_name AS teacher_name
FROM classes, subjects, teachers
WHERE classes.subject_id = subjects.id
AND classes.teacher_id = teachers.id;

SELECT
    full_name,
    birth_date
FROM students
WHERE birth_date > '2005-01-01';

SELECT
    name,
    workload
FROM subjects
WHERE workload > 60;

SELECT
    classes.class_code,
    COUNT(enrollments.id) AS total_students
FROM classes, enrollments
WHERE classes.id = enrollments.class_id
GROUP BY classes.class_code;
