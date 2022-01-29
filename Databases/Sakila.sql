#11
create view MY_TEMP_TABLE2
AS
select last_name, count(last_name) countOf from actor
group by last_name



SELECT last_name FROM MY_TEMP_TABLE2
where countOf = 1



#12
select * from MY_TEMP_TABLE2
where countOf > 1