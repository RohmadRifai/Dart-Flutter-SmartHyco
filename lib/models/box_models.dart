class Boxs {
  String namaBox;
  int ppm;
  int ph;
  int suhuAir;
  int suhuUdara;
  int kelembapan;
  String kualitasAir;

  Boxs({
    this.namaBox,
    this.ppm,
    this.ph,
    this.suhuAir,
    this.suhuUdara,
    this.kelembapan,
    this.kualitasAir,
  });
}

final List<Boxs> boxs = [
  Boxs(
    namaBox: 'Box 1',
    ppm: 200,
    ph: 6,
    suhuAir: 30,
    kualitasAir: 'Bagus',
  ),
  Boxs(
    namaBox: 'Box 2',
    ppm: 300,
    ph: 8,
    suhuAir: 40,
    kualitasAir: 'Jelek',
  ),
  Boxs(
    namaBox: 'Box 3',
    ppm: 190,
    ph: 6,
    suhuAir: 29,
    kualitasAir: 'Bagus',
  ),
  Boxs(
    namaBox: 'Box 4',
    ppm: 290,
    ph: 9,
    suhuAir: 39,
    kualitasAir: 'Jelek',
  ),
  Boxs(
    namaBox: 'Box 5',
    ppm: 210,
    ph: 6,
    suhuAir: 32,
    kualitasAir: 'Bagus',
  ),
];
