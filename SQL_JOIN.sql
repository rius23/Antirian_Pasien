-- Menampilkan Jumlah Tagihan Pasien Bernama Vannesa
SELECT lt.jumlah_pembayaran
FROM Pasien p
JOIN Antrian a ON a.id_pasien = p.id_pasien
JOIN Laporan_Transaksi lt ON lt.id_antrian = a.id_antrian
WHERE p.nama_pasien = 'Vannesa';


-- Menampilkan pasien yang menggunakan pelayanan Gawat Darurat
SELECT p.nama_pasien
FROM Pasien p
JOIN Antrian a ON a.id_pasien = p.id_pasien
JOIN Loket_Pelayanan lp ON lp.id_loket = a.id_loket
JOIN Jenis_Pelayanan jp ON jp.id_pelayanan = lp.id_pelayanan
WHERE jp.nama_pelayanan = 'Gawat Darurat';


-- Menampilkan Pasien yang menggunakan loket ke 2 untuk melakukan transaksi
SELECT p.nama_pasien, lt.jumlah_pembayaran
FROM Pasien p
JOIN Antrian a ON a.id_pasien = p.id_pasien
JOIN Loket_Pelayanan lp ON lp.id_loket = a.id_loket
JOIN Jenis_Pelayanan jp ON jp.id_pelayanan = lp.id_pelayanan
JOIN Laporan_Transaksi lt ON lt.id_antrian = a.id_antrian
WHERE lp.id_loket = '5143567';

-- Menampilkan Pasien dan tagihannya berdasarkan tanggal lahir antara tahun 1990 sampai 2001
SELECT p.nama_pasien, lt.jumlah_pembayaran
FROM Pasien p
JOIN Antrian a ON a.id_pasien = p.id_pasien
JOIN Laporan_Transaksi lt ON lt.id_antrian = a.id_antrian
WHERE p.tanggal_lahir BETWEEN '1990-01-01' AND '2001-12-31';
