CREATE TABLE job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR (255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR (255),
    status VARCHAR(255)
);

SELECT * FROM job_applied;


INSERT INTO job_applied
    (
        job_id,
        application_sent_date,
        custom_resume,
        resume_file_name,
        cover_letter_sent,
        cover_letter_file_name,
        status
    )
    VALUES(
        1,
        '2024-02-01',
        true,
        'resume_01.jpg',
        true,
        'cover_letter_01.jpg',
        'submitted'
    );
    
SELECT * FROM job_applied;

ALTER TABLE job_applied
ADD contact VARCHAR(50);

SELECT * FROM job_applied;

UPDATE job_applied
SET contact = '1234567890'
WHERE job_id = 1;

SELECT * FROM job_applied;

UPDATE job_applied
SET contact = 'Josephine Knowles'
WHERE job_id = 1;

SELECT * FROM job_applied;

ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

SELECT * FROM job_applied;

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE VARCHAR(255);

ALTER TABLE job_applied
DROP COLUMN contact_name;

SELECT * FROM job_applied;
