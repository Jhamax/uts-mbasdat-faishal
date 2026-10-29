
-- 1. Skema SALAM

CREATE SCHEMA IF NOT EXISTS SALAM;

-- 2. Membuat tabel mahasiswa

CREATE TABLE IF NOT EXISTS SALAM.mahasiswas (
    nim VARCHAR(15) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    usia INTEGER NOT NULL,
    jenis_kelamin CHAR(1) NOT NULL,
    ipk NUMERIC(3,2) NOT NULL,
    angkatan INTEGER NOT NULL,

    CONSTRAINT uq_mahasiswas_email
        UNIQUE (email),

    CONSTRAINT chk_mahasiswas_usia
        CHECK (usia BETWEEN 15 AND 100),

    CONSTRAINT chk_mahasiswas_jenis_kelamin
        CHECK (jenis_kelamin IN ('L', 'P')),

    CONSTRAINT chk_mahasiswas_ipk
        CHECK (ipk BETWEEN 0.00 AND 4.00),

    CONSTRAINT chk_mahasiswas_angkatan
        CHECK (angkatan BETWEEN 2000 AND 2100)
);

-- 3. Insert data mahasiswa ke tabel mahasiswas

INSERT INTO SALAM.mahasiswas
(nim, nama, email, usia, jenis_kelamin, ipk, angkatan)
VALUES
('2300010001', 'Andi Saputra', 'andi@gmail.com', 20, 'L', 3.50, 2023),
('2300010002', 'Siti Aminah', 'siti@gmail.com', 21, 'P', 3.75, 2023),
('2300010003', 'Budi Santoso', 'budi@gmail.com', 22, 'L', 3.20, 2023);

-- 4. mengecek data yang sebelumnya dimasukan

SELECT * FROM SALAM.mahasiswas;

-- 5. insert primary key

INSERT INTO SALAM.mahasiswas
VALUES
('2300010001', 'Mahasiswa Duplikat', 'duplikat@gmail.com', 20, 'L', 3.00, 2023);

-- 6. tes unique constraint

INSERT INTO SALAM.mahasiswas
VALUES
('2300010004', 'Dewi Lestari', 'andi@gmail.com', 20, 'P', 3.50, 2023);

-- 7. tes check constraint

INSERT INTO SALAM.mahasiswas
VALUES
('2300010005', 'Rudi Hartono', 'rudi@gmail.com', 20, 'L', 5.00, 2023);

--8. tes hasil akhir

SELECT * FROM SALAM.mahasiswas;
