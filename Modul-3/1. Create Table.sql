-- 1. Membuat tabel Produk
CREATE TABLE IF NOT EXISTS Produk (
    ID INTEGER PRIMARY KEY,
    Nama_Produk TEXT NOT NULL,
    Kategori TEXT NOT NULL,
    Harga INTEGER NOT NULL
);

-- 2. Membuat tabel Penjualan
CREATE TABLE IF NOT EXISTS Penjualan (
    ID_Penjualan INTEGER PRIMARY KEY,
    ID_Produk INTEGER NOT NULL,
    Tanggal TEXT NOT NULL,
    Jumlah_Terjual INTEGER NOT NULL,
    FOREIGN KEY (ID_Produk) REFERENCES Produk(ID) ON DELETE CASCADE -- Berfungsi agar saat menjalankan query delete pada tabel produk, tabel penjualan pun akan terhapus
);
