-- Missing task title
INSERT INTO tasks (title, priority, project_id)
VALUES (NULL, 'High', 1);

-- Duplicate email
INSERT INTO users (name, email)
VALUES ('Charlie', 'alice@email.com');

-- Invalid priority
INSERT INTO tasks (title, priority, project_id)
VALUES ('Testing Task', 'Urgent', 1);

-- Invalid project reference
INSERT INTO tasks (title, priority, project_id)
VALUES ('Ghost Task', 'Low', 999);