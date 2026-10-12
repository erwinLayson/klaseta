CREATE TABLE subjects(
    subject_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(20) NOT NULL,
    subject_code VARCHAR(10) NOT NULL,
    subject_unit DECIMAL(5, 2) NULL 
)