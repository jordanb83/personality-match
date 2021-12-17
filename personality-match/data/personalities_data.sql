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
from 'personality-match\data\personality-data.csv'
with (
  format='CSV',
  firstrow=2
);

select count(notable_figure) as total_notable_figures from Personalities;
select count(mbti_evsi) as total_extroverts from Personalities where mbti_evsi = 'E';
select count(mbti_evsi) as total_introverts from Personalities where mbti_evsi = 'I';
select count(mbti_svsn) as total_sensers from Personalities where mbti_evsi = 'S';
select count(mbti_svsn) as total_intuitives from Personalities where mbti_evsi = 'N';
select count(mbti_tvsf) as total_thinkers from Personalities where mbti_evsi = 'T';
select count(mbti_tvsf) as total_feelers from Personalities where mbti_evsi = 'F';
select count(mbti_pvsj) as total_perceptives from Personalities where mbti_evsi = 'P';
select count(mbti_pvsj) as total_judgers from Personalities where mbti_evsi = 'J';
