# Database Normalization: AirBnB Project

## Objective

Ensure the AirBnB database schema adheres to **Third Normal Form (3NF)**.

---

## Step 1: First Normal Form (1NF)

- All tables have atomic columns.
- No repeating groups or arrays.
  ✅ Passed 1NF

---

## Step 2: Second Normal Form (2NF)

- All tables have single-column primary keys (UUID).
- All non-key attributes are fully functionally dependent on the primary key.
  ✅ Passed 2NF

---

## Step 3: Third Normal Form (3NF)

### ✅ User Table

- No transitive dependencies.
- All attributes depend only on `user_id`.

### ✅ Property Table

- All columns directly depend on `property_id`.

### ✅ Booking Table

- `total_price` is derived but retained for performance. No transitive dependency otherwise.

### ✅ Payment Table

- No transitive dependency. All fields relate to `payment_id`.

### ✅ Review Table

- Fully normalized. `rating` and `comment` depend on `review_id`.

### ✅ Message Table

- Each message has a sender and recipient.
- `message_body` depends only on `message_id`.

---

## Conclusion

The database schema is normalized to **Third Normal Form (3NF)**. All entities were reviewed, and no transitive dependencies or violations of normalization principles were found.
