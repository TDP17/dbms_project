-- Example queries
SELECT * FROM employee;

SELECT * FROM designation WHERE salary > 5000;

SELECT member.member_id FROM member INNER JOIN customer ON member.id = customer.id;

SELECT sum(total_bill) FROM orders INNER JOIN customer on orders.customer_id=customer.customer_id GROUP BY customer.customer_id;