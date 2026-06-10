INSERT INTO students (full_name, birth_date, phone_number, email)
VALUES
    ('Alice Johnson', '2005-03-15', '5511999991111', 'alice.johnson@email.com'),
    ('Bruno Silva', '2004-08-21', '5511999992222', 'bruno.silva@email.com'),
    ('Carla Mendes', '2005-01-10', '5511999993333', 'carla.mendes@email.com'),
    ('Daniel Rocha', '2004-11-05', '5511999994444', 'daniel.rocha@email.com');

INSERT INTO teachers (full_name, phone_number, email, specialization)
VALUES
    ('Mariana Costa', '5511888881111', 'mariana.costa@school.com', 'Mathematics'),
    ('Ricardo Alves', '5511888882222', 'ricardo.alves@school.com', 'History'),
    ('Fernanda Lima', '5511888883333', 'fernanda.lima@school.com', 'Physics');

INSERT INTO subjects (name, workload, description)
VALUES
    ('Mathematics', 80, 'Basic mathematics for high school students'),
    ('History', 60, 'General history and social development'),
    ('Physics', 70, 'Introduction to physics concepts');

INSERT INTO classes (subject_id, teacher_id, class_code, shift, school_term)
VALUES
    (1, 1, 'MATH-101', 'Morning', '2025.1'),
    (2, 2, 'HIST-201', 'Afternoon', '2025.1'),
    (3, 3, 'PHYS-301', 'Morning', '2025.1');

INSERT INTO enrollments (class_id, student_id, enrollment_date)
VALUES
    (1, 1, '2025-02-01'),
    (1, 2, '2025-02-02'),
    (2, 2, '2025-02-03'),
    (2, 3, '2025-02-03'),
    (3, 1, '2025-02-04'),
    (3, 4, '2025-02-05');
