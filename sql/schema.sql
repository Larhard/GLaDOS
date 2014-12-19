-- USERS

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    login VARCHAR(250) NOT NULL UNIQUE,
    email VARCHAR(250) NOT NULL UNIQUE,
    name VARCHAR(250),
    surname VARCHAR(250),
    password VARCHAR(250)
    CHECK (email ~* '[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,4}')
);

CREATE SEQUENCE users_id_seq;

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
    contest_start TIMESTAMP NOT NULL DEFAULT NOW(),
    contest_end TIMESTAMP,
    default_judge INTEGER
    CHECK (contest_start < contest_end)
);

CREATE SEQUENCE contests_id_seq;

CREATE FUNCTION contests_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.contest_id != OLD.contest_id THEN
                RAISE EXCEPTION 'update of contests.contest_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.contest_id = NEXTVAL('contests_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER contests_id_seq_tgr
    BEFORE INSERT OR UPDATE ON contests
    FOR EACH ROW EXECUTE PROCEDURE contests_id_seq_fun();

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

CREATE SEQUENCE programs_id_seq;

CREATE FUNCTION programs_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.program_id != OLD.program_id THEN
                RAISE EXCEPTION 'update of programs.program_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.program_id = NEXTVAL('programs_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER programs_id_seq_tgr
    BEFORE INSERT OR UPDATE ON programs
    FOR EACH ROW EXECUTE PROCEDURE programs_id_seq_fun();

-- JUDGES

CREATE TABLE judges (
    judge_id SERIAL PRIMARY KEY,
    path VARCHAR(250) NOT NULL,
    contest_id INTEGER NOT NULL REFERENCES contests ON DELETE CASCADE
);

CREATE SEQUENCE judges_id_seq;

CREATE FUNCTION judges_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.judge_id != OLD.judge_id THEN
                RAISE EXCEPTION 'update of judges.judge_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.judge_id = NEXTVAL('judges_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER judges_id_seq_tgr
    BEFORE INSERT OR UPDATE ON judges
    FOR EACH ROW EXECUTE PROCEDURE judges_id_seq_fun();

ALTER TABLE contests
    ADD CONSTRAINT default_judge_fkey
    FOREIGN KEY (default_judge) REFERENCES judges ON DELETE SET NULL;

-- MATCHES

CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY,
    judge_id INTEGER REFERENCES judges ON DELETE SET NULL,
    start_time TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE SEQUENCE matches_id_seq;

CREATE FUNCTION matches_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.match_id != OLD.match_id THEN
                RAISE EXCEPTION 'update of matches.match_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.match_id = NEXTVAL('matches_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER matches_id_seq_tgr
    BEFORE INSERT OR UPDATE ON matches
    FOR EACH ROW EXECUTE PROCEDURE matches_id_seq_fun();

-- PROGRAMS_MATCHES

CREATE TABLE programs_matches (
    match_id INTEGER NOT NULL REFERENCES matches ON DELETE CASCADE,
    score INTEGER,
    program_id INTEGER REFERENCES programs ON DELETE SET NULL,
    result VARCHAR(250)
);

<<<<<<< HEAD
CREATE SEQUENCE programs_matches_id_seq;

CREATE FUNCTION programs_matches_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.match_id != OLD.match_id THEN
                RAISE EXCEPTION 'update of programs_matches.program_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.match_id = NEXTVAL('programs_matches_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER programs_matches_id_seq_tgr
    BEFORE INSERT OR UPDATE ON programs_matches
    FOR EACH ROW EXECUTE PROCEDURE programs_matches_id_seq_fun();

||||||| merged common ancestors
CREATE SEQUENCE programs_matches_id_seq;

CREATE FUNCTION programs_matches_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.match_id != OLD.match_id THEN
                RAISE EXCEPTION 'update of programs.program_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.match_id = NEXTVAL('programs_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER programs_matches_id_seq_tgr
    BEFORE INSERT OR UPDATE ON programs_matches
    FOR EACH ROW EXECUTE PROCEDURE programs_matches_id_seq_fun();

=======
>>>>>>> 8b40a3d7ee06f57dfbdcbb0385bb21ef3d93f26e
-- MATCH_LOGS

CREATE TABLE match_logs (
    log_id SERIAL PRIMARY KEY,
    match_id INTEGER NOT NULL REFERENCES matches ON DELETE CASCADE,
    time TIMESTAMP NOT NULL DEFAULT NOW(),
    body TEXT NOT NULL,
    priority INTEGER NOT NULL
);

CREATE FUNCTION match_logs_time_check()
    RETURNS trigger AS $BODY$
    BEGIN
        IF NEW.time < (SELECT matches.start_time
                FROM matches
                WHERE matches.match_id = NEW.match_id
            )
        THEN RAISE EXCEPTION 'match_logs.time before matches.start_time (% < %)',
            NEW.time, (SELECT matches.start_time
                FROM matches
                WHERE matches.match_id = NEW.match_id
            );
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER match_logs_time_tgr BEFORE INSERT OR UPDATE ON match_logs
    FOR EACH ROW EXECUTE PROCEDURE match_logs_time_check();

CREATE SEQUENCE match_logs_id_seq;

CREATE FUNCTION match_logs_id_seq_fun()
    RETURNS TRIGGER AS $BODY$
    BEGIN
        IF TG_OP = 'UPDATE' THEN
            IF NEW.log_id != OLD.log_id THEN
                RAISE EXCEPTION 'update of match_logs.log_id';
            END IF;
        ELSIF TG_OP = 'INSERT' THEN
            NEW.log_id = NEXTVAL('match_logs_id_seq');
        END IF;
        RETURN NEW;
    END;
    $BODY$ LANGUAGE plpgsql;

CREATE TRIGGER match_logs_id_seq_tgr
    BEFORE INSERT OR UPDATE ON match_logs
    FOR EACH ROW EXECUTE PROCEDURE match_logs_id_seq_fun();




