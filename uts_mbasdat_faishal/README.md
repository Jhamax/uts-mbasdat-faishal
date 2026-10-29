
# UTS Manajemen Basis Data

Proyek Ujian Tengah Semester (UTS) mata kuliah Manajemen Basis Data menggunakan PostgreSQL 15, Docker Compose, dan pgAdmin.

## Teknologi yang Digunakan

- PostgreSQL 15
- Docker dan Docker Compose
- pgAdmin 4
- DBeaver
- Windows 11

## Struktur Proyek

```text
uts_mbasdat_faishal/
├── docker-compose.yml
├── .env.example
├── .gitignore
├── README.md
└── sql/
    └── [file-file SQL]
```

## Konfigurasi

1. Pastikan Docker Desktop sudah terpasang dan berjalan.
2. Salin file `.env.example` menjadi `.env`.
3. Sesuaikan konfigurasi pada `.env`, terutama password PostgreSQL dan pgAdmin.
4. Jangan mengunggah file `.env` ke repository.

## Menjalankan Proyek

Jalankan perintah berikut dari direktori proyek:

```bash
docker compose up -d
```

Periksa status container:

```bash
docker compose ps
```

Menghentikan container:

```bash
docker compose down
```

## Akses Layanan

| Layanan | Alamat |
|---|---|
| PostgreSQL | localhost:22018 |
| pgAdmin | http://localhost:44018 |

## Database

Schema yang digunakan:

`SALAM`

Tabel utama:

`SALAM.mahasiswas`

Tabel menyimpan data mahasiswa dengan atribut NIM, nama, email, usia, jenis kelamin, IPK, dan angkatan.

## Hak Akses Pengguna

| Pengguna | Hak Akses |
|---|---|
| backend_dev | CRUD |
| bi_dev | Read Only |
| data_engineer | Pengelolaan struktur dan data |

## Catatan

Repository ini dibuat untuk keperluan tugas UTS Manajemen Basis Data.
