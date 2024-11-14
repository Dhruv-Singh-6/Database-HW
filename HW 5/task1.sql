SELECT bill_date, bill_total 
FROM restbill 
WHERE cust_name = 'Bob Crow';

SELECT DISTINCT cust_name 
FROM restbill 
WHERE cust_name LIKE '%Smith' 
ORDER BY cust_name DESC;

SELECT DISTINCT cust_name 
FROM restbill 
WHERE cust_name 
LIKE '% C%';

SELECT first_name 
FROM restStaff 
WHERE headwaiter != 'NULL';

SELECT bill_no, bill_date, bill_total, cust_name, table_no, waiter_no 
FROM restBill 
WHERE bill_date LIKE '1602%';

SELECT DISTINCT bill_date 
FROM restBill 
WHERE bill_date LIKE '15%' 
ORDER BY bill_date ASC;