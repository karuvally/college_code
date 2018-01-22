CREATE OR REPLACE TRIGGER newtrigger
BEFORE INSERT ON Product_master_aswin 
FOR EACH ROW 
DECLARE 
prp product_master_aswin.profit_percent%type; 
BEGIN
Select MAX(profit_percent) into prp from product_master_aswin;
if(:NEW.profit_percent < prp) then
  RAISE_APPLICATION_ERROR( -20001,'New profit percent must be greater than Maximum profit percent' );
end if;
end;
/ 

/*Trigger created.*/

