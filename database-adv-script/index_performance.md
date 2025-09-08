EXPLAIN ANALYZE
SELECT u.user_id, u.first_name, COUNT(b.booking_id) AS total_bookings
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.status = 'confirmed'
GROUP BY u.user_id, u.first_name
ORDER BY total_bookings DESC;