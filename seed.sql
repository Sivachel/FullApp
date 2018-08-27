DROP TABLE IF EXISTS book;

CREATE TABLE book (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  book_body TEXT,
  genre VARCHAR(255)
);

INSERT INTO book (title , book_body, genre) VALUES ('Avengers: Infinity War - The Art of the Marvel Cinematic Universe' , 'The Avengers have come a long way since they first assembled to fight off an alien invasion. The past five years have brought more and more challenges, and Earth s Mightiest Heroes have always risen to face them. But have they finally met their match in the intergalactic despot Thanos, who seeks to inflict his twisted will on all of reality? Just in time for the highly anticipated event, this keepsake volume celebrates the characters and concepts that will converge in May 2018, Collecting art, interviews, and photography from films leading up to Marvels Avengers: Infinity War.', 'Artwork');
INSERT INTO book (title , book_body, genre) VALUES ('Black Panther: The Art of the Movie' , 'Following the events of Captain America: Civil War, TChalla returns home to Wakanda to take his place as king. But when two new enemies conspire to destroy the country, the Black Panther must team up with members of the Dora Milaje-Wakanda s special forces-and CIA agent Everett Ross to protect his home from being dragged into a world war. Go behind the scenes with exclusive concept artwork and in-depth analysis from the filmmakers in this keepsake volume!', 'Artwork');
INSERT INTO book (title , book_body, genre) VALUES ('Avengers: Infinity War Prelude' , 'Follow the Avengers of the Marvel Cinematic Universe in their adventures leading up to this summer  blockbuster event, Marvel Avengers: Infinity War! COLLECTING: MARVEL AVENGERS: INFINITY WAR PRELUDE 1-2, TBD', 'Graphic Novel');
INSERT INTO book (title , book_body, genre) VALUES ('Marvel Encyclopedia' , 'Are you fascinated by comic books and obsessed with Marvel Super Heroes? This bestselling Marvel book gives you the definitive details and histories of more than 1,200 of Marvel most memorable characters.', 'Cartoon');
