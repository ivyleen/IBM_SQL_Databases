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

