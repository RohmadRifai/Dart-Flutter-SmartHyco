class Komoditass {
  String imageUrl;
  String namaTanaman;
  String deskripsi;
  int lamaTanam;
  int harga;

  Komoditass({
    this.imageUrl,
    this.namaTanaman,
    this.deskripsi,
    this.lamaTanam,
    this.harga,
  });
}

final List<Komoditass> komoditas = [
  Komoditass(
    imageUrl: 'assets/images/Setzlingnco.jpg',
    namaTanaman: 'Selada Hijau',
    deskripsi:
        'Selada (Lactuca sativa) adalah tumbuhan sayur yang biasa ditanam di daerah beriklim sedang maupun daerah tropika. Selada mempunyai kandungan mineral, termasuk iodium, fosfor, besi, tembaga, kobalt, seng, kalsium, mangan, dan potasium, sehingga selada mempunyai khasiat terbaik dalam menjaga keseimbangan tubuh. Kulit luar yang hijauadalah yang paling baik. Dimasak perlahan-lahan selama 15 menit merupakan obat penderita insomnia.',
    lamaTanam: 45,
    harga: 20000,
  ),
  Komoditass(
    imageUrl: 'assets/images/sayur-kale-totalbuah-id.jpg',
    namaTanaman: 'Kale',
    deskripsi:
        'Kale merupakan sayuran yang memiliki banyak manfaat untu kesehatan, tidak kalah dari bayam, kol, brokoli, dan sayuran lainnya. Kale (Brassica oleracea acephala) memiliki beberapa variasi jenis, ada yang berwarna hijau dan ungu kebiruan. Berbeda dengan brokoli dan keluarga kubis lainnya, kale tidak membentuk kepala. Kale mengandung hampir seluruh jenis vitamin, seperti vitamin A, vitamin D, vitamin E, vitamin B6, Vitamin C, vitamin K, Thiamin, riboflavin, niasin, asam folat, dan kolin. Selain itu, kali juga kaya akan mineral seperti fosfor, magnesium, mangan, zat besi dan garam seperti Na, K, dan Zn.',
    lamaTanam: 60,
    harga: 25000,
  ),
  Komoditass(
    imageUrl:
        'assets/images/Kupas-Tuntas-Sayur-Pakcoy-Si-Sawi-Hijau-Kaya-Nutrisi.jpg',
    namaTanaman: 'Pakcoy',
    deskripsi: 'Informasi belum diupdate',
    lamaTanam: 45,
    harga: 20000,
  ),
  Komoditass(
    imageUrl: 'assets/images/big_c70d8f3ab7a17c6fe6bc243e60496108b10c32c0.jpg',
    namaTanaman: 'Selada Romaine',
    deskripsi: 'Informasi belum diupdate.',
    lamaTanam: 45,
    harga: 25000,
  ),
  Komoditass(
    imageUrl: 'assets/images/selada oakleaf merah.jpg',
    namaTanaman: 'Selada Oakleaf Merah',
    deskripsi: 'Informasi belum diupdate.',
    lamaTanam: 45,
    harga: 35000,
  ),
  Komoditass(
    imageUrl: 'assets/images/Selada_Oakleaf.jpg',
    namaTanaman: 'Selada Oakleaf Hijau',
    deskripsi: 'Informasi belum diupdate.',
    lamaTanam: 45,
    harga: 40000,
  ),
  Komoditass(
    imageUrl:
        'assets/images/new_Benih_Bibit_Selada_Butterhead_Olivia_Green_Known_You_See.jpg',
    namaTanaman: 'Selada Butterhead',
    deskripsi: 'Informasi belum diupdate.',
    lamaTanam: 45,
    harga: 35000,
  ),
];
