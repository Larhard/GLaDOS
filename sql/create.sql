CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    nick VARCHAR(250) NOT NULL UNIQUE,
    email VARCHAR(250) NOT NULL UNIQUE,
    name VARCHAR(250),
    surname VARCHAR(250),
    password VARCHAR(250)

    CHECK (email LIKE '%@%.%')
);

CREATE TABLE users_presence (
    user_id INTEGER REFERENCES users ON DELETE CASCADE,
    time TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE programs (
    program_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users ON DELETE CASCADE,
    upload_time TIMESTAMP NOT NULL DEFAULT NOW(),
    source_code TEXT
);

CREATE TABLE contests (
    contest_id SERIAL PRIMARY KEY,
    name VARCHAR(250),
    description TEXT,
    default_judge INTEGER
);

CREATE TABLE judges (
    judge_id SERIAL PRIMARY KEY,
    path VARCHAR(250) NOT NULL
);

CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY
);

CREATE TABLE programs_matches (
    program_id INTEGER REFERENCES programs ON DELETE SET NULL,
    match_id INTEGER NOT NULL REFERENCES matches ON DELETE CASCADE
);

CREATE TABLE match_rankings (
    match_id INTEGER NOT NULL REFERENCES matches ON DELETE CASCADE,
    place INTEGER,
    program_id INTEGER REFERENCES programs ON DELETE SET NULL,
    result VARCHAR(250)
);

CREATE TABLE match_logs (
    log_id SERIAL PRIMARY KEY,
    match_id INTEGER NOT NULL REFERENCES matches ON DELETE CASCADE,
    time TIMESTAMP NOT NULL DEFAULT NOW(),
    body TEXT NOT NULL,
    priority INTEGER NOT NULL
);
