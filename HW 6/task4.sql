SELECT DISTINCT b.cust_name
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE b.bill_total > 450.00
  AND s.first_name = 'Charles'
  AND s.surname = 'Watson';


SELECT s.first_name, s.surname
FROM restRoom_management rm
JOIN restBill b ON rm.room_name = (SELECT room_name FROM restRest_table WHERE table_no = b.table_no)
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE b.cust_name = 'Nerida Smith'
  AND b.bill_date = 160111;


SELECT b.cust_name
FROM restBill b
WHERE b.bill_total = (
    SELECT MIN(bill_total)
    FROM restBill
);

SELECT s.first_name, s.surname
FROM restStaff s
LEFT JOIN restBill b ON s.staff_no = b.waiter_no
WHERE b.waiter_no IS NULL;

SELECT 
    b.cust_name, 
    s.first_name AS headwaiter_first_name, 
    s.surname AS headwaiter_surname, 
    rm.room_name
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE b.bill_total = (
    SELECT MAX(bill_total) FROM restBill
);

