# Object-Idetifiers&Ref-Types
>  Every row object in an object table has an associated logical object identifier(OID).
>  Oracle assigns an unique system - generated identifiers
>  OID columns are hidden columns.
>  You cannot access directly Object but you can access data via references(REF).

References to Row Objects
============================
> A ref is a logical object that access directly data of the Object.

**SQL-Query:**

create type theater_t as object (
	tno number(4),
    tname varchar2(10),
    address varchar2(20),
    phone number(10)
);
