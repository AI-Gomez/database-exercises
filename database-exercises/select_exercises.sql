show databases;
use albums_db;
describe albums;

select name from albums;

#The name of all albums by Pink Floyd
select name
from albums
where artist = 'Pink Floyd';

#The year Sgt. Pepper's Lonely Hearts Club Band was released aliassssss
select release_date 
from albums 
where id = 15;

#The genre for the album Nevermind
select genre
from albums
where name = 'Nevermind';

#Which albums were released in the 1990s
select *
from albums
where release_date between 1990 and 1999;

#Which albums had less than 20 million certified sales
select *
from albums
where sales < 20;

#commas seperate words must be pulled up by commas as well