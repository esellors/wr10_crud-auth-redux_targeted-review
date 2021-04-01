DROP TABLE IF EXISTS silly_joke_user;
DROP TABLE IF EXISTS silly_joke;

CREATE TABLE silly_joke_user (
  silly_joke_user_id SERIAL PRIMARY KEY,
  email VARCHAR(150),
  hash TEXT
);

CREATE TABLE silly_joke (
    joke_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES silly_joke_user(silly_joke_user_id),
    joke_category VARCHAR(100),
    joke_text VARCHAR(500)
);