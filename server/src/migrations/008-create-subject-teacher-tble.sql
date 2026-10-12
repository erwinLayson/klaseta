CREATE TABLE subject_teachers(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    school_id BIGINT NOT NULL,
    faculty_id BINARY(16) NOT NULL,
    classroom_id BIGINT NOT NULL,

    CONSTRAINT fk_school_id_in_subjetct_teacher_tbl
        FOREIGN KEY school_id
        REFERENCES school(school_id) ,

    CONSTRAINT fk_faculty_id_in_subject_teacher_tbl
        FOREIGN KEY faculty_id
        REFERENCES faculty(faculty_id),

    CONSTRAINT fk_classroom_id_in_subject_teacher_tbl
        FOREIGN KEY classroom_id
        REFERENCES classroom(classroom_id)
)