-- Step 1: Create a new schema
CREATE SCHEMA IF NOT EXISTS HARISH_schema;
-- Step 2: Create a new table within the schema
CREATE TABLE IF NOT EXISTS HARISH_schema.users (
   id INT AUTOINCREMENT PRIMARY KEY,
   username VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL UNIQUE
);
-- Step 3: Create roles
USE ROLE USERADMIN;
CREATE ROLE IF NOT EXISTS HARISH_read_role;
CREATE ROLE IF NOT EXISTS HARISH_write_role;

-- Grant the role to the user
USE ROLE SECURITYADMIN;
GRANT ROLE HARISH_read_role TO USER RAHMUKH;
GRANT ROLE HARISH_write_role TO USER VMASHET;
-- Step 4: Grant usage on the database to the roles
USE ROLE SECURITYADMIN;
GRANT USAGE ON DATABASE SANDBOX_DB TO ROLE HARISH_read_role;
GRANT USAGE ON DATABASE SANDBOX_DB TO ROLE HARISH_write_role;
-- Step 5: Grant select on all tables in the schema to the read role
-- and select, insert, update, delete on all tables to the write role
USE ROLE SECURITYADMIN;
GRANT SELECT ON ALL TABLES IN SCHEMA HARISH_schema TO ROLE HARISH_write_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA HARISH_schema TO ROLE HARISH_write_role;
-- Step 6: Future-proofing: Any future tables created in this schema will inherit these privileges
ALTER SCHEMA HARISH_schema ENABLE ROW LEVEL SECURITY;
USE ROLE SECURITYADMIN;
GRANT SELECT ON FUTURE TABLES IN SCHEMA HARISH_schema TO ROLE HARISH_read_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA HARISH_schema TO ROLE HARISH_write_role;