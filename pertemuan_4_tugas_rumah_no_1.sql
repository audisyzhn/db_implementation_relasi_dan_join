//a
//menampilkan kd_mk dan matkul yang mahasiswanya 40
SELECT matakuliah.`kd_mk`, matakuliah.`nama_mk`, ambil_mk.`jml_mhs`
FROM matakuliah
INNER JOIN ambil_mk
ON matakuliah.`kd_mk` = ambil_mk.`kd_mk`
WHERE jml_mhs = 40


//b
//instruktur yang mengajar basisdata
SELECT instruktur.`nip`, nama_ins, jurusan, asal_kota, nama_mk
FROM instruktur, matakuliah, ambil_mk
WHERE matakuliah.`kd_mk` = ambil_mk.`kd_mk` 
AND instruktur.`nip` = ambil_mk.`nip`
AND matakuliah.`nama_mk` = "Basis Data"

//c
//instruktur yang tidak mengajar
SELECT instruktur.`nip`, nama_ins, jurusan, asal_kota
FROM instruktur
LEFT OUTER JOIN ambil_mk
ON instruktur.`nip` = ambil_mk.`nip`
WHERE ambil_mk.`nip` IS NULL