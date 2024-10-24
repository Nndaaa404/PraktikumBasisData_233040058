-- Langkah 1: Menampilkan semua nama foreign key (opsional, jika tidak tahu nama constraint)
select name
from sys.foreign_keys;


-- Langkah 2: Hapus foreign key lama
alter table Mahasiswa drop constraint FK__Mahasiswa__jurus__571DF1D5;
alter table Mahasiswa drop constraint FK__Mahasiswa__dosen__5812160E;


-- Langkah 3: Tambahkan kembali foreign key dengan ON DELETE CASCADE
alter table Mahasiswa 
add constraint fk_jurusan foreign key (jurusan_id) 
references jurusan(id) 
on delete cascade;

alter table Mahasiswa 
add constraint fk_dosen_wali foreign key (dosen_wali_id) 
references dosen_wali(id) 
on delete cascade;


-- Langkah 4: Hapus data 5 mahasiswa dan pastikan data yang berhubungan dengan mahasiswa tersebut di tabel lain ikut terhapus
delete from Mahasiswa
where id IN (1, 2, 3, 4, 5);