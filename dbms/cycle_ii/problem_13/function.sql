set serveroutput on size 30000;
DECLARE
	month integer :=&month;
	total_billed number;
BEGIN
	total_billed := fun1(month);
	dbms_output.put_line('Sum total of all billed orders of the given month:'||'   '||total_billed);
	end;
/
