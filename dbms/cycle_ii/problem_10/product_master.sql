DECLARE
    product_number varchar(6);
    retrieved_cost number;
    new_cost number;

BEGIN
    product_number := &product;
    select cost_price
    into retrieved_cost
    from product_master_aswin
    where product_no = product_number;

    if retrieved_cost >= 3000 then
        new_cost := retrieved_cost - 200;

        update product_master_aswin
        set cost_price = new_cost
        where product_no = product_number;

        dbms_output.put_line(new_cost);
    end if;

EXCEPTION
    when no_data_found then
        dbms_output.put_line('Invalid Product number');

END;
/
