class Lahan {
  String lahanjenisTanaman;
  String masaTanam;
  double persentase;

  Lahan({
    this.lahanjenisTanaman,
    this.masaTanam,
    this.persentase,
  });
}

final List<Lahan> lahans = [
  Lahan(
    lahanjenisTanaman: 'Selada Hijau',
    masaTanam: 'Des 01, 2019 - Des 31, 2019',
    persentase: 0.7,
  ),
  Lahan(
    lahanjenisTanaman: 'Kale',
    masaTanam: 'Des 02, 2019 - Jan 01, 2020',
    persentase: 0.2,
  ),
  Lahan(
    lahanjenisTanaman: 'Pakcoy',
    masaTanam: 'Des 03, 2019 - Jan 02, 2020',
    persentase: 0.4,
  ),
  Lahan(
    lahanjenisTanaman: 'Selada Hijau',
    masaTanam: 'Des 04, 2019 - Jan 03, 2020',
    persentase: 0.9,
  ),
  Lahan(
    lahanjenisTanaman: 'Kale',
    masaTanam: 'Des 05, 2019 - Jan 04, 2020',
    persentase: 0.4,
  ),
];
