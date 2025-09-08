-- Before adding indexes (slow)
EXPLAIN ANALYZE
SELECT u.user_id, u.first_name, COUNT(b.booking_id)
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.status = 'confirmed'
GROUP BY u.user_id, u.first_name;

-- After running database_index.sql (faster)
EXPLAIN ANALYZE
SELECT u.user_id, u.first_name, COUNT(b.booking_id)
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.status = 'confirmed'
GROUP BY u.user_id, u.first_name;