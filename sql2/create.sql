BEGIN;
CREATE TABLE "django_content_type" ("id" serial NOT NULL PRIMARY KEY, "name" varchar(100) NOT NULL, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_app_label_45f3b1d93ec8c61c_uniq" UNIQUE ("app_label", "model");

COMMIT;
BEGIN;
CREATE TABLE "auth_permission" ("id" serial NOT NULL PRIMARY KEY, "name" varchar(50) NOT NULL, "content_type_id" integer NOT NULL, "codename" varchar(100) NOT NULL, UNIQUE ("content_type_id", "codename"));
CREATE TABLE "auth_group" ("id" serial NOT NULL PRIMARY KEY, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" serial NOT NULL PRIMARY KEY, "group_id" integer NOT NULL, "permission_id" integer NOT NULL, UNIQUE ("group_id", "permission_id"));
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_content_type_id_508cf46651277a81_fk_django_content_type_id" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_name_253ae2a6331666e8_like" ON "auth_group" ("name" varchar_pattern_ops);
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");

COMMIT;
BEGIN;
CREATE TABLE "glados_auth_gladosuser_groups" (
    "id" serial NOT NULL PRIMARY KEY,
    "gladosuser_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED,
    UNIQUE ("gladosuser_id", "group_id")
)
;
CREATE TABLE "glados_auth_gladosuser_user_permissions" (
    "id" serial NOT NULL PRIMARY KEY,
    "gladosuser_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED,
    UNIQUE ("gladosuser_id", "permission_id")
)
;
CREATE TABLE "glados_auth_gladosuser" (
    "id" serial NOT NULL PRIMARY KEY,
    "password" varchar(128) NOT NULL,
    "last_login" timestamp with time zone NOT NULL,
    "is_superuser" boolean NOT NULL,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamp with time zone NOT NULL
)
;
CREATE TABLE "core_contest" (
    "id" serial NOT NULL PRIMARY KEY,
    "name" varchar(256) NOT NULL UNIQUE,
    "description" text,
    "start" timestamp with time zone NOT NULL,
    "end" timestamp with time zone,
    "default_judge_id" integer,
    "players_count" integer NOT NULL
)
;
CREATE TABLE "core_judge" (
    "id" serial NOT NULL PRIMARY KEY,
    "path" varchar(256) NOT NULL,
    "name" varchar(250),
    "init_parameters" text,
    "description" text,
    "was_default_judge" boolean NOT NULL
)
;
ALTER TABLE "core_contest" ADD CONSTRAINT "default_judge_id_refs_id_8ae8f68e" FOREIGN KEY ("default_judge_id") REFERENCES "core_judge" ("id") DEFERRABLE INITIALLY DEFERRED;
CREATE TABLE "core_match" (
    "id" serial NOT NULL PRIMARY KEY,
    "judge_id" integer NOT NULL REFERENCES "core_judge" ("id") DEFERRABLE INITIALLY DEFERRED,
    "contest_id" integer NOT NULL REFERENCES "core_contest" ("id") DEFERRABLE INITIALLY DEFERRED,
    "start" timestamp with time zone NOT NULL,
    "ended" boolean NOT NULL
)
;
CREATE TABLE "core_matchlog" (
    "id" serial NOT NULL PRIMARY KEY,
    "match_id" integer NOT NULL REFERENCES "core_match" ("id") DEFERRABLE INITIALLY DEFERRED,
    "time" timestamp with time zone NOT NULL,
    "body" text NOT NULL,
    "priority" integer NOT NULL
)
;
CREATE TABLE "core_program" (
    "id" serial NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "glados_auth_gladosuser" ("id") DEFERRABLE INITIALLY DEFERRED,
    "contest_id" integer NOT NULL REFERENCES "core_contest" ("id") DEFERRABLE INITIALLY DEFERRED,
    "name" varchar(256),
    "application_time" timestamp with time zone NOT NULL,
    "wins" integer NOT NULL,
    "defeats" integer NOT NULL,
    "ties" integer NOT NULL,
    "source_code" varchar(100),
    UNIQUE ("name", "user_id")
)
;
CREATE TABLE "core_programmatch" (
    "id" serial NOT NULL PRIMARY KEY,
    "match_id" integer NOT NULL REFERENCES "core_match" ("id") DEFERRABLE INITIALLY DEFERRED,
    "program_id" integer NOT NULL REFERENCES "core_program" ("id") DEFERRABLE INITIALLY DEFERRED,
    "score" integer,
    "comment" text,
    UNIQUE ("match_id", "program_id")
)
;
CREATE INDEX "core_contest_name_like" ON "core_contest" ("name" varchar_pattern_ops);
CREATE INDEX "core_contest_default_judge_id" ON "core_contest" ("default_judge_id");
CREATE INDEX "core_match_judge_id" ON "core_match" ("judge_id");
CREATE INDEX "core_match_contest_id" ON "core_match" ("contest_id");
CREATE INDEX "core_matchlog_match_id" ON "core_matchlog" ("match_id");
CREATE INDEX "core_program_user_id" ON "core_program" ("user_id");
CREATE INDEX "core_program_contest_id" ON "core_program" ("contest_id");
CREATE INDEX "core_programmatch_match_id" ON "core_programmatch" ("match_id");
CREATE INDEX "core_programmatch_program_id" ON "core_programmatch" ("program_id");
ALTER TABLE "glados_auth_gladosuser_groups" ADD CONSTRAINT "gladosuser_id_refs_id_da3704b2" FOREIGN KEY ("gladosuser_id") REFERENCES "glados_auth_gladosuser" ("id") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "glados_auth_gladosuser_user_permissions" ADD CONSTRAINT "gladosuser_id_refs_id_74f2b7ab" FOREIGN KEY ("gladosuser_id") REFERENCES "glados_auth_gladosuser" ("id") DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX "glados_auth_gladosuser_groups_gladosuser_id" ON "glados_auth_gladosuser_groups" ("gladosuser_id");
CREATE INDEX "glados_auth_gladosuser_groups_group_id" ON "glados_auth_gladosuser_groups" ("group_id");
CREATE INDEX "glados_auth_gladosuser_user_permissions_gladosuser_id" ON "glados_auth_gladosuser_user_permissions" ("gladosuser_id");
CREATE INDEX "glados_auth_gladosuser_user_permissions_permission_id" ON "glados_auth_gladosuser_user_permissions" ("permission_id");
CREATE INDEX "glados_auth_gladosuser_username_like" ON "glados_auth_gladosuser" ("username" varchar_pattern_ops);

COMMIT;
BEGIN;
CREATE TABLE "django_admin_log" ("id" serial NOT NULL PRIMARY KEY, "action_time" timestamp with time zone NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL, "user_id" integer NOT NULL);
ALTER TABLE "django_admin_log" ADD CONSTRAINT "djan_content_type_id_697914295151027a_fk_django_content_type_id" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_ad_user_id_52fdd58701c5f563_fk_glados_auth_gladosuser_id" FOREIGN KEY ("user_id") REFERENCES "glados_auth_gladosuser" ("id") DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");

COMMIT;
BEGIN;
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" timestamp with time zone NOT NULL);
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE INDEX "django_session_session_key_461cfeaa630ca218_like" ON "django_session" ("session_key" varchar_pattern_ops);

COMMIT;
