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
where name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

#The genre for the album Nevermind
select genre
from albums
where name = 'Nevermind';

#Which albums were released in the 1990s
select *
from albums
where release_date between 1990 and 1999;
#also
select artist
from albums
where release_date like '199%';

#Which albums had less than 20 million certified sales
select *
from albums
where sales < 20;

#commas seperate words must be pulled up by commas as well All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
# or
select *
from albums
where genre like '%rock%';
#will pull up any genre containing rock
