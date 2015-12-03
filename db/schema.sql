DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS edit_times;
DROP TABLE IF EXISTS articles_categories;
DROP TABLE IF EXISTS article_edit_times;

CREATE TABLE users (
	id INTEGER PRIMARY KEY, 
	f_name VARCHAR(255), 
	l_name VARCHAR(255), 
	address VARCHAR(255), 
	city VARCHAR(255), 
	state VARCHAR(2), 
	zip INTEGER
);
CREATE TABLE articles (
	id INTEGER PRIMARY KEY, 
	title VARCHAR(255), 
	date_published DATETIME, 
	content TEXT,
	img_url TEXT, 
	user_id REFERENCES users(id)
);
CREATE TABLE categories (
	id INTEGER PRIMARY KEY, 
	name VARCHAR(255)
);
CREATE TABLE edit_times (
	id INTEGER PRIMARY KEY,
	time DATETIME
);
CREATE TABLE articles_categories (
	article_id REFERENCES articles(id), 
	category_id REFERENCES categories(id)
);
CREATE TABLE article_edit_times (
	article_id REFERENCES articles(id), 
	edit_time_id REFERENCES edit_times(id),
	user_id REFERENCES users(id)
);