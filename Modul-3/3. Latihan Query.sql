-- Latihan 1: Ambil semua produk dengan harga di atas 1 juta
SELECT * FROM Produk WHERE Harga > 1000000;

-- Latihan 2: Hitung total penjualan per kategori
SELECT p.Kategori, SUM(s.Jumlah_Terjual) AS Total_Terjual
FROM Produk p
JOIN Penjualan s ON p.ID = s.ID_Produk
GROUP BY p.Kategori;

-- Latihan 3: Update harga produk dengan ID 2 menjadi 350000
UPDATE Produk SET Harga = 350000 WHERE ID = 2;

-- Latihan 4: Hapus produk dengan ID 3
DELETE FROM Produk WHERE ID = 3;

-- Latihan 5: Tampilkan semua data penjualan dengan nama produk
SELECT s.ID_Penjualan, p.Nama_Produk, s.Tanggal, s.Jumlah_Terjual
FROM Penjualan s
JOIN Produk p ON s.ID_Produk = p.ID;

-- Latihan 6: Hapus produk dengan ID 3 baik di tabel produk dan tabel penjualan 
BEGIN TRANSACTION;

DELETE FROM Penjualan WHERE ID_Produk = 3;
DELETE FROM Produk WHERE ID = 3;

COMMIT;
