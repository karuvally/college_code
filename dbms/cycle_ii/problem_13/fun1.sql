CREATE or REPLACE FUNCTION fun1(month in integer) 
RETURN number
IS
    total_billed number;
BEGIN
    select sum(qty_ordered*product_rate) as SUM into total_billed from sales_order15 S, sales_order_details15 SD where SD.Order_no=S.Order_no and billed_yn='Y' and EXTRACT(MONTH FROM order_date)=month;
    return total_billed;
END;
/

/*
SQL> @fun1

Function created.

SQL> @fun11
Enter value for month: 2
old   2: 	month integer :=&month;
new   2: 	month integer :=2;
Sum total of all billed orders of the given month:   9450

PL/SQL procedure successfully completed.
*/
