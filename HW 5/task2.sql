SELECT SUM(bill_total) AS Income 
FROM restBill;

SELECT SUM(bill_total) AS Income 
FROM restBill
WHERE bill_date LIKE '1602%';

SELECT AVG(bill_total) 
FROM restBill 
WHERE table_no = '2';

SELECT MAX(no_of_seats) AS Max, MIN(no_of_seats) AS Min, AVG(no_of_seats) Avg 
FROM restRest_table 
WHERE room_name = 'blue';

SELECT COUNT(DISTINCT table_no) 
FROM restBill 
WHERE waiter_no = '4' OR '2';