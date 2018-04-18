set serveroutput on size 30000;

DECLARE
    name varchar(15);
    address_1 varchar(100);
    address_2 varchar(100);
    bal_due number;

    cursor client_cursor is
        select name, address_1, address_2, bal_due
        from clientmaster_aswin
        where state = 'Maharashtra';

BEGIN
    open client_cursor;
    loop
        fetch client_cursor into name, address_1, address_2, bal_due;

        exit when client_cursor%notfound;

        dbms_output.put_line(name || ' ' || address_1 || ' ' || address_2 || ' ' ||
        bal_due);
    end loop;
    close client_cursor;

END;
/
