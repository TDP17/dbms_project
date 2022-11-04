-- This file deals with creating the database and the tables.
create database dbms_project_rms;

use dbms_project_rms;

-- Primary Tables
create table employee (
  employee_id int primary key,
  nationality varchar(255),
  mobile varchar(20),
  address varchar(255)
);

create table customer (
	customer_id int primary key,
    name varchar(255),
    email varchar(255),
    mobile varchar(20)
);

create table designation (
  designation_id int primary key,
  designation_name varchar(255),
  salary int
);

create table member (
	member_id int primary key,
	total_spent int,
	total_discount int,
	date_joined	datetime,
    customer_id int references customer(customer_id)
);

create table booking (
	booking_id int primary key,
	date datetime,
	time timestamp,
	number_of_people int,
    customer_id int references customer(customer_id)
);

create table orders (
	order_id int primary key,
	food_price int,
	taxes int,
	total_bill int,
    customer_id int references customer(customer_id)
);

create table ingredient (
	ingredient_id int primary key,
	name varchar (255),
	price int
);

create table dish (
	dish_id int primary key,
	name varchar (255),
	price int
);

-- Auxilliary Table for m-n of employee-designation.
create table emp_des (
	employee_id int references employee(employee_id),
    designation_id int references designation(designation_id),
    primary key (employee_id, designation_id)
);

-- Auxilliary Table for m-n of order-dish.
create table order_dish (
	order_id int references orders(order_id),
    dish_id int references dish(dish_id),
    primary key (order_id, dish_id)
);

-- Auxilliary Table for m-n of dish-ingredient.
create table dish_ingred (
	dish_id int references dish(dish_id),
    ingredient_id int references ingredient(ingredient_id),
    primary key (dish_id, ingredient_id)
);