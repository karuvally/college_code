DECLARE
    previous_number number := 0;
    current_number number := 1;
    temp number;
    limit number;
    i number := 1;
    number_of_lines number;

BEGIN
    limit := &Limit;

    dbms_output.put_line(previous_number);
    loop
        exit when i > limit;
        DBMS_OUTPUT.put_line(current_number);
        temp := current_number;
        current_number := current_number + previous_number;
        previous_number := temp;
        i := i + 1;
    end loop;

end;
/
