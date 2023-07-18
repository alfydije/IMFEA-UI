
class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  static List<NewsData> recentNewsData = [
    NewsData(
        "10 Pemuda Dibekali Keterampilan Pengelasan, Kerja Sama LPM Harapan Baru dan Polnes Teknik Mesin",
        "Samarinda Pos",
        "Program kemitraan masyarakat Politeknik Negeri Samarinda (Polnes) kembali menggelar pelatihan pengembangan keterampilan untuk pemuda",
        "15 November 2022",
        "https://www.teknikmart.com/media/wysiwyg/icon-image/mesin-las.jpg"),
    NewsData(
        "Tenaga Ahli Las PPSDM Migas Terbang ke Bontang Berikan Pelatihan Juru Las",
        "Jurnal Post",
        "Pusat Pengembangan Sumber Daya Manusia Minyak dan Gas Bumi (PPSDM Migas) bekerja sama dengan PT Khawatama Learning Center",
        "22 November 2022",
        "https://www.teknikmart.com/media/wysiwyg/icon-image/cara-merawat-mesin-las.jpg"),
    NewsData(
        "Indonesia Tertinggal, Baru 10 Persen Ahli Las Bersertifikat Internasional",
        "Kr Jogja",
        "Pekerjaan infrastruktur tidak hanya membutuhkan modal besar, tetapi juga sumber daya manusia (SDM) unggul sebagai penopang proses pembangunan. ",
        "23 Januari 2019",
        "https://www.teknikmart.com/media/wysiwyg/icon-image/gerinda-tangan_1.jpg"),
    NewsData(
        "Perbanyak Ahli Pengelasan Melalui Pendidikan Vokasi",
        "Jpnn",
        "Pembangunan infrastruktur ini tidak hanya membutuhkan modal yang besar, tetapi juga sumber daya manusia yang unggul sebagai penopang proses pembangunan.",
        "23 Januari 2019",
        "https://www.teknikmart.com/media/wysiwyg/icon-image/pengelasan.jpg"),
    NewsData(
        "Stahlwerk dan Vector Tawarkan Mesin Las Kualitas Eropa, tapi Harga Rupiah",
        "Syakur Ushman",
        "Produk mesin las asal Koln-Jerman, Stahlwerk dan Vector, semakin optimis terhadap pasarnya di Indonesia di tengah perkembangan revolusi industri 4.0.",
        "18 Februari 2020",
        "https://www.teknikmart.com/media/wysiwyg/icon-image/gerinda.jpg"),
  ];
}
