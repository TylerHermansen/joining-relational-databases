select *
from district_2020 join district_2035
on district_2020.id = district_2035.id
order by district_2020.id;


select *
from district_2020 join district_2035
using (id)
order by district_2020.id;


select *
from district_2020 left join district_2035
on district_2020.id = district_2035.id
order by district_2020.id; 

select *
from district_2020 right join district_2035
on district_2020.id = district_2035.id
order by district_2035.id; 


Select * 
from district_2020 full outer join district_2035
on district_2020.id = district_2035.id
order by district_2020.id;

select *
from district_2020 cross join district_2035
order by district_2020.id, district_2035.id;

select * 
from district_2020 left join district_2035
on district_2020.id = district_2035.id
where district_2035.id is null;

select district_2020.id,
		district_2020.school_2020,
		district_2035
from district_2020 left join district_2035
on district_2020.id = district_2035.id
order by district_2020.id;

select d20.id,
		d20.school_2020,
		d35.school_2035
from district_2020 as d20 left join district_2035 as d35
on d20.id = d35.id
order by d20.id;




SELECT d20.id,
       d20.school_2020,
       en.enrollment,
       gr.grades
FROM district_2020 AS d20 JOIN district_2020_enrollment AS en
    ON d20.id = en.id
JOIN district_2020_grades AS gr
    ON d20.id = gr.id
ORDER BY d20.id;

select * from district_2020
union
select * from district_2035
order by id;

select * from district_2020
union all
select * from district_2035
order by id;

select '2020' as year, 
	school_2020 as school
from district_2020

union all 

select '2035' as year, 
	school_2035
from district_2035
order by school, year; 

select * from district_2020 
intersect
select * from district_2035
order by id; 

select * from district_2020 
except
select * from district_2035
order by id;