CREATE TABLE classrooms(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    school_id BIGINT NOT NULL,
    name VARCHAR(50) NOT NULL,
    section VARCHAR(20) NOT NULL,
    level TINYINT NOT NULL,

    UNIQUE(name, section, level),

    CONSTRAINT fk_school_id_in_classrooms_tbl
        FOREIGN KEY school_id REFERENCES schools(school_id)
        ON UPDATE CASCADE 
        ON DELETE CASCADE
);