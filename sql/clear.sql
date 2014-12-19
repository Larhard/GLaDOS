-- DROP TABLE IF EXISTS programs_matches CASCADE;
-- DROP TABLE IF EXISTS match_logs CASCADE;
-- ALTER TABLE contests DROP CONSTRAINT default_judge_fkey;
-- DROP TABLE IF EXISTS matches CASCADE;
-- ALTER TABLE judges DROP CONSTRAINT judges_contest_id_fkey;


DROP TABLE IF EXISTS users_presence CASCADE;
DROP TRIGGER match_logs_time_tgr ON match_logs CASCADE;
DROP FUNCTION match_logs_time_check() CASCADE;

DROP TRIGGER IF EXISTS users_id_seq_tgr ON users CASCADE;
DROP TRIGGER IF EXISTS contests_id_seq_tgr ON contests CASCADE;
DROP TRIGGER IF EXISTS programs_id_seq_tgr ON programs CASCADE;
DROP TRIGGER IF EXISTS judges_id_seq_tgr ON judges CASCADE;
DROP TRIGGER IF EXISTS matches_id_seq_tgr ON matches CASCADE;
DROP TRIGGER IF EXISTS programs_matches_id_seq_tgr ON programs_matches CASCADE;
DROP TRIGGER IF EXISTS match_logs_id_seq_tgr ON match_logs CASCADE;

DROP FUNCTION IF EXISTS users_id_seq_fun() CASCADE;
DROP SEQUENCE IF EXISTS users_id_seq CASCADE;
DROP TABLE IF EXISTS users CASCADE;

DROP FUNCTION IF EXISTS contests_id_seq_fun() CASCADE;
DROP SEQUENCE IF EXISTS contests_id_seq CASCADE;
DROP TABLE IF EXISTS contests CASCADE;

DROP FUNCTION IF EXISTS programs_id_seq_fun() CASCADE;
DROP SEQUENCE IF EXISTS programs_id_seq CASCADE;
DROP TABLE IF EXISTS programs CASCADE;

DROP FUNCTION IF EXISTS judges_id_seq_fun() CASCADE;
DROP SEQUENCE IF EXISTS judges_id_seq CASCADE;
DROP TABLE IF EXISTS judges CASCADE;
 
DROP FUNCTION IF EXISTS matches_id_seq_fun() CASCADE;
DROP SEQUENCE IF EXISTS matches_id_seq CASCADE;
DROP TABLE IF EXISTS matches CASCADE;

DROP FUNCTION IF EXISTS programs_matches_id_seq_fun() CASCADE;
DROP SEQUENCE IF EXISTS programs_matches_id_seq CASCADE;
DROP TABLE IF EXISTS programs_matches CASCADE;

DROP FUNCTION IF EXISTS match_logs_id_seq_fun() CASCADE;
DROP SEQUENCE IF EXISTS match_logs_id_seq CASCADE;
DROP TABLE IF EXISTS match_logs CASCADE;


