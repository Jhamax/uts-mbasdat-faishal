
-- 1. Membuat Tiga User

CREATE USER backend_dev
WITH LOGIN PASSWORD 'GANTI_PASSWORD_BACKEND';

CREATE USER bi_dev
WITH LOGIN PASSWORD 'GANTI_PASSWORD_BI';

CREATE USER data_engineer
WITH LOGIN PASSWORD 'GANTI_PASSWORD_ENGINEER';

-- 2. Memberikan Hak Akses Database

GRANT CONNECT ON DATABASE postgres
TO backend_dev, bi_dev, data_engineer;

-- 3. hak akses backend (crud)

GRANT USAGE ON SCHEMA SALAM
TO backend_dev;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA SALAM
TO backend_dev;

GRANT USAGE, SELECT, UPDATE
ON ALL SEQUENCES IN SCHEMA SALAM
TO backend_dev;

-- 4. hak akses bi_dev (hanya read)

GRANT USAGE ON SCHEMA SALAM
TO bi_dev;

GRANT SELECT
ON ALL TABLES IN SCHEMA SALAM
TO bi_dev;


-- 5. hak akses data_engineer

GRANT CREATE ON DATABASE postgres
TO data_engineer;

GRANT USAGE, CREATE ON SCHEMA SALAM
TO data_engineer;

-- Mengalihkan kepemilikan schema

ALTER SCHEMA SALAM OWNER TO data_engineer;

-- Mengalihkan kepemilikan tabel yang sudah ada

ALTER TABLE SALAM.mahasiswas
OWNER TO data_engineer;

-- 6. default privileges

ALTER DEFAULT PRIVILEGES
FOR ROLE data_engineer
IN SCHEMA SALAM
GRANT SELECT, INSERT, UPDATE, DELETE
ON TABLES TO backend_dev;

ALTER DEFAULT PRIVILEGES
FOR ROLE data_engineer
IN SCHEMA SALAM
GRANT SELECT
ON TABLES TO bi_dev;

ALTER DEFAULT PRIVILEGES
FOR ROLE data_engineer
IN SCHEMA SALAM
GRANT USAGE, SELECT, UPDATE
ON SEQUENCES TO backend_dev;


-- testing hasil
SELECT
    rolname,
    rolcanlogin,
    rolsuper
FROM pg_roles
WHERE rolname IN (
    'backend_dev',
    'bi_dev',
    'data_engineer'
);

-- testing hak akses
SELECT
    grantee,
    table_schema,
    table_name,
    privilege_type
FROM information_schema.role_table_grants
WHERE table_schema = 'salam'
ORDER BY grantee, privilege_type;

-- testing akses login
SELECT
    rolname,
    rolcanlogin,
    rolsuper
FROM pg_roles
WHERE rolname IN (
    'backend_dev',
    'bi_dev',
    'data_engineer'
);