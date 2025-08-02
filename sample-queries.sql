-- ดึงข้อมูลการจองทั้งหมด 
SELECT * FROM bookings;

-- หาห้องที่ถูกจองมากที่สุด 
SELECT room_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY room_id
ORDER BY total_bookings DESC
LIMIT 1;

-- หาการจองที่ยังไม่ได้ยืนยัน 
SELECT * FROM bookings
WHERE status = 'pending';

-- ค้นหาข้อมูลลูกค้าจากอีเมล 
SELECT * FROM customers
WHERE email = 'example@email.com';
