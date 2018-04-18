set serveroutput on size 30000;

declare
    product_no varchar(6);
    description varchar(100);
    profit_percent number;
    unit_measure varchar(15);
    qty_on_hand number;
    reorder_lvl number;
    sell_price number;
    cost_price number;

    cursor test_cursor is
        select * from product_master_aswin;

begin
    open test_cursor;
    loop
        fetch test_cursor into product_no, description, profit_percent,
        unit_measure, qty_on_hand, reorder_lvl, sell_price, cost_price;

        exit when test_cursor%notfound;

        dbms_output.put_line(product_no || ' ' || description || ' ' ||  profit_percent ||
        ' ' || unit_measure || ' ' || qty_on_hand || ' ' || reorder_lvl || ' ' ||  sell_price || ' ' || cost_price);
    end loop;
    close test_cursor;

end;
/
