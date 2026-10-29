-- tes identitas
SELECT
    current_user,
    current_database();

-- tes create
CREATE TABLE SALAM.testing_engineer (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    keterangan TEXT
);

-- tes insert
INSERT INTO SALAM.testing_engineer
(nama, keterangan)
VALUES
('Faishal', 'Pengujian data engineer');

-- tes select
SELECT * FROM SALAM.testing_engineer;

-- tes update
UPDATE SALAM.testing_engineer
SET keterangan = 'Pengujian UPDATE berhasil'
WHERE id = 1;

SELECT * FROM SALAM.testing_engineer;

-- tes alter table

ALTER TABLE SALAM.testing_engineer
ADD COLUMN email VARCHAR(100);

-- periksa alter table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'salam'
AND table_name = 'testing_engineer';

-- menguji delete
DELETE FROM SALAM.testing_engineer
WHERE id = 1;

-- menguji drop
DROP TABLE SALAM.testing_engineer;