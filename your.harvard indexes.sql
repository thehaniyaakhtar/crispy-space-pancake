-- Index to speed up joins between enrollments and students
CREATE INDEX idx_enrollments_student_id ON enrollments(student_id);

-- Index to speed up joins between enrollments and courses
CREATE INDEX idx_enrollments_course_id ON enrollments(course_id);

-- Index to speed up filtering or joining courses by department
CREATE INDEX idx_courses_department ON courses(department);

-- Index to speed up filtering or sorting by semester
CREATE INDEX idx_courses_semester ON courses(semester);

-- Index to speed up joins between satisfies and courses
CREATE INDEX idx_satisfies_course_id ON satisfies(course_id);

-- Index to speed up joins between satisfies and requirements
CREATE INDEX idx_satisfies_requirement_id ON satisfies(requirement_id);

-- Index to speed up joins between students and enrollments
CREATE INDEX idx_students_id ON students(id);  -- likely already primary key, but explicit

-- Index to speed up joins between requirements and satisfies
CREATE INDEX idx_requirements_id ON requirements(id);  -- also likely primary key
