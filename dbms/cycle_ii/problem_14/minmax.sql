CREATE OR REPLACE PROCEDURE minmax15
  
	IS
		m1 number;
		m2 number;
		
   
	BEGIN

		SELECT min(sell_price),max(sell_price) INTO m1,m2 FROM product_master15;
		dbms_output.put_line(' Minimum of product price : ' || m1 ||' Maximum of product price: '||m2);
		
		
	
	END;

/
