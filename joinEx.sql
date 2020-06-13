----- Ex 1 a-------
select J.START_DATE, E.F_NAME
from EMPLOYEES E
inner join JOB_HISTORY J
on E.EMP_ID = J.EMPL_ID
where E.DEP_ID = 5

----- Ex 1 b -------
select E.F_NAME, E.L_NAME, JH.START_DATE, J.JOB_TITLE
from EMPLOYEES E
inner join JOB_HISTORY as JH
on E.EMP_ID = JH.EMPL_ID
inner join JOBS as J 
on E.JOB_ID = J.JOB_IDENT
where E.DEP_ID = 5

----- Ex 2 a -------
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES as E
left outer join DEPARTMENTS as D
on E.DEP_ID = D.DEPT_ID_DEP

----- Ex 2 b -------
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES as E
inner join DEPARTMENTS as D
on E.DEP_ID = D.DEPT_ID_DEP
where YEAR(E.B_DATE) < 1980

----- Ex 2 c -------
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES as E
left outer join DEPARTMENTS as D
on E.DEP_ID = D.DEPT_ID_DEP
and YEAR(E.B_DATE) < 1980

----- Ex 3 a -------
select E.F_NAME, E.L_NAME, D.DEP_NAME
from EMPLOYEES as E
full join DEPARTMENTS as D
on E.DEP_ID = D.DEPT_ID_DEP

----- Ex 3 b -------
select E.F_NAME, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES as E
full join DEPARTMENTS as D
on E.DEP_ID = D.DEPT_ID_DEP
and E.SEX = 'M'
