CREATE TABLE "advisors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "start_time" datetime, "recurring" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "name" varchar, "end_time" datetime);
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "schema_migrations" (version) VALUES
('20170623040216'),
('20170623062610'),
('20170626003405');


