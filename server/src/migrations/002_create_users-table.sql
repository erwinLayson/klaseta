
CREATE TABLE users (
    id BINARY(16) PRIMARY KEY NOT NULL,
    school_id BIGINT NOT NULL,
    student_id BIGINT NULL, -- For student role to allow them to login using there student id
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_school_id_in_users_tbl
        FOREIGN KEY (school_id)
        REFERENCES schools(school_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    UNIQUE(school_id, student_id)
);
