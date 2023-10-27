# Object-Idetifiers&Ref-Types
>  Every row object in an object table has an associated logical object identifier(OID).
>  Oracle assigns an unique system - generated identifiers
>  OID columns are hidden columns.
>  You cannot access directly Object but you can access data via references(REF).

References to Row Objects
============================
> A ref is a logical object that access directly data of the Object.

**SQL-Query:**
> Create type of theaters.

create type theater_t as object (
	tno number(4),
    tname varchar2(10),
    address varchar2(20),
    phone number(10)
);

create table Theaters of theater_t;

insert into Theaters values(1, 'CityPride' , 'KCNagar', 223344);
insert into Theaters values(2, 'IMAX' , 'MCNagar', 223344);

create table NowShowing(
    movie_id number(4),
    theater ref theater_t scope is Theaters,
    mstart date,
    mend date
);

insert into NowShowing values(
    1,(select ref(t) from Theaters t where t.tno = 1),
    '12-May-2010','18-May-2010'
);
insert into NowShowing values(
    2,(select ref(t) from Theaters t where t.tno = 2),
    '13-May-2010','15-May-2010'
);
insert into NowShowing values(
    3,(select ref(t) from Theaters t where t.tno = 1),
    '12-May-2010','18-May-2010'
);
insert into NowShowing values(
    4,(select ref(t) from Theaters t where t.tno = 2),
    '2-May-2010','8-May-2010'
);
insert into NowShowing values(
    5,(select ref(t) from Theaters t where t.tno = 1),
    '12-May-2010','28-May-2010'
);

select n.movie_id, n.theater.tname from NowShowing n;
