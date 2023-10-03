class HomepageContents {
  String img;
  String title;
  String desc;
  String addr;
  String cat;

  HomepageContents(
      {required this.img,
      required this.title,
      required this.desc,
      required this.addr,
      required this.cat});
}

List<HomepageContents> contents = [
  HomepageContents(
      img:
          'assets/malioboro-street.png',
      title: 'Jalan Malioboro',
      desc:
          'Jalan Malioboro adalah salah satu jalan utama dan ikonik di Yogyakarta. Jalan ini terkenal sebagai pusat perbelanjaan, wisata, dan kegiatan budaya di kota ini. Jalan Malioboro memanjang sekitar 2,5 kilometer dari Tugu Yogyakarta hingga Keraton Yogyakarta. Jalan ini terdiri dari dua jalur yang dipisahkan oleh trotoar yang ramai dengan pedagang kaki lima, toko-toko, hotel, restoran, dan pusat perbelanjaan.',
      addr: 'Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta',
      cat: 'wisata budaya'
      ),
  HomepageContents(
      img:
          'assets/prambanan-temple.png',
      title: 'Candi Prambanan',
      desc:
          'Candi Prambanan adalah kompleks candi Hindu terbesar di Indonesia dan merupakan Situs Warisan Dunia UNESCO. Candi ini dibangun pada abad ke-9 oleh dinasti Sanjaya dan merupakan contoh arsitektur Hindu klasik yang megah. Candi Prambanan terkenal karena kemegahan dan keindahan relief-reliefnya serta menjadi salah satu tujuan wisata utama di Yogyakarta.',
      addr: 'Jl. Raya Solo - Yogyakarta No. 16, Prambanan, Sleman, Yogyakarta',
      cat: 'wisata budaya'),
  HomepageContents(
      img:
          'assets/tamansari.png',
      title: 'Taman Sari',
      desc:
          'Taman Sari adalah bekas kompleks taman dan kolam renang dari Keraton Yogyakarta, istana resmi Sultan Yogyakarta. Kompleks ini dibangun pada abad ke-18 sebagai tempat rekreasi dan tempat peristirahatan bagi keluarga kerajaan. Taman Sari memiliki nilai sejarah yang tinggi dan merupakan salah satu objek wisata terkenal di Yogyakarta.',
      addr: 'Jl. Tamanan, Patehan, Kraton, Yogyakarta.',
      cat: 'wisata budaya'
      ),
  HomepageContents(
      img:
          'assets/parangtritis.png',
      title: 'Pantai Parangtritis',
      desc:
          'Pantai Parangtritis adalah salah satu pantai terkenal di Yogyakarta dan merupakan destinasi wisata populer di wilayah tersebut. Pantai ini terletak sekitar 27 kilometer selatan Yogyakarta dan dikenal karena keindahan pemandangannya, pasir hitamnya yang unik, serta pesona olahraga selancar.',
      addr: 'Jl. Parangtritis, Kretek, Bantul, Yogyakarta.',
      cat: 'wisata alam')
];
