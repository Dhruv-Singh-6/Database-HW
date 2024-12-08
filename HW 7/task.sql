CREATE VIEW samsBills AS
SELECT 
    rs.first_name,
    rs.surname,
    rb.bill_date,
    rb.cust_name,
    rb.bill_total
FROM 
    restBill rb
JOIN 
    restStaff rs ON rb.waiter_no = rs.staff_no
WHERE 
    rs.first_name = 'Sam' AND rs.surname = 'Pitt';

SELECT *
FROM samsBills
WHERE bill_total > 400;

CREATE VIEW roomTotals AS
SELECT 
    rm.room_name,
    SUM(rb.bill_total) AS total_sum
FROM 
    restRoom_management rm
JOIN 
    restBill rb ON rm.headwaiter = rb.waiter_no
GROUP BY 
    rm.room_name;


CREATE VIEW teamTotals AS
SELECT 
    CONCAT(rs.first_name, ' ', rs.surname) AS headwaiter_name,
    SUM(rb.bill_total) AS total_sum
FROM 
    restStaff rs
JOIN 
    restBill rb ON rs.staff_no = rb.waiter_no
GROUP BY 
    rs.staff_no, rs.first_name, rs.surname;
