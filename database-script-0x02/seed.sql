-- ========================================
-- SAMPLE DATA FOR USERS
-- ========================================
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hash1', '1234567890', 'guest'),
    ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hash2', '2345678901', 'host'),
    ('33333333-3333-3333-3333-333333333333', 'Carol', 'Lee', 'carol@example.com', 'hash3', '3456789012', 'admin');

-- ========================================
-- SAMPLE DATA FOR PROPERTIES
-- ========================================
INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight)
VALUES
    ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Cozy Cottage', 'A small cozy cottage in the woods.', 'Woodsville', 120.00),
    ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'City Apartment', 'Modern apartment in downtown.', 'Metropolis', 200.00);

-- ========================================
-- SAMPLE DATA FOR BOOKINGS
-- ========================================
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-09-10', '2025-09-15', 600.00, 'confirmed'),
    ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', '2025-10-01', '2025-10-05', 800.00, 'pending');

-- ========================================
-- SAMPLE DATA FOR PAYMENTS
-- ========================================
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
    ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 600.00, 'credit_card'),
    ('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 800.00, 'paypal');

-- ========================================
-- SAMPLE DATA FOR REVIEWS
-- ========================================
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
    ('ddddddd1-dddd-dddd-dddd-dddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Very cozy and clean.'),
    ('ddddddd2-dddd-dddd-dddd-dddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 4, 'Great location, but a bit noisy.');

-- ========================================
-- SAMPLE DATA FOR MESSAGES
-- ========================================
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
    ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, I am interested in your Cozy Cottage!'),
    ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, the Cottage is available for your dates!');