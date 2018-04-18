DECLARE
    largest_number number := 0;
    first_number number;
    second_number number;
    third_number number;

BEGIN
    first_number := &first_number;
    second_number := &second_number;
    third_number := &third_number;

    if first_number > largest_number then
        largest_number := first_number;
    end if;

    if second_number > largest_number then
        largest_number := second_number;
    end if;

    if third_number > largest_number then
        largest_number := third_number;
    end if;

    dbms_output.put_line(largest_number);
END;
/
