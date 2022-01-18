-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

create table enrollments (
  id integer primary key AUTOINCREMENT,
  section_id integer,
  student_id integer
);

-- Create the rest of the tables

create table teachers (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name text,
last_name text,
bio text
);

create table courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_name TEXT,
  course_description TEXT
);

create table sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  class_time text, 
  course_id integer,
  teacher_id integer
);