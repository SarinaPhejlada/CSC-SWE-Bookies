DROP DATABASE IF EXISTS book_review;
CREATE DATABASE IF NOT EXISTS book_review;
USE book_review;

DROP TABLE IF EXISTS book,
					 bood_id,
                     users,
                     customerInfo;
                     
CREATE TABLE users (
    userName	varchar(50)   	NOT NULL,
    pass		varchar(50)		Not null,	
    PRIMARY KEY (userName)
);


CREATE TABLE book (
    ISBN	int(50)   	unique NOT NULL,
    book_title		varchar(50)		Not null,	
	publish_date int(50)   	NOT NULL,
    star_review		int(50)		Not null,
    PRIMARY KEY (ISBN)
);

CREATE TABLE customerInfo (
    userName	varchar(24)   	unique		NOT NULL,
    fName   	varchar(12) 	not null,
    lName		varchar(12) 	not null,
    birthDay	date			not null,
    foreign key (userName) references users (userName),
    PRIMARY KEY (userName)
);

CREATE TABLE book_id (
    ISBN	int(50)   	unique		NOT NULL,
    book_id   	int(12)  unique	not null,
    amazon		varchar(100) 	not null,
    ebay		varchar(100)	not null,
	barnes_noble		varchar(100) 	not null,
    walmart		varchar(100)	not null,
	NPR		varchar(100) 	not null,
    foreign key (ISBN) references book (ISBN),
    PRIMARY KEY (book_id)

);