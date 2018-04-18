CREATE OR REPLACE TRIGGER pro_percent14 
BEFORE UPDATE ON Product_master_aswin
FOR EACH ROW 
WHEN (NEW.Profit_percent < OLD.Profit_percent)  
begin
  RAISE_APPLICATION_ERROR( -20001, 'New percentage must be greater than Old percentage' );
end;
/ 
