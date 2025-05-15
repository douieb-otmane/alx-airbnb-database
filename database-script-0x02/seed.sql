-- Enable UUID generation if needed
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Sample USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (uuid_generate_v4(), 'Alice', 'Smith', 'alice@example.com', 'hashed_pass1', '1234567890', 'guest'),
  (uuid_generate_v4(), 'Bob', 'Johnson', 'bob@example.com', 'hashed_pass2', '2345678901', 'host'),
  (uuid_generate_v4(), 'Carol', 'Admin', 'carol@example.com', 'hashed_pass3', NULL, 'admin');

-- Manually insert and save UUIDs for reuse in FK fields
-- Assume you’re manually managing IDs here for clarity

-- Insert HOST with fixed UUID
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'David', 'Host', 'david@example.com', 'hashed_pass4', '3456789012', 'host');

-- Sample PROPERTY
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111',
   'Cozy Loft', 'A cozy loft in downtown.', 'New York', 120.00),
  ('33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111',
   'Beach House', 'Beautiful beach house with ocean view.', 'Los Angeles', 300.00);

-- Sample BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 
   'alice-user-uuid-placeholder', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
  ('55555555-5555-5555-5555-555555555555', '33333333-3333-3333-3333-333333333333',
   'alice-user-uuid-placeholder', '2025-07-10', '2025-07-12', 600.00, 'pending');

-- Sample PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  (uuid_generate_v4(), '44444444-4444-4444-4444-444444444444', 480.00, 'credit_card'),
  (uuid_generate_v4(), '55555555-5555-5555-5555-555555555555', 600.00, 'paypal');

-- Sample REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  (uuid_generate_v4(), '22222222-2222-2222-2222-222222222222', 'alice-user-uuid-placeholder', 5, 'Amazing experience!'),
  (uuid_generate_v4(), '33333333-3333-3333-3333-333333333333', 'alice-user-uuid-placeholder', 4, 'Loved the view!');

-- Sample MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  (uuid_generate_v4(), 'alice-user-uuid-placeholder', '11111111-1111-1111-1111-111111111111', 'Is the loft still available?'),
  (uuid_generate_v4(), '11111111-1111-1111-1111-111111111111', 'alice-user-uuid-placeholder', 'Yes, it is. Feel free to book!');
