DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS edit_times;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS articles_categories;
DROP TABLE IF EXISTS articles_edit_times;

CREATE TABLE users (id INTEGER PRIMARY KEY, f_name VARCHAR(255), l_name VARCHAR(255));
CREATE TABLE authors(id INTEGER PRIMARY KEY, name_id REFERENCES users(id));
CREATE TABLE articles (id INTEGER PRIMARY KEY, title VARCHAR(255), date_published TEXT, content TEXT, author_id REFERENCES authors(id));
CREATE TABLE categories (id INTEGER PRIMARY KEY, name VARCHAR(255));
CREATE TABLE edit_times (id INTEGER PRIMARY KEY, time TEXT);
CREATE TABLE questions (id INTEGER PRIMARY KEY, content TEXT, user_id REFERENCES users(id), article_id REFERENCES articles(id));
CREATE TABLE articles_categories (article_id REFERENCES articles(id), category_id REFERENCES categories(id));
CREATE TABLE articles_edit_times (article_id REFERENCES articles(id), edit_time_id REFERENCES edit_times(id));