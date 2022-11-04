-- !! NOTE !! Create database tables using TableCreation if not created.
-- This file deals with entering dummy data in the tables.
use dbms_project_rms;

insert into employee(employee_id, nationality, mobile, address) values (1, 'Indian', '123456789', 'Dummy Address'), (2, 'African', '123456789', 'Dummy Address'), (3, 'Indian', '952853986', 'Dummy Address');

insert into customer(customer_id, name, email, mobile) values (1, 'John', 'johndoe@gmail.com', '123456789'), (2, 'Noah', 'nono@gmail.com', '2975322762'), (3, 'Test', 'test@gmail.com', '123456789');

insert into designation(designation_id, designation_name, salary) values (1, 'Sales Lead', 10000), (2, 'Sales Intern', 1000), (3, 'Sales VP', 50000);

insert into member(member_id, total_spent, total_discount, date_joined, customer_id) values (1, 5000, 500, '2020-01-01', 1), (2, 1000, 200, '2020-01-01', 3), (3, 50000, 10000, '2020-01-01', 2);

insert into booking(booking_id, date, time, number_of_people, customer_id) values (1, '2020-01-01', '1971-01-01 00:00:01', 10, 1), (2, '2020-01-01', '1971-01-01 00:00:01', 2, 2), (3, '2020-01-01', '1971-01-01 00:00:01', 5, 1);

insert into orders(order_id, food_price, taxes, total_bill, customer_id) values (1, 100, 10, 110, 1), (2, 200, 10, 210, 2), (3, 1000, 100, 1100, 1);

insert into ingredient(ingredient_id, name, price) values (1, 'Soya', 10), (2, 'Rajma', 20), (3, 'Rice', 10);

insert into dish(dish_id, name, price) values (1, 'Rice Balls', 100), (2, 'SoyaBean', 200), (3, 'Steamed Rice', 50);

insert into emp_des(employee_id, designation_id) values (1,1), (1, 2), (2, 1);
insert into order_dish(order_id, dish_id) values (1,1), (1, 2), (2, 1);
insert into dish_ingred(dish_id, ingredient_id) values (1,1), (1, 2), (2, 1);
