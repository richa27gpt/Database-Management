

--1) List the Empno, Ename and Job of all the employees who have the same job as Jones.
Select empno, ename, job from emp where job = (select job from emp where ename = 'JONES');

--2) List the Empno, Ename and Sal of all the employees who earn more than Jones. Order the list alphabetically on Ename.
Select empno, ename, sal from emp where sal > (select sal from emp where ename = 'JONES') order by ename;

--3) List the Empno, Ename, Job and DeptNo of all employees who have the same jobs as employees located in Chicago. HINT – you 
-----will need to join tables EMP and DEPT in the sub-query.
Select empno, ename, job, deptno from emp where job in ( select job from emp e join dept d on e.deptno = d.deptno where loc = 'CHICAGO' ) order by ename;

--4) List employee name, job and salary for employees who have the same job and the same salary as Ford.
Select ename, job, sal from emp where job = ( select job from emp where ename = 'FORD' ) and sal = ( select sal from emp where ename = 'FORD' );

--5) List the Empno, Ename, Job and Sal of all the employees who have the same jobs as employees who earn more than Clark.
Select empno, ename, job, sal from emp where job in ( select job from emp where sal > ( select sal from emp where ename = 'CLARK' ) ) ;

--6) List all employees who earn less than the average salary for their particular job title. Show the jobs and salaries of each. 
-----Order the results by job. Check your result by constructing another query that lists the average salary for each job. All 
-----employees returned by your query should earn less than the average for their job.
select ename, job, sal from emp e where sal < ( select avg(sal) from emp where job = e.job) order by job; 
select job, avg(sal) from emp group by job;

--7) List Empno, Ename and Job for all employees who do not have anyone reporting to them (i.e. their Empno does not appear in 
-----anyone’s Mgr field). Order the result by Empno. Check that these Empnos do not appear anywhere in the Mgr column.
Select empno, ename, job from emp where mgr is null order by empno;

--8) List the department number and name of any departments that do not have employees. (NB. Example of using a sub-query instead of an outer join).
Select deptno, dname from dept where deptno not in ( select deptno from emp group by deptno);