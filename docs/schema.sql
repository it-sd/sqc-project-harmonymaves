DROP TABLE WHEN EXISTS projects;
DROP TABLE WHEN EXISTS needles;
DROP TABLE WHEN EXISTS hooks;
DROP TABLE WHEN EXISTS yarn;

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    pattern_name TEXT NOT NULL,
    date_started DATE,
    date_finished DATE,
    craft TEXT NOT NULL,
    hook_needle TEXT NOT NULL,
    yarn TEXT NOT NULL,
    tags TEXT NOT NULL
)

CREATE TABLE needles (
    id SERIAL PRIMARY KEY,
    us_size DECIMAL NOT NULL,
    needle_type TEXT NOT NULL,
    needle_length TEXT NOT NULL
)

CREATE TABLE hooks (
    id SERIAL PRIMARY KEY,
    us_size DECIMAL NOT NULL,
    hook_type TEXT NOT NULL,
)

CREATE TABLE yarn (
    id SERIAL PRIMARY KEY,
    color TEXT NOT NULL,
    fiber_type TEXT NOT NULL,
    estimated_length INT NOT NULL
)