CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    specialization VARCHAR(100) NOT NULL
);

CREATE TABLE subjects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    workload INT NOT NULL,
    description VARCHAR(255)
);

CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    subject_id INT NOT NULL,
    teacher_id INT NOT NULL,
    class_code VARCHAR(20) NOT NULL,
    shift VARCHAR(20) NOT NULL,
    school_term VARCHAR(20) NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subjects(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    class_id INT NOT NULL,
    student_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (class_id) REFERENCES classes(id),
    FOREIGN KEY (student_id) REFERENCES students(id)
);
