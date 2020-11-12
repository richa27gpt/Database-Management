-------Unit:6 Tasks

--1.Count the number of employees doing each job. You should display both the job title and the number of employees who do that job.
Select job, count(empno) from emp group by job;

--2.List the average salary for a department. You should display the name of the department and the average salary.
Select dname, avg(sal)
from dept d, emp e 
where d.deptno = e.deptno GROUP BY dname;

--3.Amend the previous query to find the average salary for each job, in each department. You should display the department name, the job title and the average salary.
Select dname, job, avg(sal)
from dept d, emp e 
where d.deptno = e.deptno GROUP BY dname, job;

--4.Find the minimum and maximum salary for each job. You should display the job title, the maximum salary and the minimum salary.
Select job, max(sal), min(sal) from emp group by job;

--5.Find the minimum and maximum salaries for those jobs where the average salary is greater than £2000.
Select job, max(sal), min(sal) from emp GROUP BY job HAVING avg(sal) > 2000 ;

--6.For each location, show the number of employees, the average salary and total monthly wage bill. Order the results in descending order of average salary.
Select loc, count(empno), avg(sal), sum(sal) 
from emp e,dept d
where e.deptno = d.deptno
group by loc order by avg(sal) desc;

--7.How many hammers are in stock? You should display the stock description and the total quantity of all hammers in stock.
Select stock_desc, sum(qty)
from product p, stock_qty q
where q.stock_no = p.stock_no
and p.stock_desc = 'HAMMER' group by stock_desc;

--8.Show the total value of stock for each product. You should display the stock description, the number of the products in 
----stock, and the value of that stock, i.e. quantity multiplied by price.
Select stock_desc, sum(qty) stock, sum(a.qty*b.price) value
from stock_qty a, product b
where b.stock_no = a.stock_no GROUP BY stock_desc;

--9.Calculate the total price after discount of all Stanley products. You should display the supplier name, the stock 
----description, the discount, the price and the price after discount.
Select supplier_name, stock_desc, discount, price, (price-(price*discount/100)) final
from supplier a, product b, stock_qty c
WHERE a.supplier_no = c.supplier_no
and b.stock_no = c.stock_no
and a.supplier_name = 'STANLEY';