-- 3. Mengisi data ke tabel Produk
INSERT INTO Produk (ID, Nama_Produk, Kategori, Harga) VALUES
(1, 'Sepatu', 'Fashion', 500000),
(2, 'Tas', 'Fashion', 300000),
(3, 'Laptop', 'Elektronik', 7000000);

-- 4. Mengisi data ke tabel Penjualan
INSERT INTO Penjualan (ID_Penjualan, ID_Produk, Tanggal, Jumlah_Terjual) VALUES
(1, 1, '2025-05-01', 10),
(2, 2, '2025-05-02', 5),
(3, 3, '2025-05-03', 2);