INSERT INTO authors (full_name, nationality, birth_date, death_date, biographical_note)
VALUES
    ('Arthur Bennett', 'United States', '1948-05-12', NULL, 'Scholar focused on Christian theology and historical studies.'),
    ('Helena Martins', 'Brazil', '1975-09-23', NULL, 'Researcher focused on history, education, and humanities.'),
    ('Samuel Reed', 'United Kingdom', '1962-02-18', NULL, 'Author focused on logic, philosophy, and critical thinking.'),
    ('Clara Thompson', 'Canada', '1980-07-04', NULL, 'Writer focused on programming, databases, and software development.'),
    ('Miguel Andrade', 'Portugal', '1970-11-30', NULL, 'Author focused on technology, organization, and digital tools.');

INSERT INTO works (title, description, original_language, original_publication_year, reading_status)
VALUES
    ('Introduction to Christian Theology', 'A basic introduction to central topics in Christian theology.', 'English', 2005, 'Completed'),
    ('History of the Reformation', 'A study of the historical context and main events of the Reformation.', 'Portuguese', 2012, 'In Progress'),
    ('Foundations of Logic', 'An introductory work on reasoning, arguments, and logical principles.', 'English', 1998, 'Not Started'),
    ('Practical Database Design', 'A practical guide to database modeling and relational database design.', 'English', 2018, 'Completed'),
    ('Classical Philosophy Overview', 'A general overview of classical philosophical thought.', 'English', 2001, 'Not Started'),
    ('Python Automation Basics', 'An introductory book about using Python to automate simple tasks.', 'English', 2020, 'In Progress');

INSERT INTO themes (name, description)
VALUES
    ('Theology', 'Works related to Christian doctrine and theological study.'),
    ('History', 'Works related to historical events, periods, and movements.'),
    ('Philosophy', 'Works related to philosophical questions, authors, and traditions.'),
    ('Logic', 'Works related to reasoning, arguments, and formal thinking.'),
    ('Database', 'Works related to database modeling, SQL, and data organization.'),
    ('Programming', 'Works related to software development and programming languages.');

INSERT INTO editions (work_id, format, publisher, edition_year, additional_notes)
VALUES
    (1, 'Physical Book', 'Academic Press', 2008, 'Revised edition with study questions.'),
    (1, 'PDF', 'Academic Press', 2008, 'Digital version of the revised edition.'),
    (2, 'Physical Book', 'Historical Studies Publisher', 2015, 'Portuguese edition.'),
    (3, 'E-book', 'Logic House', 2003, 'Digital edition.'),
    (4, 'Physical Book', 'TechBooks', 2019, 'Practical edition with examples.'),
    (4, 'PDF', 'TechBooks', 2019, 'Digital version used for study.'),
    (5, 'E-book', 'Humanities Press', 2005, 'Annotated edition.'),
    (6, 'PDF', 'Code Learning Press', 2021, 'Beginner-friendly digital edition.');

INSERT INTO work_authors (work_id, author_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (4, 5),
    (5, 3),
    (6, 4);

INSERT INTO work_themes (work_id, theme_id)
VALUES
    (1, 1),
    (2, 1),
    (2, 2),
    (3, 3),
    (3, 4),
    (4, 5),
    (4, 6),
    (5, 3),
    (6, 6);