-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-11-03 04:57:45.515




-- tables
-- Table course_coursegroup_relationships
CREATE TABLE course_coursegroup_relationships (
    course_id int  NOT NULL,
    coursegroup_id int  NOT NULL,
    course_is_mandatory bool  NOT NULL,
    course_in_at_least_one bool  NULL,
    CONSTRAINT course_coursegroup_relationships_pk PRIMARY KEY (course_id,coursegroup_id)
);

-- Table course_has_prerequisite_orgroups
CREATE TABLE course_has_prerequisite_orgroups (
    course_id int  NOT NULL,
    orgroup_id int  NOT NULL,
    is_corequisite bool  NOT NULL,
    CONSTRAINT course_has_prerequisite_orgroups_pk PRIMARY KEY (course_id,orgroup_id)
);

-- Table course_in_prerequisite_orgroups
CREATE TABLE course_in_prerequisite_orgroups (
    orgroup_id int  NOT NULL,
    requisite_course_id int  NOT NULL,
    CONSTRAINT course_in_prerequisite_orgroups_pk PRIMARY KEY (orgroup_id)
);

-- Table coursegroups
CREATE TABLE coursegroups (
    coursegroup_id int  NOT NULL,
    coursegroup_name varchar(255)  NOT NULL,
    coursegroup_credit_requirement real(5,2)  NOT NULL,
    CONSTRAINT coursegroups_pk PRIMARY KEY (coursegroup_id)
);

-- Table courses
CREATE TABLE courses (
    course_id int  NOT NULL,
    course_short_name varchar(10)  NOT NULL,
    course_full_name varchar(255)  NOT NULL,
    course_description varchar(3000)  NULL,
    course_credit_value real(4,2)  NOT NULL,
    engineer_required boolean  NOT NULL,
    CONSTRAINT courses_pk PRIMARY KEY (course_id)
);

-- Table generated_sequences
CREATE TABLE generated_sequences (
    student_id int  NOT NULL,
    sequence_id int  NOT NULL,
    sequence_timestamp timestamp  NOT NULL,
    CONSTRAINT generated_sequences_pk PRIMARY KEY (sequence_id)
);

-- Table program_course_relationships
CREATE TABLE program_course_relationships (
    program_id int  NOT NULL,
    course_id int  NOT NULL,
    course_priority int  NOT NULL,
    place_asap bool  NOT NULL,
    CONSTRAINT program_course_relationships_pk PRIMARY KEY (program_id,course_id)
);

-- Table program_coursegroup_relationships
CREATE TABLE program_coursegroup_relationships (
    program_id int  NOT NULL,
    coursegroup_id int  NOT NULL,
    CONSTRAINT program_coursegroup_relationships_pk PRIMARY KEY (program_id,coursegroup_id)
);

-- Table programs
CREATE TABLE programs (
    program_id int  NOT NULL,
    program_name varchar(255)  NOT NULL,
    program_credit_requirement real(5,2)  NOT NULL,
    CONSTRAINT programs_pk PRIMARY KEY (program_id)
);

-- Table sections
CREATE TABLE sections (
    section_id int  NOT NULL,
    course_id int  NOT NULL,
    section_program_id_restriction int  NULL,
    prof_is_engineer boolean  NULL,
    CONSTRAINT sections_pk PRIMARY KEY (section_id)
);

-- Table sequence_section_priority
CREATE TABLE sequence_section_priority (
    section_id int  NOT NULL,
    sequence_id int  NOT NULL,
    section_priority int  NOT NULL,
    CONSTRAINT sequence_section_priority_pk PRIMARY KEY (section_id,sequence_id)
);

-- Table student_completed_courses
CREATE TABLE student_completed_courses (
    student_id int  NOT NULL,
    course_id int  NOT NULL,
    is_exempt bool  NOT NULL,
    CONSTRAINT student_completed_courses_pk PRIMARY KEY (student_id,course_id)
);

-- Table student_program_relationships
CREATE TABLE student_program_relationships (
    student_id int  NOT NULL,
    program_id int  NOT NULL,
    program_credits_complete real(5,2)  NOT NULL,
    CONSTRAINT student_program_relationships_pk PRIMARY KEY (student_id,program_id)
);

-- Table student_term_section_relationships
CREATE TABLE student_term_section_relationships (
    term_id int  NOT NULL,
    section_id int  NOT NULL,
    CONSTRAINT student_term_section_relationships_pk PRIMARY KEY (term_id,section_id)
);

-- Table student_terms
CREATE TABLE student_terms (
    term_id int  NOT NULL,
    sequence_id int  NOT NULL,
    min_term_credit real(5,2)  NOT NULL,
    max_term_credit real(5,2)  NOT NULL,
    actual_term_credit real(5,2)  NOT NULL,
    term_year year  NOT NULL,
    term_type int  NOT NULL,
    term_order int  NOT NULL,
    CONSTRAINT student_terms_pk PRIMARY KEY (term_id)
);

-- Table students
CREATE TABLE students (
    student_id int  NOT NULL,
    username varchar(30)  NOT NULL,
    password varchar(255)  NOT NULL,
    email varchar(255)  NOT NULL,
    CONSTRAINT students_pk PRIMARY KEY (student_id)
);

-- Table timeblocks
CREATE TABLE timeblocks (
    timeblock_id int  NOT NULL,
    section_id int  NOT NULL,
    timeblock_semester int  NOT NULL,
    timeblock_day int  NOT NULL,
    timeblock_start time  NULL,
    timeblock_end time  NULL,
    loyola_campus bool  NOT NULL,
    timeblock_category varchar(20)  NOT NULL,
    CONSTRAINT timeblocks_pk PRIMARY KEY (timeblock_id)
);





-- foreign keys
-- Reference:  course_otm_course_coursegroup_relationships (table: course_coursegroup_relationships)


ALTER TABLE course_coursegroup_relationships ADD CONSTRAINT course_otm_course_coursegroup_relationships FOREIGN KEY course_otm_course_coursegroup_relationships (course_id)
    REFERENCES courses (course_id);
-- Reference:  course_otm_sections (table: sections)


ALTER TABLE sections ADD CONSTRAINT course_otm_sections FOREIGN KEY course_otm_sections (course_id)
    REFERENCES courses (course_id);
-- Reference:  course_otztm_course_has_prerequisite_orgroups (table: course_has_prerequisite_orgroups)


ALTER TABLE course_has_prerequisite_orgroups ADD CONSTRAINT course_otztm_course_has_prerequisite_orgroups FOREIGN KEY course_otztm_course_has_prerequisite_orgroups (course_id)
    REFERENCES courses (course_id);
-- Reference:  course_otztm_course_in_prerequisite_orgroups (table: course_in_prerequisite_orgroups)


ALTER TABLE course_in_prerequisite_orgroups ADD CONSTRAINT course_otztm_course_in_prerequisite_orgroups FOREIGN KEY course_otztm_course_in_prerequisite_orgroups (requisite_course_id)
    REFERENCES courses (course_id);
-- Reference:  course_otztm_program_course_relationships (table: program_course_relationships)


ALTER TABLE program_course_relationships ADD CONSTRAINT course_otztm_program_course_relationships FOREIGN KEY course_otztm_program_course_relationships (course_id)
    REFERENCES courses (course_id);
-- Reference:  course_otztm_student_completed_courses (table: student_completed_courses)


ALTER TABLE student_completed_courses ADD CONSTRAINT course_otztm_student_completed_courses FOREIGN KEY course_otztm_student_completed_courses (course_id)
    REFERENCES courses (course_id);
-- Reference:  course_prerequisite_groups_oto (table: course_has_prerequisite_orgroups)


ALTER TABLE course_has_prerequisite_orgroups ADD CONSTRAINT course_prerequisite_groups_oto FOREIGN KEY course_prerequisite_groups_oto (orgroup_id)
    REFERENCES course_in_prerequisite_orgroups (orgroup_id);
-- Reference:  coursegroup_otm_course_coursegroup_relationships (table: course_coursegroup_relationships)


ALTER TABLE course_coursegroup_relationships ADD CONSTRAINT coursegroup_otm_course_coursegroup_relationships FOREIGN KEY coursegroup_otm_course_coursegroup_relationships (coursegroup_id)
    REFERENCES coursegroups (coursegroup_id);
-- Reference:  coursegroup_otm_program_coursegroup_relationships (table: program_coursegroup_relationships)


ALTER TABLE program_coursegroup_relationships ADD CONSTRAINT coursegroup_otm_program_coursegroup_relationships FOREIGN KEY coursegroup_otm_program_coursegroup_relationships (coursegroup_id)
    REFERENCES coursegroups (coursegroup_id);
-- Reference:  generated_sequence_otm_student_terms (table: student_terms)


ALTER TABLE student_terms ADD CONSTRAINT generated_sequence_otm_student_terms FOREIGN KEY generated_sequence_otm_student_terms (sequence_id)
    REFERENCES generated_sequences (sequence_id);
-- Reference:  generated_sequences_otztm_student_section_relationships (table: sequence_section_priority)


ALTER TABLE sequence_section_priority ADD CONSTRAINT generated_sequences_otztm_student_section_relationships FOREIGN KEY generated_sequences_otztm_student_section_relationships (sequence_id)
    REFERENCES generated_sequences (sequence_id);
-- Reference:  program_otm_program_coursegroup_relationships (table: program_coursegroup_relationships)


ALTER TABLE program_coursegroup_relationships ADD CONSTRAINT program_otm_program_coursegroup_relationships FOREIGN KEY program_otm_program_coursegroup_relationships (program_id)
    REFERENCES programs (program_id);
-- Reference:  program_otm_student_program_relationships (table: student_program_relationships)


ALTER TABLE student_program_relationships ADD CONSTRAINT program_otm_student_program_relationships FOREIGN KEY program_otm_student_program_relationships (program_id)
    REFERENCES programs (program_id);
-- Reference:  programs_otm_program_course_relationships (table: program_course_relationships)


ALTER TABLE program_course_relationships ADD CONSTRAINT programs_otm_program_course_relationships FOREIGN KEY programs_otm_program_course_relationships (program_id)
    REFERENCES programs (program_id);
-- Reference:  section_otm_student_section_relationships (table: sequence_section_priority)


ALTER TABLE sequence_section_priority ADD CONSTRAINT section_otm_student_section_relationships FOREIGN KEY section_otm_student_section_relationships (section_id)
    REFERENCES sections (section_id);
-- Reference:  section_otm_student_term_section_relationships (table: student_term_section_relationships)


ALTER TABLE student_term_section_relationships ADD CONSTRAINT section_otm_student_term_section_relationships FOREIGN KEY section_otm_student_term_section_relationships (section_id)
    REFERENCES sections (section_id);
-- Reference:  section_otzm_timeblocks (table: timeblocks)


ALTER TABLE timeblocks ADD CONSTRAINT section_otzm_timeblocks FOREIGN KEY section_otzm_timeblocks (section_id)
    REFERENCES sections (section_id);
-- Reference:  student_otm_student_program_relationships (table: student_program_relationships)


ALTER TABLE student_program_relationships ADD CONSTRAINT student_otm_student_program_relationships FOREIGN KEY student_otm_student_program_relationships (student_id)
    REFERENCES students (student_id);
-- Reference:  student_otztm_generated_sequences (table: generated_sequences)


ALTER TABLE generated_sequences ADD CONSTRAINT student_otztm_generated_sequences FOREIGN KEY student_otztm_generated_sequences (student_id)
    REFERENCES students (student_id);
-- Reference:  student_otztm_student_completed_courses (table: student_completed_courses)


ALTER TABLE student_completed_courses ADD CONSTRAINT student_otztm_student_completed_courses FOREIGN KEY student_otztm_student_completed_courses (student_id)
    REFERENCES students (student_id);
-- Reference:  student_terms_otm_student_term_section_relationships (table: student_term_section_relationships)


ALTER TABLE student_term_section_relationships ADD CONSTRAINT student_terms_otm_student_term_section_relationships FOREIGN KEY student_terms_otm_student_term_section_relationships (term_id)
    REFERENCES student_terms (term_id);



-- End of file.

