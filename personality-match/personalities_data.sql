create database personalities
create table Personalities (
  notable_figure varchar2(150),  
  mbti_evsi varchar2(1), 
  mbti_svsn varchar2(1), 
  mbti_tvsf varchar2(1), 
  mbti_pvsj varchar2(1), 
  enneagram varchar2(3), 
  instinct_variant varchar2(5)
);

insert into Personalities
from 'personality-match\personality-data.csv'
with (
  format='CSV',
  firstrow=2
);
