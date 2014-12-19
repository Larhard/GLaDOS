-- USERS

CREATE SEQUENCE users_id_seq;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    login VARCHAR(250) NOT NULL UNIQUE,
    email VARCHAR(250) NOT NULL UNIQUE,
    name VARCHAR(250),
    surname VARCHAR(250),
    password VARCHAR(250)
    CHECK (email ~* '[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,4}')
);

CREATE FUNCTION users_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.user_id != OLD.user_id THEN
                RAISE EXCEPTION 'update of users.user_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.user_id = NEXTVAL('users_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER users_id_seq_tgr
    BEFORE INSERT OR UPDATE ON users
    FOR EACH ROW EXECUTE PROCEDURE users_id_seq_fun();

CREATE TABLE users_presence (
    user_id INTEGER REFERENCES users ON DELETE CASCADE NOT NULL ,
    time TIMESTAMP NOT NULL DEFAULT NOW()
);

-- CONTESTS

CREATE TABLE contests (
    contest_id SERIAL PRIMARY KEY,
    name VARCHAR(250),
    description TEXT,
    default_judge INTEGER
);

-- PROGRAMS

CREATE TABLE programs (
    program_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users ON DELETE CASCADE,
    contest_id INTEGER REFERENCES contests ON DELETE SET NULL,
    name VARCHAR(250) NOT NULL,
    submission_time TIMESTAMP NOT NULL DEFAULT NOW(),
    winns INTEGER NOT NULL DEFAULT 0,
    defeats INTEGER NOT NULL DEFAULT 0,
    ties INTEGER NOT NULL DEFAULT 0
);

-- JUDGES

CREATE TABLE judges (
    judge_id SERIAL PRIMARY KEY,
    path VARCHAR(250) NOT NULL,
    contest_id INTEGER NOT NULL REFERENCES contests ON DELETE CASCADE
);

ALTER TABLE contests
    ADD CONSTRAINT default_judge_fkey
    FOREIGN KEY (default_judge) REFERENCES judges ON DELETE SET NULL;

-- MATCHES

CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY,
    judge_id INTEGER REFERENCES judges ON DELETE SET NULL
);

-- PROGRAMS_MATCHES

CREATE TABLE programs_matches (
    match_id INTEGER NOT NULL REFERENCES matches ON DELETE CASCADE,
    score INTEGER,
    program_id INTEGER REFERENCES programs ON DELETE SET NULL,
    result VARCHAR(250)
);

-- MATCH_LOGS

CREATE TABLE match_logs (
    log_id SERIAL PRIMARY KEY,
    match_id INTEGER NOT NULL REFERENCES matches ON DELETE CASCADE,
    time TIMESTAMP NOT NULL DEFAULT NOW(),
    body TEXT NOT NULL,
    priority INTEGER NOT NULL
);
