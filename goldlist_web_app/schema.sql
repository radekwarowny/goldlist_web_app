DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS term;
-- DROP TABLE IF EXISTS distillation;

CREATE TABLE user (
	id INTEGER PRIMARY KEY AUTOINCREMENT, 
	username TEXT UNIQUE NOT NULL,
	password TEXT NOT NULL
);

CREATE TABLE term (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	user_id INTEGER NOT NULL,
	entry_word TEXT NOT NULL,
	part_of_speech TEXT,
	first_meaning TEXT NOT NULL, 
	second_meaning TEXT,
	pronunciation TEXT,
	FOREIGN KEY (user_id) REFERENCES user (id)  
);

/*CREATE TABLE distillation (
	id INTEGER PRIMARY KEY AUTOINCREMENT,

	dist_no INTEGER,
	entry_word TEXT NOT NULL,
	part_of_speech TEXT,
	first_meaning TEXT,
	second_meaning TEXT,
	pronunciation TEXT,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (entry_word) REFERENCES user (id)

);
*/
