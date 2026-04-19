# Observations

## Issues Found

- Tasks allowed NULL titles (missing NOT NULL on title)
- Duplicate emails inserted (missing UNIQUE on email)
- Invalid priorities accepted (priority was INT, should be VARCHAR with CHECK)
- Tasks referencing non-existent projects (missing FOREIGN KEY on project_id)
- Missing owner_id in projects table
- Sample data had wrong data types for priority

## Constraints Implemented

- Added NOT NULL on users.name, users.email, projects.project_name, projects.owner_id, tasks.title, tasks.priority, tasks.project_id
- Added UNIQUE on users.email
- Added CHECK on tasks.priority IN ('Low', 'Medium', 'High')
- Added FOREIGN KEY on projects.owner_id REFERENCES users(id)
- Added FOREIGN KEY on tasks.project_id REFERENCES projects(id)
- Changed priority to VARCHAR(50)
- Added owner_id to projects table
- Used AUTOINCREMENT for ids

## Testing

After applying constraints, the invalid_data.sql should fail with:

- Constraint violation for NULL title
- UNIQUE constraint failed for duplicate email
- CHECK constraint failed for invalid priority
- FOREIGN KEY constraint failed for invalid project_id
- FOREIGN KEY on project_id

## Result

Explain how the database now prevents invalid data as the final input.
