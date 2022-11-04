-- This file deals with the functions, procedures and triggers for the tables
use dbms_project_rms;

-- This procedure returns if a customer is a member or not
DROP FUNCTION IF EXISTS isMember;
DELIMITER $$
CREATE FUNCTION isMember (m_id int)
RETURNS boolean
DETERMINISTIC 
BEGIN
    DECLARE is_member boolean;
    DECLARE member_found_id int default -1;
    select member_id from member where customer_id=m_id into member_found_id;
    if member_found_id=-1 then
		set is_member = false;	
	else 
		set is_member = true;
	end if;
    RETURN is_member; 
END$$
DELIMITER ;
;
select isMember(1);

-- This procedure shows employees by designation
DROP procedure IF EXISTS `emp_by_designation`;
DELIMITER $$
CREATE PROCEDURE `emp_by_designation`(in designation_var varchar(255))
BEGIN
	select employee.employee_id, nationality, mobile, address, designation.designation_id, designation.designation_name, salary from emp_des inner join employee on emp_des.employee_id=employee.employee_id inner join designation on emp_des.designation_id=designation.designation_id having designation_name=designation_var;
END$$
DELIMITER ;
;
call emp_by_designation('Sales Lead');

-- This trigger ensures final price of order = food_price + taxes
DELIMITER $$
drop trigger if exists ordersEnsureFinalPrice$$
create trigger ordesrMatchFinalPrice
before insert
on orders for each row
BEGIN
	SET NEW.total_bill = NEW.food_price + NEW.taxes;  
END$$
DELIMITER ;
;