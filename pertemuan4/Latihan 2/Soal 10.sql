SELECT *
FROM mahasiswa m
WHERE m.mahasiswa_id IN (
SELECT d.mahasiswa_id
FROM dpp_mahasiswa d
WHERE status_pembayaran = 'lunas' );