CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "user_name" VARCHAR(100) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  "password" VARCHAR(500)
);

CREATE TABLE "ingredients" (
  "ingredient_id" SERIAL PRIMARY KEY,
  "ingredient_1" TEXT NOT NULL,
  "ingredient_2" TEXT NOT NULL,
  "ingredient_3" TEXT NOT NULL,
  "ingredient_4" TEXT,
  "ingredient_5" TEXT,
  "ingredient_6" TEXT,
  "ingredient_7" TEXT,
  "ingredient_8" TEXT
);

CREATE TABLE "occasion" (
  "occasion_id" SERIAL PRIMARY KEY,
  "occasion_name" VARCHAR(500)
);

CREATE TABLE "recipe" (
  "recipe_id" SERIAL PRIMARY KEY,
  "user_id" INTEGER NOT NULL,
  "recipe_title" VARCHAR(500) NOT NULL,
  "ingredient_id" INTEGER,
  "instructions" TEXT NOT NULL,
  "recipe_image" TEXT,
  "occasion_id" INTEGER NOT NULL,
  "privacy" BOOLEAN
);

CREATE TABLE "grocery" (
  "user_id" INTEGER NOT NULL,
  "ingredient_id" INTEGER NOT NULL
);

ALTER TABLE "recipe" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "recipe" ADD FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("ingredient_id");

ALTER TABLE "recipe" ADD FOREIGN KEY ("occasion_id") REFERENCES "occasion" ("occasion_id");

ALTER TABLE "grocery" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "grocery" ADD FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("ingredient_id");
