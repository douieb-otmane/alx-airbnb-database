# Database Seeder: AirBnB Clone

This script seeds the database with realistic sample data to simulate users, properties, bookings, payments, reviews, and messages.

## Sample Data Overview

- **Users:** 4 (guest, host, admin)
- **Properties:** 2 properties listed by host
- **Bookings:** 2 bookings made by a guest
- **Payments:** 2 payments linked to bookings
- **Reviews:** 2 reviews left by guest
- **Messages:** 2 messages between guest and host

## Usage

Ensure your schema is created first:

```bash
psql -U username -d airbnb_db -f ../database-script-0x01/schema.sql
```
