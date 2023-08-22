# MCA-SEM-I-ADBMS
college
open Live server on Oracle by login
if you get ERROR on it clear server

1)
create table dept(   
  deptno     number(2,0),   
  dname      varchar2(14),   
  loc        varchar2(13),   
  constraint pk_dept primary key (deptno)   
)
Table created.

2)
create table emp(   
  empno    number(4,0),   
  ename    varchar2(10),   
  job      varchar2(9),   
  mgr      number(4,0),   
  hiredate date,   
  sal      number(7,2),   
  comm     number(7,2),   
  deptno   number(2,0),   
  constraint pk_emp primary key (empno),   
  constraint fk_deptno foreign key (deptno) references dept (deptno)   
)
Table created.
Create the EMP table which has a foreign key reference to the DEPT table. The foreign key will require that the DEPTNO in the EMP table exist in the DEPTNO column in the DEPT table.

