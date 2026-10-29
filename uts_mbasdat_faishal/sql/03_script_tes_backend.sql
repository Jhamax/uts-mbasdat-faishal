SELECT
    current_user,
    current_database();

-- tes membaca data
SELECT * FROM SALAM.mahasiswas;

-- tes menambahkan data

INSERT INTO SALAM.mahasiswas
(nim, nama, email, usia, jenis_kelamin, ipk, angkatan)
VALUES
('2300010010', 'Testing Backend', 'testing@gmail.com', 20, 'L', 3.50, 2023);

-- tes mengubah data

UPDATE SALAM.mahasiswas
SET ipk = 3.80
WHERE nim = '2300010010';

-- tes hapus data

DELETE FROM SALAM.mahasiswas
WHERE nim = '2300010010';