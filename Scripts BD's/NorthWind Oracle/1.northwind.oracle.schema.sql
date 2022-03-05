-- 1. Run to drop schema
-- drop user TESTUSER cascade;

-- 2. Run to create user and schema 
CREATE USER TESTUSER IDENTIFIED BY testuser
  DEFAULT TABLESPACE users
  TEMPORARY TABLESPACE temp
  QUOTA UNLIMITED ON users

-- 3. Run to grant permissions
GRANT "CONNECT" TO TESTUSER
/
GRANT DBA TO TESTUSER
/
GRANT "RESOURCE" TO TESTUSER
/
ALTER USER TESTUSER DEFAULT ROLE "CONNECT",
                                  DBA,
                                  "RESOURCE"
/
