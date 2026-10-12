CREATE TABLE school_year(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    school_id BIGINT NOT NULL,
    start_date YEAR NOT NULL,
    end_date YEAR NOT NULL,

    CONSTRAINT uq_school_year_period
        UNIQUE (start_date, end_date, school_id)
    
    CONSTRAINT chck_school_year_period
        CHECK (end_date > start_date)

    CONSTRAINT fk_school_id_in_sy_tbl
        FOREIGN KEY school_id 
        REFERENCES schools(school_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
)