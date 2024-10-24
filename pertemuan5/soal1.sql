CREATE TABLE jurusan (
	id bigint primary key,
	nama_jurusan bigint
); 

CREATE TABLE Dosen_Wali (
	id bigint primary key,
	NIP bigint, 
	nama varchar(255),
	tanggal_lahir date,
	alamat varchar(255),
	no_hp int,
);

CREATE TABLE Mahasiswa (
	id bigint primary key,
	NPM int,
	nama varchar(255),
	tanggal_lahir date,
	alamat varchar(255),
	no_hp int,
	jurusan_id bigint,
	dosen_wali_id bigint,
	foreign key(jurusan_id) references jurusan(id),
	foreign key(dosen_wali_id) references dosen_wali(id)
);