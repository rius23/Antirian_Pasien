USE antrian_pasien;

-- Mengiput Data Pasien
INSERT INTO pasien
VALUES 	('7123456', 'Chiristian', 'Bekasi', '2004-03-25'),
	('7134567', 'Anasyah ', 'Cikarang', '1990-01-20'),
	('7145678', 'Syahbar Udin', 'Jakarta', '1998-05-10'),
	('7156789', 'Vannesa', 'Bekasi', '2001-12-01'),
	('7167890', 'Roy Martin', 'Cikarang', '1995-08-09');

-- Mengiput Data Jenis Pelayanan
INSERT INTO jenis_pelayanan
VALUES 	('6312345', 'Pemeriksaan UMUM'),
	('6323456', 'Pemeriksaan Gigi'),
        ('6345467', 'Gawat Darurat'),
        ('6345678', 'KB (Keluarga Berencana)'),
        ('6356789', 'Farmasi/Apotek');
 
-- Menginput Data Loket Pelayanan
INSERT INTO Loket_Pelayanan
VALUES	('5132456', 'Loket 1', '6345467'),
	('5143567', 'Loket 2', '6345678'),
        ('5154678', 'Loket 3', '6356789');

-- Menginput Data Antrian
INSERT INTO antrian
VALUES 	('92123456', '5132456', '7123456', '2023-06-05', '001'),
	('92434567', '5154678', '7134567', '2023-06-05', '002'),
        ('92545678', '5143567', '7156789', '2023-06-05', '003'),
        ('92656789', '5132456', '7167890', '2023-06-05', '004'),
        ('92767890', '5143567', '7145678', '2023-06-05', '005');

-- Menginput Data Laporan Transaksi
INSERT INTO laporan_transaksi
VALUES 	('83123456', '92123456', '2023-06-05', '850.000'),
	('83234567', '92434567', '2023-06-05', '1.000.000'),
        ('83435678', '92545678', '2023-06-05', '500.000'),
        ('83656789', '92656789', '2023-06-05', '850.000'),
        ('83767890', '92767890', '2023-06-05', '500.000');

