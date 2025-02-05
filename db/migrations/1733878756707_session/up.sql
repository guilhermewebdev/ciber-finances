CREATE TABLE sessions (
  id BIGSERIAL UNIQUE PRIMARY KEY NOT NULL,
  user_id BIGINT REFERENCES users ON DELETE CASCADE,
  token TEXT NOT NULL UNIQUE,
  user_agent TEXT,

  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE passwords (
  id BIGSERIAL UNIQUE PRIMARY KEY NOT NULL,
  user_id BIGINT REFERENCES users ON DELETE CASCADE,
  hash TEXT NOT NULL,

  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);