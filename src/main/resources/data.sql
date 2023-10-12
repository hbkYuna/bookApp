insert into BOOK (TITLE) values ('Oryx and Crake'); /*1*/
insert into BOOK (TITLE) values ('The year of the flood');/*2*/
insert into BOOK (TITLE) values ('MaddAddam');/*3*/
insert into BOOK (TITLE) values ('1Q84');/*4*/
insert into BOOK (TITLE) values ('De opwindvogelkronieken');/*5*/
insert into BOOK (TITLE) values ('Design Patterns');/*6*/

insert into AUTHOR (NAME) values ('Margaret Atwood'); /*1*/
insert into AUTHOR (NAME) values ('Haruki Murakami'); /*2*/
insert into AUTHOR (NAME) values ('Erich Gamma'); /*3*/
insert into AUTHOR (NAME) values ('Richard Helm'); /*4*/
insert into AUTHOR (NAME) values ('Ralph Johnson'); /*5*/
insert into AUTHOR (NAME) values ('John Vlissides'); /*6*/

insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (1, 1);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (2, 1);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (3, 1);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (4, 2);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (5, 2);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (6, 3);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (6, 4);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (6, 5);
insert into BOOK_AUTHORS (BOOKS_ID, AUTHORS_ID) values (6, 6);

insert into GENRE(NAME)values ('fantasy');
insert into GENRE(NAME)values ('non-fiction');
insert into GENRE(NAME)values ('programming');

INSERT INTO BOOKSUSER (USERNAME, PASSWORD, ROLE)
VALUES ('admin', '$2a$10$9MIX8kYPkuB7uE/H5nHF8.KG6.YdjBA/voOnjSZnZDxLXL/2BIerS', 'ADMIN'); -- admin

INSERT INTO BOOKSUSER (USERNAME, PASSWORD, ROLE)
VALUES ('marie', '$2a$10$9TeBFudS7HsgCa4sSvP//O627sMq.KiTFrOr8IzrVlYw5c8aoKzNm', 'USER'); -- password

INSERT INTO BOOKSUSER (USERNAME, PASSWORD, ROLE)
VALUES ('vera', '$2y$12$KF3spKP4kgf59.6zYkmjyeYaW2.4ZxV16Grpw1FPsFnzYq68kswJ6', 'USER'); -- vera


insert into AWARD(TITLE, INFO, COUNTRY)
values ('Nobel Prize in Literature',
        'The Nobel Prize in Literature (here meaning for literature) is a Swedish literature prize that is awarded annually, since 1901, ' ||
        'to an author from any country who has, in the words of the will of Swedish industrialist Alfred Nobel, "in the field of literature, ' ||
        'produced the most outstanding work in an idealistic direction" (original Swedish: den som inom litteraturen har producerat det utmärktaste i idealisk rigtning). ' ||
        'Though individual works are sometimes cited as being particularly noteworthy, the award is based on an author''s body of work as a whole. ' ||
        'The Swedish Academy decides who, if anyone, will receive the prize. The academy announces the name of the laureate in early October. ' ||
        'It is one of the five Nobel Prizes established by the will of Alfred Nobel in 1895. ' ||
        'Literature is traditionally the final award presented at the Nobel Prize ceremony. ' ||
        'On some occasions the award has been postponed to the following year, most recently in 2018 as of May 2022.',
        'Sweden');
insert into AWARD(TITLE, INFO, COUNTRY)
values ('The Paris Literary Prize',
        'The Paris Literary Prize was a biennial literary prize for unpublished novellas by new authors from anywhere in the world. ' ||
        'It was founded in 2010 by the Paris-based Shakespeare and Company bookstore, and sponsored in collaboration with the de Groot Foundation. ' ||
        'The €10,000 prize was for authors who had never published a book before, and their submission is a novella, defined as 20,000 to 30,000 words in length. ' ||
        'The first winner was announced on 16 June 2011. After two awards it went into hiatus, saying "We''d love to hold another edition of the prize at some point, ' ||
        'but we are unable to fix a date at this time."',
        'France');
insert into AWARD(TITLE, INFO, COUNTRY)
values ('Dayton Literary Peace Prize',
        'The Dayton Literary Peace Prize is an annual United States literary award "recognizing the power of the written word to promote peace" that was first awarded in 2006. ' ||
        'Awards are given for adult fiction and non-fiction books published at some point within the immediate past year that have led readers to a better understanding of other peoples, ' ||
        'cultures, religions, and political views, with the winner in each category receiving a cash prize of $10,000. ' ||
        'The award is an offshoot of the Dayton Peace Prize, which grew out of the 1995 peace accords ending the Bosnian War. ' ||
        'In 2011, the former "Lifetime Achievement Award" was renamed the Richard C. Holbrooke Distinguished Achievement Award with a $10,000 honorarium.',
        'United States');


insert into BOOK_AWARDS (BOOKS_ID, AWARDS_ID) values (1, 1);
insert into BOOK_AWARDS (BOOKS_ID, AWARDS_ID) values (1, 2);
insert into BOOK_AWARDS (BOOKS_ID, AWARDS_ID) values (3, 3);


insert into AWARD(TITLE, INFO, COUNTRY)
values ('Pulitzer Prize', 'This is test info', 'United States');

insert into AWARD(TITLE, INFO, COUNTRY)
values ('Booker Prize', 'This is test info', 'test_land');

insert into AWARD(TITLE, INFO, COUNTRY)
values ('Nobel Prize in Literature', 'This is test info', 'Sweden');

insert into AWARD(TITLE, INFO, COUNTRY)
values ('Hugo Award', 'This is test info', 'Engeland');

insert into AWARD(TITLE, INFO, COUNTRY)
values ('Nebula Award', 'This is test info', 'China');

insert into AWARD(TITLE, INFO, COUNTRY)
values ('Confituur Bookstores'' Prize', 'This is test info', 'Belgium');

insert into AWARD(TITLE, INFO, COUNTRY)
values ('Gouden Uil', 'This is test info', 'Netherlands');


insert into BOOK_AWARDS (BOOKS_ID, AWARDS_ID) values (1, 1);
insert into BOOK_AWARDS (BOOKS_ID, AWARDS_ID) values (1, 2);
insert into BOOK_AWARDS (BOOKS_ID, AWARDS_ID) values (3, 3);
