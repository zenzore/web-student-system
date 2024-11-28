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

-- Colleges
INSERT INTO College (code, name) VALUES 
    ('CCS', 'College of Computer Studies'),
    ('CEBA', 'College of Economics, Business, and Administration'),
    ('CHS', 'College of Health Sciences'),
    ('CASS', 'College of Arts nad Social Studies'),
    ('CSM', 'College of Science and Mathematics'),
    ('CED', 'College of Education'),
    ('COET', 'College of Engineering and Technology');

-- Programs
INSERT INTO Program (code, name, college) VALUES 
    -- ccs programs
    ('BSCS', 'Bachelor of Science in Computer Science', 'CCS'),
    ('BSIT', 'Bachelor of Science in Information Technology', 'CCS'),
    ('BSIS', 'Bachelor of Science in Information Systems', 'CCS'),
    ('BSCA', 'Bachelor of Science in Computer Applications'),
    
    -- ceba programs
    ('BSA', 'Bachelor of Science in Accountancy', 'CEBA'),
    ('BSEcon', 'Bachelor of Science in Economics', 'CEBA'),
    ('BSEntrep', 'Bachelor of Science in Entrepreneurship', 'CEBA'),
    ('BSHM', 'Bachelor of Science in Hospitality Management', 'CEBA'),
    ('BSBA-MM', 'Bachelor of Science in Business Administration - Marketing Management', 'CEBA'),
    ('BSBA-BE', 'Bachelor of Science in Business Administration - Business Economics', 'CEBA'),

    -- csm programs
    ('BSBio-AnimalBio', 'Bachelor of Science in Biology - Animal Biology', 'CSM'),
    ('BSBio-PlatBio', 'Bachelor of Science in Biology - Plant Biology', 'CSM'),
    ('BSBio-Diversity', 'Bachelor of Science in Biology - Biodiversity', 'CSM'),
    ('BSBio-MicroBio', 'Bachelor of Science in Biology - Micro Biology', 'CSM'),
    ('BSChem', 'Bachelor of Science in Chemistry', 'CSM'),
    ('BSMarineBio', 'Bachelor of Science in Marine Biology', 'CSM'),
    ('BSMath', 'Bachelor of Science in Mathematics', 'CSM'),
    ('BSPhys', 'Bachelor of Science in Physics', 'CSM'),
    ('BSStat', 'Bachelor of Science in Statistics', 'CSM'),

    -- chs program
    ('BSN', 'Bachelor of Science in Nursing', 'CHS'),

    -- coet programs
    ('BSCE', 'Bachelor of Science in Civil Engineering', 'COET'),
    ('BSCpE', 'Bachelor of Science in Computer Engineering', 'COET'),
    ('BSME', 'Bachelor of Science in Mechanical Engineering', 'COET'),
    ('BSEM', 'Bachelor of Science in Mining Engineering', 'COET'),
    ('BSEE', 'Bachelor of Science in Electrical Engineering', 'COET'),
    
    -- ced programs
    ('BEED-LA', 'Bachelor of Elementary Education - Language Education', 'CED'),
    ('BEED-SM', 'Bachelor of Elementary Education - Science and Mathematics', 'CED'),
    ('BSED-Bio', 'Bachelor of Secondary Education - Biology', 'CED'),
    ('BSED-Chem', 'Bachelor of Secondary Education - Chemistry', 'CED'),
    ('BTVTEd-DT', 'Bachelor of Technical-Vocational Teacher Education - Drafting Technology', 'CED'),
    ('BTLEd-HE', 'Bachelor of Technology and Livelihood - Home Economics', 'CED'),
    ('BTLEd-IA', 'Bachelor of Technology and Livelihood - Industrial Arts', 'CED'),
    ('BPEd', 'Bachelor of Physical Education', 'CED'),

    -- cass programs
    ('BAELS', 'Bachelor of Arts in English Language Studies', 'CASS'),
    ('BAFil', 'Bachelor of Arts in Filipino', 'CASS'),
    ('BAHis', 'Bachelor of Arts in History', 'CASS'),
    ('BAPan', 'Bachelor of Arts in Panitikan', 'CASS'),
    ('BAPolSci', 'Bachelor of Arts in Political Science', 'CASS'),
    ('BAPsych', 'Bachelor of Arts in Psychology', 'CASS'),
    ('BASocio', 'Bachelor of Arts in Sociology', 'CASS'),

    ('BSPsych', 'Bachelor of Science in Psychology', 'CASS'),
    ('BSPhil', 'Bachelor of Science in Philosophy-Applied Ethics');