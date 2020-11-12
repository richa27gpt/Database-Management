

--1.Create a list of user IDs that contains the first four letters of the ename and the last three numbers of their manager number 
----(column mgr), concatenated together with a dash in between. The output should be formatted like this: SMIT-902, ALLE-698 … (and so on)
Select substr(ename, 1, 4) || '-' || substr(mgr, 2, 3) from emp e;

--2. Find the number of years each employee has worked at the company, you should show the results as whole years.
Select ename, ( months_between(sysdate, hiredate) / 12 ) years from emp;

--3. Display a list of employee names, their hiredates and the date on which they will have been with the company for 20 years.
Select ename, hiredate, Add_months(hiredate, 20*12) YDay  from emp;

--4. Write the SQL that displays a list of employees and date they were hired. Format the date so it displays the four figure year first,  
----followed by the month written in full (i.e. July) and then lastly the day, written as a number (i.e. 10).
Select ename, to_char(hiredate, 'YYYY MONTH DD' ) from emp;

--5. Write a query that displays the last three letters of the ename.
Select ename, substr(ename, -3 ) from emp;