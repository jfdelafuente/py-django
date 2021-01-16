BEGIN;
--
-- Create model Board
--
CREATE TABLE "boards_board" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(30) NOT NULL UNIQUE, "description" varchar(100) NOT NULL);
--
-- Create model Topic
--
CREATE TABLE "boards_topic" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "subject" varchar(255) NOT NULL, "last_updated" datetime NOT NULL, "board_id" integer NOT NULL REFERENCES "boards_board" ("id") DEFERRABLE INITIALLY DEFERRED, "starter_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
--
-- Create model Post
--
CREATE TABLE "boards_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "message" text NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NULL, "created_by_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "topic_id" integer NOT NULL REFERENCES "boards_topic" ("id") DEFERRABLE INITIALLY DEFERRED, "updated_by_id" integer NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE INDEX "boards_topic_board_id_4462fe82" ON "boards_topic" ("board_id");
CREATE INDEX "boards_topic_starter_id_60e98681" ON "boards_topic" ("starter_id");
CREATE INDEX "boards_post_created_by_id_0b841038" ON "boards_post" ("created_by_id");
CREATE INDEX "boards_post_topic_id_f477c024" ON "boards_post" ("topic_id");
CREATE INDEX "boards_post_updated_by_id_76d3c48f" ON "boards_post" ("updated_by_id");
COMMIT;
