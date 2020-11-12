


--1. Try running the following query:
Select empno, ename, dname FROM emp, dept;
--What happens and why and how do you stop it from happening?
--Ans. All the employees (14) got linked for all the 4 departments because there was no where clause to connect both the tables together.

--2. Write the SQL to list all employees and the name of the department they work in. (This should be the correct version of the query in Question 1)
Select empno, ename, dname from emp, dept where emp.deptno = dept.deptno;

--3. Modify the above to show all employees, even those that are not assigned to a department.
Select empno, ename, dname from emp, dept where emp.deptno = dept.deptno or emp.deptno is null;

--4. Display the name, location and department name of employees whose salary is greater than 1500.
select e.ename, d.loc, d.dname from emp e join dept d on e.deptno = d.deptno where e.sal > 1500;

--5. Find the name and salary of employees in the location Dallas.
select e.ename, e.sal from emp e join dept d on e.deptno = d.deptno where loc = 'DALLAS';

--6. Display employee name, department name, salary, a 25% increase of salary and the new salary value for all employees. Each of the calculated columns should have an appropriate column heading.
select ename, dname, sal, sal / 4 Increase,  sal/4  + sal NewSal
from emp , dept where emp.deptno = dept.deptno;