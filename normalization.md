Table User {
  user_id UUID [pk, unique, not null]
  first_name VARCHAR [not null]
  last_name VARCHAR [not null]
  email VARCHAR [unique, not null]
  password_hash VARCHAR [not null]
  phone_number VARCHAR
  role VARCHAR [not null] // Could be FK to Role table
  created_at TIMESTAMP [default: CURRENT_TIMESTAMP]
}

Table Property {
  property_id UUID [pk, unique, not null]
  host_id UUID [not null, ref: > User.user_id]
  name VARCHAR [not null]
  description TEXT [not null]
  location VARCHAR [not null]
  pricepernight DECIMAL [not null]
  created_at TIMESTAMP [default: CURRENT_TIMESTAMP]
  updated_at TIMESTAMP
}

Table Booking {
  booking_id UUID [pk, unique, not null]
  property_id UUID [not null, ref: > Property.property_id]
  user_id UUID [not null, ref: > User.user_id]
  start_date DATE [not null]
  end_date DATE [not null]
  total_price DECIMAL [not null] // optional, can be computed
  status VARCHAR [not null] // ENUM(pending, confirmed, canceled)
  created_at TIMESTAMP [default: CURRENT_TIMESTAMP]
}

Table Payment {
  payment_id UUID [pk, unique, not null]
  booking_id UUID [not null, ref: > Booking.booking_id]
  amount DECIMAL [not null]
  payment_date TIMESTAMP [default: CURRENT_TIMESTAMP]
  payment_method VARCHAR [not null] // ENUM or FK to PaymentMethod
}

Table Review {
  review_id UUID [pk, unique, not null]
  property_id UUID [not null, ref: > Property.property_id]
  user_id UUID [not null, ref: > User.user_id]
  rating INT [not null] // check 1–5
  comment TEXT [not null]
  created_at TIMESTAMP [default: CURRENT_TIMESTAMP]
}

Table Message {
  message_id UUID [pk, unique, not null]
  sender_id UUID [not null, ref: > User.user_id]
  recipient_id UUID [not null, ref: > User.user_id]
  message_body TEXT [not null]
  sent_at TIMESTAMP [default: CURRENT_TIMESTAMP]
}