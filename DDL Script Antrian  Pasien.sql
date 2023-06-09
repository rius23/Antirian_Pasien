CREATE DATABASE antrian_pasien;

USE antrian_pasien;

-- Tabel Pasien
CREATE TABLE Pasien (
  id_pasien INT PRIMARY KEY,
  nama_pasien VARCHAR(255),
  alamat VARCHAR(255),
  tanggal_lahir DATE
);

-- Tabel Jenis Pelayanan
CREATE TABLE Jenis_Pelayanan (
  id_pelayanan INT PRIMARY KEY,
  nama_pelayanan VARCHAR(255)
);

-- Tabel Loket Pelayanan
CREATE TABLE Loket_Pelayanan (
  id_loket INT PRIMARY KEY,
  nama_loket VARCHAR(255),
  id_pelayanan INT,
  FOREIGN KEY (id_pelayanan) REFERENCES Jenis_Pelayanan(id_pelayanan)
);

-- Tabel Antrian
CREATE TABLE Antrian (
  id_antrian INT PRIMARY KEY,
  id_loket INT,
  id_pasien INT,
  tgl_antrian DATE,
  nomor_antrian INT,
  FOREIGN KEY (id_loket) REFERENCES Loket_Pelayanan(id_loket),
  FOREIGN KEY (id_pasien) REFERENCES Pasien(id_pasien)
);

-- Tabel Laporan Transaksi
CREATE TABLE Laporan_Transaksi (
  id_transaksi INT PRIMARY KEY,
  id_antrian INT,
  tgl_transaksi DATE,
  jumlah_pembayaran VARCHAR(50),
  FOREIGN KEY (id_antrian) REFERENCES Antrian(id_antrian)
);
