CREATE TABLE date_time_types (
    id SERIAL PRIMARY KEY,
    birth_date DATE,
    login_time TIME,
    created_at TIMESTAMP,
    event_time TIMESTAMPTZ,
    duration INTERVAL
);

SELECT * FROM date_time_types;

INSERT INTO date_time_types (birth_date,login_time,created_at,event_time,duration)
VALUES ('2002-05-15','10:30:00','2023-05-10 10:30:00','2023-05-10 10:30:00+05:30','2 days 3 hours'),
	   ('2003-06-12','11:56:04','2034-05-12 4:56:58','2022-08-12 10:15:00+05:30','5 days 12 hours 56 minutes 19 seconds');
