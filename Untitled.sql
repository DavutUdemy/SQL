CREATE TABLE "employee" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "lastName" varchar,
  "tcno" varchar,
  "birthDate" date,
  "email" varchar,
  "start_date" date,
  "end_date" date
);

CREATE TABLE "employer" (
  "id" SERIAL PRIMARY KEY,
  "companyName" varchar,
  "website" varchar,
  "email" varchar,
  "password" date
);

CREATE TABLE "Jobs" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "type" varchar,
  "description" varchar,
  "quantitiy" int,
  "start_date" date,
  "end_date" date
);

CREATE TABLE "VerifyUser" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "lastName" varchar,
  "tcno" varchar,
  "birthDate" date,
  "emailVerify" date,
  "employee_id" int,
  PRIMARY KEY ("id", "employee_id")
);

ALTER TABLE "VerifyUser" ADD FOREIGN KEY ("employee_id") REFERENCES "employee" ("id");

