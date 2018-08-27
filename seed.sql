DROP TABLE IF EXISTS book;

CREATE TABLE book (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  book_body TEXT,
  genre VARCHAR(35)
);

INSERT INTO book (title , book_body) VALUES ('Book 0' , 'Body text 0');
INSERT INTO book (title , book_body) VALUES ('Book 1' , 'Body text 1');
INSERT INTO book (title , book_body) VALUES ('Book 2' , 'Body text 2');
INSERT INTO book (title , book_body) VALUES ('Book 3' , 'Body text 3');
