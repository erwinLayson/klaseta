CREATE TABLE students (
    id BINARY(16) PRIMARY KEY NOT NULL,
    student_id BIGINT NOT NULL,  
    school_id BIGINT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    UNIQUE(school_id, student_id),

    CONSTRAINT fk_school_id_in_std_tbl 
        FOREIGN KEY school_id 
        REFERENCES schools(school_id) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE
);