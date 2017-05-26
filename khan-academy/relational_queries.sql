-- Solution SQL for the project from the Relational Queries course ("Famous people")
CREATE TABLE Music
      (`id` INTEGER,
       `albumName` TEXT, 
       `artist` TEXT, 
       `year` INTEGER, 
       `genre` TEXT,
       `price` `REAL`);

  INSERT INTO Music
      (`id`, `albumName`, `artist`, `year`, `genre`, `price`)
  VALUES
      (1, 'Thriller', 'Michael Jackson', 1982, 'Pop, Rock, R&B', 11.99),
      (2, 'Back in Black', 'AC/DC', 1980, 'Hard Rock', 9.99),
      (3, 'The Dark Side of The Moon', 'Pink Floyd', 1973, 'Progressive Rock', 10.99),
      (4, 'The Bodyguard', 'Whitney Houston', 1992, 'RnB Soul Pop Soundtrack', 8.99),
      (5, 'Bat Out Of Hell', 'Meat Loaf', 1977, 'Hard Rock, Progressive Rock', 14.99),
      (6, 'Their Greatest Hits (1971 - 1975)', 'Eagles', 1976, 'Soft Rock, Rock, Folk Rock', 9.99),
      (7, 'Saturday Night Fever', 'Bee Gees', 1977, 'Disco', 7.99),
      (8, 'Rumours', 'Fleetwood Mac', 1977, 'Soft Rock', 18.99),
      (9, 'Come On Over', 'Shania Twain', 1997, 'Country, Pop', 9.99),
      (10, 'Led Zeppelin IV', 'Led Zeppelin', 1971, 'Hard Rock, Heavy Metal. Folk', 12.99),
      (11, 'Bad', 'Michael Jackson', 1987, 'Pop, Funk, Rock', 12.99),
      (12, 'Jagged Little Pill', 'Alanis Morissette', 1995, 'Alternative Rock', 13.99),
      (13, 'Falling Into You', 'Celine Dion', 1996, 'Pop, Soft Rock', 16.99),
      (14, 'Sgt. Peppers Lonely Hearts Club Band', 'The Beatles', 1967, 'Rock', 20.99),
      (15, 'Hotel California', 'Eagles', 1976, 'Soft Rock, Folk Rock, Rock', 19.99),
      (16, 'Music Box', 'Mariah Carey', 1993, 'Pop, R&B, Rock', 8.99);

CREATE TABLE Musician
      (`id` INTEGER, `artist` TEXT, `country` TEXT, `Period Active` TEXT, `genre` TEXT, `Total Units Sold` `numeric`)
  ;  
  INSERT INTO Musician
      (`id`, `artist`, `country`, `Period Active`, `genre`, `Total Units Sold`)
  VALUES
      (1, 'The Beatles', 'UK', '1960-1970', 'Pop, Rock', 270.8),
      (1, 'Elvis Presley', 'USA', '1954-1977', 'Rock and Roll', 211.5),
      (1, 'Michael Jackson', 'USA', '1964-2009', 'Pop, Rock, R&B', 183.9),
        (1, 'Madonna', 'USA', '1979-2017', 'Pop, Dance', 170.5),
      (1, 'Elton John', 'UK', '1964-2017', 'Pop, Rock', 167.6),
      (1, 'Led Zeppelin', 'UK', '1968-1980', 'Hard Rock, Blues, Folk Rock', 139.5),
      (1, 'Pink Floyd', 'UK', '1965-1996', 'Progressive Rock, Psychedelic Rock', 118.7);
      
SELECT DISTINCT music.artist AS Artist, musician.'total units sold', musician.'period active', music.albumname AS 'Best Selling Album' FROM MUSIC
JOIN Musician ON Musician.artist = Music.artist;