CREATE TABLE schools(
    id BINARY(16) NOT NULL PRIMARY KEY,
    school_id BIGINT NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    division VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL,
    status ENUM("active", "inactive")
);