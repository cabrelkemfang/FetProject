CREATE TABLE course  (
  course_id BIGINT PRIMARY KEY auto_increment,
  course_code varchar(32),
  course_title VARCHAR(32),
  course_value INT ,
  course_status varchar(10),
  semester INT,
  level INT,
  coption varchar(20),
  course_master varchar (30)
);


CREATE TABLE contents  (
  content_id BIGINT PRIMARY KEY auto_increment,
  chapter_id BIGINT,
  content VARCHAR(64)

);

CREATE TABLE course_content (
  course_id BIGINT NOT NULL REFERENCES course (course_id),
  content_id BIGINT NOT NULL REFERENCES contents (content_id),
  PRIMARY KEY (course_id, content_id)
);
