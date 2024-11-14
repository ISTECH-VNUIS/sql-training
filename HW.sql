CREATE DATABASE ISTECH
USE ISTECH
CREATE TABLE ORDERS (
    order_num DECIMAL(6,0),
    order_date DATE,
    order_quantity INT,
    discount DECIMAL(5,4),
    item_id CHAR(6),
    customer_id CHAR(6),
    store_id CHAR(6),
    PRIMARY KEY (order_num)
);

CREATE TABLE ITEMS(
item_id CHAR(6),
item_name VARCHAR(40),
item_price INT,
)
CREATE TABLE STORES
(
store_id CHAR(6),
store_name VARCHAR(40),
province NVARCHAR(40)
)
CREATE TABLE CUSTOMERS
(customer_id CHAR(6),
customer_name NVARCHAR(40),
customer_country NVARCHAR(40),
customer_phone VARCHAR(17),
grade INT)