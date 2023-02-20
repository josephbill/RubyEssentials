CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY,
  title TEXT,
  body TEXT,
  user_id INTEGER,
  FOREIGN KEY(user_id) REFERENCES users(id)
);
