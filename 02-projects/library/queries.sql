-- Show all records from the main tables
SELECT *
FROM authors;

SELECT *
FROM works;

SELECT *
FROM themes;

SELECT *
FROM editions;

-- Show works with their authors
SELECT
    works.title,
    authors.full_name
FROM works, authors, work_authors
WHERE works.work_id = work_authors.work_id
AND authors.author_id = work_authors.author_id;

-- Show works with their themes
SELECT
    works.title,
    themes.name
FROM works, themes, work_themes
WHERE works.work_id = work_themes.work_id
AND themes.theme_id = work_themes.theme_id;

-- Show editions with their works
SELECT
    works.title,
    editions.format,
    editions.publisher,
    editions.edition_year
FROM works, editions
WHERE works.work_id = editions.work_id;

-- Show completed works
SELECT
    title,
    reading_status
FROM works
WHERE reading_status = 'Completed';

-- Show works originally written in English
SELECT
    title,
    original_language
FROM works
WHERE original_language = 'English';

-- Count editions by work
SELECT
    works.title,
    COUNT(editions.edition_id) AS total_editions
FROM works, editions
WHERE works.work_id = editions.work_id
GROUP BY works.title;