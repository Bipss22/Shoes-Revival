--PEMBUATAN DATABASE-->
CREATE DATABASE tokosepatu
USE tokosepatu
--PEMBUATAN TABEL--
--TABEL PEMASUK--
CREATE TABLE pemasukan (
    id_pemasukan INT NOT NULL PRIMARY KEY,
    nama VARCHAR (30) NOT NULL,
    alamat VARCHAR (80) DEFAULT 'Yogyakarta',
    no_tlp VARCHAR (15) NOT NULL) ENGINE=INNODB;
--TABEL PEMBELIAN--
CREATE TABLE pembelian (
    no_nota INT PRIMARY KEY,
    tgl DATE NOT NULL,
    id_pemasukan INT NOT NULL,
    KEY id_pemasukan_pembelian (id_pemasukan)) ENGINE=INNODB;
--TABEL DATA PEMBELIAN--
CREATE TABLE data_pembelian (
    id_sepatu INT NOT NULL PRIMARY KEY,
    no_nota INT NOT NULL,
    KEY no_nota_data_pembelian (no_nota),
    jumlah NUMERIC,
    harga NUMERIC)ENGINE=INNODB;
--TABEL BARANG--
CREATE TABLE barang (
    id_sepatu INT PRIMARY KEY,
    merk_sepatu VARCHAR (20) NOT NULL,
    nama_sepatu VARCHAR (30) NOT NULL,
    warna_sepatu VARCHAR (30) NOT NULL,
    stok INT (4) NOT NULL,
    id_pemasukan INT NOT NULL,
    KEY id_pemasukan_barang (id_pemasukan))ENGINE=INNODB;
--TABEL PENJUALAN--
CREATE TABLE penjualan (
    no_nota INT PRIMARY KEY,
    id_pelanggan INT NOT NULL,
    KEY id_pelanggan_pelanggan (id_pelanggan),
    tgl_nota DATE) ENGINE=INNODB;
--TABEL PELANGGAN--
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR (20),
    alamat VARCHAR (20),
    no_tlp VARCHAR (15))ENGINE=INNODB;
--TABEL DATA PENJUALAN--
CREATE TABLE data penjualan (
    no_nota INT NOT NULL,
    id_sepatu INT NOT NULL,
    KEY no_nota_penjualan (no_nota),
    KEY id_sepatu_penjualan (id_sepatu),
    jumlah NUMERIC,
    harga NUMERIC)ENGINE=INNODB;
--PENGISIAN TABEL--
--TABEL PEMASUKAN--
INSERT INTO pemasukan (id_pemasukan,nama,alamat,no_tlp) 
VALUES ('01','HABIB','Condong catur-Kabupaten sleman','085111222333');
INSERT INTO pemasukan (id_pemasukan,nama,alamat,no_tlp) 
VALUES ('02','AISYA','Berbah-Sleman','085222222333');
INSERT INTO pemasukan (id_pemasukan,nama,alamat,no_tlp) 
VALUES ('03','YUYUN','Maguwoharjo-Kabupaten sleman','085333222333');
INSERT INTO pemasukan (id_pemasukan,nama,alamat,no_tlp) 
VALUES ('04','DIKA','Tiyasan-Kabupaten sleman','085444222333');
INSERT INTO pemasukan (id_pemasukan,nama,alamat,no_tlp) 
VALUES ('05','ASEP','Seturan-Kabupaten sleman','085555222333');
INSERT INTO pemasukan (id_pemasukan,nama,alamat,no_tlp) 
VALUES ('05','RIZKY','Babarsari-Kabupaten sleman','085555222333');
INSERT INTO pemasukan (id_pemasukan,nama,alamat,no_tlp) 
VALUES ('06','SITI','Kaliurang km10-Kabupaten sleman','085444222333');
--TABEL PEMBELIAN--
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (100,'2023-06-10',02);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (101,'2023-07-10',03);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (102,'2023-07-10',04);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (103,'2023-08-10',05);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (104,'2023-09-10',06);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (105,'2023-10-10',01);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (106,'2023-11-10',01);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (107,'2023-12-10',02);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (108,'2023-13-10',03);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (109,'2023-14-10',04);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (110,'2023-15-10',05);
INSERT INTO pembelian (no_nota,tgl,id_pemasukan) 
VALUES (111,'2023-16-10',06);
--TABEL DATA PEMBELIAN--
INSERT INTO data_pembelian (id_sepatu,no_nota,jumlah,harga) 
VALUES (1,01,20,2000000);
INSERT INTO data_pembelian (id_sepatu,no_nota,jumlah,harga) 
VALUES (2,02,20,2000000);
INSERT INTO data_pembelian (id_sepatu,no_nota,jumlah,harga) 
VALUES (3,03,12,1500000);
INSERT INTO data_pembelian (id_sepatu,no_nota,jumlah,harga) 
VALUES (1,04,9,1000000);
INSERT INTO data_pembelian (id_sepatu,no_nota,jumlah,harga) 
VALUES (2,05,1,150000);
INSERT INTO data_pembelian (id_sepatu,no_nota,jumlah,harga) 
VALUES (3,06,20,2000000);
--TABEL BARANG--
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (701,'Edward','Sport Pria',40,1,15);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (702,'Edward','Sport Wanita',36,1,12);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (703,'Yongki','Kasual Pria',42,3,13);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (704,'Yongki','Kasual Wanita',38,3,17);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (705,'Sanden','Kasual Pria'43,2,16);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (706,'Sanden','Kasual Wanita',40,2,11);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (707,'Cat','Boot Pria',43,4,10);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (708,'Cat','Kasual Pria',40,4,8);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (709,'Adis','Sport Pria',44,5,19);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (710,'Adis','Sport Wanita',36,5,18);
INSERT INTO barang (id_sepatu,merk_sepatu,nama_sepatu,warna_sepatu,id_pemasukan,stok) 
VALUES (711,'Poya','Kasual Pria',42,6,11);
--TABEL PELANGGAN--
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (901,'Adi','Kauman,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (902,'Ani','Kadipolo,Yogyakarta',0811780477);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (903,'Nugroho','Wirobrajan,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (904,'Santi','Urip Sumoharja,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (905,'Abu','Condong Catur,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (906,'Joko','Candi Gebang,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (907,'Nurdin','Kasihan,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (908,'Sandi','Bantul,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (909,'Indra','Selokan Mataram,Yogyakarta',0811780456);
INSERT INTO pelanggan (id_pelanggan,nama,alamat,no_tlp)
VALUES (910,'Andri','Seturan,Yogyakarta',0811780456);
-- TABEL PENJUALAN --
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (801, 901, 2016-06-05);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (802, 902, 2016-06-06);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (803, 903, 2016-06-07);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (804, 904, 2016-06-08):
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (805, 905, 2016-06-09);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (806, 906, 2016-06-10);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (807, 907, 2016-06-11);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (808, 905, 2016-06-12);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (809, 908, 2016-06-13);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (810, 909, 2016-06-14);
insert into penjualan (no_nota, id_pelanggan, tgl_nota) values (811, 910, 2016-06-15);
-- TABEL DATA PENJUALAN
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (801, 701, 2, 15000):
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (802, 702, 3, 140000);
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (803, 703, 2,150000);
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (804, 704, 3, 140000); 
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (805, 705, 4, 140000);
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (806, 706, 3, 140000); 
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (807, 707, 2, 150000);
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (808, 705, 3, 140000); 
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (810, 709, 3, 140000);
insert into det penjualan (no_nota, id_sepatu, jumlah, harga) values (811, 710, 4, 140000);
-- TABEL PENGGUNA --
insert into pengguna (id_user, nama, passwd, status) values (1001, 'Supri', 'sandal', 'user'); 
insert into pengguna (id_user, nama, passwd, status) values (1002, 'Udin', 'sepatu', 'admin');

-- RELASI TABEL --
alter table pembelian add constraint fk pembelian pemasok
foreign key (id_pemasok) references pemasok (id_pemasok) ON UPDATE CASCADE ON DELETE NO ACTION;

alter table det pembelian add constraint fk_det pembelian pembelian 
foreign key (no_nota) references pembelian (no_nota) ON UPDATE CASCADE ON DELETE NO ACTION;

alter table barang add constraint fk_barang pemasok 
FOREIGN KEY (id_pemasok) REFERENCES pemasok (id pemasok) ON UPDATE CASCADE ON DELETE NO ACTION;

ALTER TABLE penjualan ADD CONSTRAINT fk penjualan pelanggan 
FOREIGN KEY (id_pelanggan) REFERENCES pelanggan (id_pelanggan) ON UPDATE CASCADE ON DELETE NO ACTION;

ALTER TABLE det penjualan ADD CONSTRAINT fk_det penjualan penjualan
FOREIGN KEY (no_nota) REFERENCES penjualan (no_nota) ON UPDATE CASCADE ON DELETE NO ACTION;

ALTER TABLE det penjualan ADD CONSTRAINT fk_det penjualan barang 
FOREIGN KEY (id_sepatu) REFERENCES barang (id_sepatu) ON UPDATE CASCADE ON DELETE NO ACTION;