-- tes identitas
SELECT
    current_user,
    current_database();

-- tes select
SELECT * FROM SALAM.mahasiswas;

-- tes insert
INSERT INTO SALAM.mahasiswas
(nim, nama, email, usia, jenis_kelamin, ipk, angkatan)
VALUES
('2300010020', 'Testing BI', 'testingbi@gmail.com', 20, 'L', 3.50, 2023);

-- tes update
UPDATE SALAM.mahasiswas
SET ipk = 3.90
WHERE nim = '2300010001';

-- tes delete
DELETE FROM SALAM.mahasiswas
WHERE nim = '2300010001';