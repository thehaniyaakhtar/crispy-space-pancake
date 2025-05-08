--user table: f name, l name, username, pwd
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    username TEXT NOT NULL,
    password TEXT NOT NULL
)
;

--schools and uni: name, type, location, year of foundation
CREATE TABLE schools(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    location TEXT NOT NULL,
    year_founded INTEGER NOT NULL
)
;


--companies: name, industry, location
CREATE TABLE company(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    industry TEXT NOT NULL,
    location TEXT NOT NULL
)
;

--connections
CREATE TABLE connect_users(
    user1 INTEGER NOT NULL,
    user2 INTEGER NOT NULL,
    PRIMARY KEY (user1, user2),
    FOREIGN KEY (user1) REFERENCES users(id),
    FOREIGN KEY (user2) REFERENCES users(id)
)
;

CREATE TABLE connect_schools(
    user_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    start_affiliation INTEGER NOT NULL,
    end_affiliation INTEGER NOT NULL,
    degree TEXT NOT NULL,
    PRIMARY KEY (user_id, school_id)
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (school_id) REFERENCES schools(id)

)
;

CREATE TABLE connect_company(
    user_id INTEGER NOT NULL,
    company_id INTEGER NOT NULL,
    start_affiliation INTEGER NOT NULL,
    end_affiliation INTEGER NOT NULL,
    title TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (company_id) REFERENCES company(id)


)
;

-- Users
INSERT INTO users (first_name, last_name, username, password)
VALUES
    ('Alan', 'Garber', 'alan', 'password'),
    ('Reid', 'Hoffman', 'reid', 'password');

-- Schools
INSERT INTO schools (name, type, location, year_founded)
VALUES
    ('Harvard University', 'University', 'Cambridge, Massachusetts', 1636);

-- Companies
INSERT INTO company (name, industry, location)
VALUES
    ('LinkedIn', 'Technology', 'Sunnyvale, California');

-- Alan Garber's Education at Harvard
INSERT INTO connect_schools (user_id, school_id, start_affiliation, end_affiliation, degree)
VALUES
    (1, 1, '1973-09-01', '1976-06-01', 'BA');

-- Reid Hoffman's Employment at LinkedIn
INSERT INTO connect_company (user_id, company_id, start_affiliation, end_affiliation, title)
VALUES
    (2, 1, '2003-01-01', '2007-02-01', 'CEO and Chairman');
