-- 1. Show all students
SELECT * FROM students;

-- 2. Show all teachers
SELECT * FROM teachers;

-- 3. Show all subjects
SELECT * FROM subjects;

-- 4. Show all classes
SELECT * FROM classes;

-- 5. Show all enrollments
SELECT * FROM enrollments;

-- 6. Show students with their enrollment dates
SELECT
    students.full_name,
    enrollments.enrollment_date
FROM enrollments
JOIN students ON enrollments.student_id = students.id;

-- 7. Show classes with their subjects
SELECT
    classes.class_code,
    subjects.name AS subject_name
FROM classes
JOIN subjects ON classes.subject_id = subjects.id;

-- 8. Show classes with their teachers
SELECT
    classes.class_code,
    teachers.full_name AS teacher_name
FROM classes
JOIN teachers ON classes.teacher_id = teachers.id;

-- 9. Show students enrolled in each class
SELECT
    classes.class_code,
    students.full_name AS student_name,
    enrollments.enrollment_date
FROM enrollments
JOIN classes ON enrollments.class_id = classes.id
JOIN students ON enrollments.student_id = students.id
ORDER BY classes.class_code, students.full_name;

-- 10. Show full class information
SELECT
    classes.class_code,
    classes.shift,
    classes.school_term,
    subjects.name AS subject_name,
    teachers.full_name AS teacher_name
FROM classes
JOIN subjects ON classes.subject_id = subjects.id
JOIN teachers ON classes.teacher_id = teachers.id;

-- 11. Count how many students are enrolled in each class
SELECT
    classes.class_code,
    COUNT(enrollments.id) AS total_students
FROM classes
LEFT JOIN enrollments ON classes.id = enrollments.class_id
GROUP BY classes.class_code
ORDER BY classes.class_code;

-- 12. Count how many classes each teacher is responsible for
SELECT
    teachers.full_name,
    COUNT(classes.id) AS total_classes
FROM teachers
LEFT JOIN classes ON teachers.id = classes.teacher_id
GROUP BY teachers.full_name
ORDER BY teachers.full_name;

-- 13. Show subjects with workload greater than 60
SELECT
    name,
    workload
FROM subjects
WHERE workload > 60;

-- 14. Show students born after 2005-01-01
SELECT
    full_name,
    birth_date
FROM students
WHERE birth_date > '2005-01-01';

-- 15. Show enrollments made in February 2025
SELECT
    students.full_name,
    classes.class_code,
    enrollments.enrollment_date
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN classes ON enrollments.class_id = classes.id
WHERE enrollments.enrollment_date BETWEEN '2025-02-01' AND '2025-02-28';
