# Database Schema for AirBnB Clone

This SQL script defines the schema for the AirBnB database. It includes the following:

- Users (guests, hosts, admins)
- Properties (listed by hosts)
- Bookings (by guests)
- Payments (for bookings)
- Reviews (of properties)
- Messages (between users)

## Features

- All tables use UUID as primary keys.
- Foreign key constraints ensure relational integrity.
- ENUM-like behavior enforced using CHECK constraints.
- Timestamps for auditing and record history.
- Proper indexing for performance on key columns.

## Usage

Run this script in your PostgreSQL environment:

```bash
psql -U username -d dbname -f schema.sql
```
