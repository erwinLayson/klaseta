CREATE TABLE schools(
    school_id BIGINT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    division VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL,
    status ENUM("active", "inactive")
);