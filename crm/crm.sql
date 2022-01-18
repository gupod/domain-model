-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

drop table contacts;
drop table activities;
drop table companies;
drop table industry;
drop table salesperson;

-- CREATE TABLES

create table contacts (
    id integer primary key AUTOINCREMENT,
    first_name text,
    last_name text,
    email_address text,
    phone_number text,
    position text,
    salesperson_id integer,
    company_id integer
);

create table activities (
    id integer primary key AUTOINCREMENT,
    meeting text,
    meet_date text,
    contact_id integer,
    content text
);

create table companies (
    id integer primary key AUTOINCREMENT,
    company_name text,
    indsutry_id integer
);

create table industry (
    id integer primary key AUTOINCREMENT,
    industry text
);

create table salesperson (
    id integer primary key AUTOINCREMENT,
    first_name text,
    last_name text
);

CREATE TABLE industry_memberships (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id INTEGER,
  industry_id INTEGER
);