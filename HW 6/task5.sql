SELECT 
    s.first_name,
    s.surname,
    b.bill_date,
    COUNT(b.bill_no) AS number_of_bills
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY b.waiter_no, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

SELECT 
    t.room_name,
    COUNT(t.table_no) AS number_of_tables
FROM restRest_table t
WHERE t.no_of_seats > 6
GROUP BY t.room_name;


SELECT 
    rm.room_name,
    SUM(b.bill_total) AS total_bills
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
GROUP BY rm.room_name;

SELECT 
    s.first_name AS headwaiter_first_name, 
    s.surname AS headwaiter_surname,
    SUM(b.bill_total) AS total_bill_amount
FROM restRoom_management rm
JOIN restStaff s ON rm.headwaiter = s.staff_no
JOIN restBill b ON b.waiter_no = rm.headwaiter
WHERE b.bill_date = rm.room_date
GROUP BY rm.headwaiter
ORDER BY total_bill_amount DESC;

SELECT 
    b.cust_name,
    AVG(b.bill_total) AS average_spent
FROM restBill b
GROUP BY b.cust_name
HAVING AVG(b.bill_total) > 400;

SELECT 
    s.first_name, 
    s.surname,
    b.bill_date,
    COUNT(b.bill_no) AS number_of_bills
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY b.waiter_no, b.bill_date
HAVING COUNT(b.bill_no) >= 3;
