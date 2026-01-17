-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE uuid_type (
    id SERIAL PRIMARY KEY,
    user_id UUID
);

SELECT * FROM uuid_type;

INSERT INTO uuid_type (user_id)
VALUES (uuid_generate_v4());


-- real world example
CREATE TABLE users (
    user_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(50)
);

SELECT * FROM users;

INSERT INTO users (name)
VALUES ('Manish');