SET profiling = 1;
SELECT * 
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id
WHERE b.status = 'confirmed';
SHOW PROFILE FOR QUERY 1;