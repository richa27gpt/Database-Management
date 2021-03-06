-------Unit:1 Tasks

--1.What are the purposes (there is more than one) of the * symbol in a SELECT statement?
--Ans. To select all the records in that table.

--2.What is the purpose of the % and _ symbols in a LIKE statement?
--Ans. % is wildcard expression which means - any number of charavter. _ is specific umber of character. 1 underscore means 1 character.

--3.Write the SQL to list all the employees whose salary is between 1000 and 2000.
Select * from emp;-- where sal BETWEEN 1000 AND 2000;

--4.Write the SQL to display each of the different types of occupation (i.e. each occupation only once).
select DISTINCT job FROM emp;

--5.Write the SQL to display all the employees who were recruited during 1983 giving their name, department number and hire date.
Select ename, deptno, hiredate from emp where hiredate like '__-__-83';

--6.Write the SQL to find the names, jobs and salaries of all employees who do not have managers.
Select ename, job, sal from emp WHERE mgr is null;

--7.Write the SQL to list the jobs and department numbers of employees whose names ends with S.
Select job, deptno from emp where ename like '%S';

--8.Find the employees who are not managers or the president .
select ename from emp where job not in ( 'PRESIDENT' , 'MANAGER' );  --<> 'PRESIDENT' AND job <> 'MANAGER' ;

--9.Work out what percentage of salary the commission is for an employee who earns commission.
select comm*100/sal from emp where comm is not null;

--10.List the deptno, name, job and salary of all employees, firstly in deptno order and then in salary order, showing the highest salary for each department first.
select deptno, ename, job, sal from emp ORDER BY deptno , sal desc;