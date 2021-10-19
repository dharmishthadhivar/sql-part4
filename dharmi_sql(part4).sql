use ifadharmi1;
/*task 2*/
SELECT COUNT(deptId), FirstName
FROM persons
GROUP BY deptId
ORDER BY COUNT(deptId) DESC;

select * from persons;
select * from ifaemployee;

/*task 4*/
SELECT deptId, COUNT(PID) AS Number_of_persons
FROM persons
GROUP BY deptId
HAVING COUNT(PID) > 1;

/*task 5*/
select distinct deptId from persons;
SELECT deptId, COUNT(PID) AS Number_of_persons
FROM persons
GROUP BY deptId;

/*task 6*/
select FirstName 
from persons
 union 
 select FirstName 
 from ifaemployee;
 /*task 8*/
select FirstName
 from persons
 union all
 select FirstName from ifaemployee;

/*task 7*/
select City,COUNT(FirstName) AS Number_of_persons
from persons where Address='sanjan'  GROUP BY City having count(FirstName)>1 
union 
select City,COUNT(FirstName) AS Number_of_persons
 from ifaemployee GROUP BY City  having count(FirstName)>1       
 order by City ;

insert into department values(38,32,'sales',50000);
insert into department values(46,42,'sales',40000);
insert into department values(3,48,'sales',40000);
insert into department values(3,99,'sales',50000);

/*task 3*/
 select persons.PID, persons.deptId, FirstName,deptname,task_name,department.salary 
 from persons 
 inner join department 
 on persons.deptId=department.deptId 
 inner join task
 on task.personID=persons.PID 
 order by department.salary DESC LIMIT 1,1 ;

 
 explain analyze
 select persons.PID, persons.deptId, FirstName,deptname,task_name,max(department.salary)
 from persons 
 inner join department
 on persons.deptId=department.deptId 
 inner join task on task.personID=persons.PID
 where department.salary not in(select max(department.salary) from department);


