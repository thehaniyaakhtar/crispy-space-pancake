/*USERS*/
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

/*SCHOOLS*/
CREATE TABLE schools(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    type TEXT CHECK(type IN('Primary', 'Secondary', 'Higher Education') NOT NULL),
    location TEXT NOT NULL,
    founded_year INTEGER
);

/*COMPANIES*/
CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    industry TEXT CHECK(type IN('Technology', 'Education', 'Business') NOT NULL),
    location TEXT NOT NULL
);

/*MAKING RELATIONSHIPS*/
CREATE TABLE connections(
    user1_id INTEGER NOT NULL,
    user2_id INTEGER NOT NULL,
    PRIMARY KEY (user1_id, user2_id),
    FOREIGN KEY (user1_id) REFERENCES users(id),
    FOREIGN KEY (user2_id) REFERENCES users(id),
    CHECK (user1_id < user2_id)
);

/*EDUCATION HISTORY*/
CREATE TABLE education(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    degree TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
    FOREIGN KEY (schools_is) REFERENCES schools(id)
);

/*EMPLOYMENT HISTORY*/
CREATE TABLE employement(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    company_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,  -- Nullable if still working
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);
