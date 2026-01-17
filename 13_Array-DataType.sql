CREATE TABLE array_type (
    id SERIAL PRIMARY KEY,
    skills TEXT[]
);

SELECT * FROM array_type;

INSERT INTO array_type (skills)
VALUES (ARRAY['Java','SQL','Python']),
       (ARRAY['Apple','Banana','Orange','Guava']);
