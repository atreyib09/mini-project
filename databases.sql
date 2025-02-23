
postgres=# \c atreyi09;
You are now connected to database "atreyi09" as user "postgres".
atreyi09=# CREATE TABLE users (
atreyi09(#     id SERIAL PRIMARY KEY,
atreyi09(#     username VARCHAR(50) UNIQUE NOT NULL,
atreyi09(#     email VARCHAR(100) UNIQUE NOT NULL,
atreyi09(#     password_hash VARCHAR(255) NOT NULL,
atreyi09(#     role VARCHAR(10) CHECK (role IN ('student', 'host', 'admin')),
atreyi09(#     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
atreyi09(# );
CREATE TABLE
atreyi09=# CREATE TABLE quizzes (
atreyi09(#     id SERIAL PRIMARY KEY,
atreyi09(#     title VARCHAR(255) NOT NULL,
atreyi09(#     host_id INT NOT NULL,
atreyi09(#     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
atreyi09(#     FOREIGN KEY (host_id) REFERENCES users(id) ON DELETE CASCADE
atreyi09(# );
CREATE TABLE
atreyi09=# CREATE TABLE questions (
atreyi09(#     id SERIAL PRIMARY KEY,
atreyi09(#     quiz_id INT NOT NULL,
atreyi09(#     question_text TEXT NOT NULL,
atreyi09(#     option_a VARCHAR(255),
atreyi09(#     option_b VARCHAR(255),
atreyi09(#     option_c VARCHAR(255),
atreyi09(#     option_d VARCHAR(255),
atreyi09(#     correct_option CHAR(1) NOT NULL,  -- 'A', 'B', 'C', or 'D'
atreyi09(#     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
atreyi09(#     FOREIGN KEY (quiz_id) REFERENCES quizzes(id) ON DELETE CASCADE
atreyi09(# );
CREATE TABLE
atreyi09=# CREATE TABLE responses (
atreyi09(#     id SERIAL PRIMARY KEY,
atreyi09(#     player_id INT NOT NULL,
atreyi09(#     question_id INT NOT NULL,
atreyi09(#     selected_option CHAR(1),
atreyi09(#     is_correct BOOLEAN,
atreyi09(#     response_time FLOAT,
atreyi09(#     FOREIGN KEY (player_id) REFERENCES users(id) ON DELETE CASCADE,
atreyi09(#     FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
atreyi09(# );
CREATE TABLE
atreyi09=# CREATE TABLE leaderboard (
atreyi09(#     id SERIAL PRIMARY KEY,
atreyi09(#     quiz_id INT NOT NULL,
atreyi09(#     player_id INT NOT NULL,
atreyi09(#     score INT NOT NULL,
atreyi09(#     rank INT,
atreyi09(#     FOREIGN KEY (quiz_id) REFERENCES quizzes(id) ON DELETE CASCADE,
atreyi09(#     FOREIGN KEY (player_id) REFERENCES users(id) ON DELETE CASCADE
atreyi09(# );
CREATE TABLE
atreyi09=# CREATE TABLE uploads (
atreyi09(#     id SERIAL PRIMARY KEY,
atreyi09(#     file_name VARCHAR(255) NOT NULL,
atreyi09(#     file_type VARCHAR(10) NOT NULL,
atreyi09(#     file_size INT NOT NULL,
atreyi09(#     uploader_id INT NOT NULL,
atreyi09(#     upload_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
atreyi09(#     FOREIGN KEY (uploader_id) REFERENCES users(id) ON DELETE CASCADE
atreyi09(# );
CREATE TABLE
atreyi09=#