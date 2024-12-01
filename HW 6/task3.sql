SELECT DISTINCT s.first_name, s.surname
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE b.cust_name = 'Tanya Singh’;

SELECT room_date
FROM restRoom_management
WHERE room_name = 'Green'
AND headwaiter = (SELECT staff_no FROM restStaff WHERE first_name = 'Charles' AND surname = 'Watson')
AND room_date BETWEEN '2016-02-01' AND ‘2016-02-29';

SELECT first_name, surname 
FROM restStaff 
WHERE headwaiter = ( SELECT headwaiter FROM restStaff WHERE first_name = 'Zoe' AND surname = 'Ball' )

SELECT b.cust_name, b.bill_total, s.first_name AS waiter_first_name, s.surname AS waiter_surname 
FROM restBill b 
JOIN restStaff s ON b.waiter_no = s.staff_no 
ORDER BY b.bill_total DESC;

SELECT DISTINCT s.first_name, s.surname 
FROM restBill b 
JOIN restStaff s ON b.waiter_no = s.staff_no 
WHERE b.table_no IN ( SELECT table_no FROM restBill WHERE bill_no IN (00014, 00017)

SELECT DISTINCT s.first_name, s.surname
FROM restRoom_management rm
JOIN restBill b ON rm.room_name = 'Blue' AND rm.room_date = 160312
JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE rm.headwaiter = s.staff_no
   OR b.table_no IN (
       SELECT table_no
       FROM restRest_table
       WHERE room_name = 'Blue');

