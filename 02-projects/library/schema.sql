CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100),
    birth_date DATE,
    death_date DATE,
    biographical_note TEXT
);

CREATE TABLE works (
    work_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    original_language VARCHAR(50) NOT NULL,
    original_publication_year INT,
    reading_status VARCHAR(30) NOT NULL
);

CREATE TABLE themes (
    theme_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE editions (
    edition_id SERIAL PRIMARY KEY,
    work_id INT NOT NULL REFERENCES works(work_id),
    format VARCHAR(50) NOT NULL,
    publisher VARCHAR(100),
    edition_year INT,
    additional_notes TEXT
);

CREATE TABLE work_authors (
    work_id INT NOT NULL REFERENCES works(work_id),
    author_id INT NOT NULL REFERENCES authors(author_id),
    PRIMARY KEY (work_id, author_id)
);

CREATE TABLE work_themes (
    work_id INT NOT NULL REFERENCES works(work_id),
    theme_id INT NOT NULL REFERENCES themes(theme_id),
    PRIMARY KEY (work_id, theme_id)
);
