CREATE DATABASE IF NOT EXISTS web_ssis;

USE web_ssis;

CREATE TABLE IF NOT EXISTS Student (
    id_number INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender ENUM('male', 'female'),
    year_level INT NOT NULL,
    program VARCHAR(50) NOT NULL,
    FOREIGN KEY (program) REFERENCES Program(code)
);

CREATE TABLE IF NOT EXISTS Program (
    code VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    college VARCHAR(10) NOt NULL,
    FOREIGN KEY (college) REFERENCES college(code)
);

CREATE TABLE IF NOT EXISTS College (
    code VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
)