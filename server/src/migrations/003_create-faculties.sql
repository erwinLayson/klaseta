CREATE TABLE faculties(
    faculty_id BINARY(16) NOT NULL PRIMARY KEY,
    school_id BIGINT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    role ENUM("teacher", "cashier", "register") NOT NULL DEFAULT "teacher",
    status ENUM("active", "inactive"),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_school_id FOREIGN KEY (school_id) REFERENCES schools(school_id)
    ON UPDATE CASCADE ON DELETE CASCADE
)