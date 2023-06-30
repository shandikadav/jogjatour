class HomepageContents {
  String img;
  String title;
  String desc;
  String addr;

  HomepageContents(
      {required this.img,
      required this.title,
      required this.desc,
      required this.addr});
}

List<HomepageContents> contents = [
  HomepageContents(
      img:
          'https://images.unsplash.com/photo-1631002165145-f6672bfa9672?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      title: 'Jalan Malioboro',
      desc:
          'Jalan Malioboro adalah salah satu jalan utama dan ikonik di Yogyakarta. Jalan ini terkenal sebagai pusat perbelanjaan, wisata, dan kegiatan budaya di kota ini. Jalan Malioboro memanjang sekitar 2,5 kilometer dari Tugu Yogyakarta hingga Keraton Yogyakarta. Jalan ini terdiri dari dua jalur yang dipisahkan oleh trotoar yang ramai dengan pedagang kaki lima, toko-toko, hotel, restoran, dan pusat perbelanjaan.',
      addr: 'Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta'),
  HomepageContents(
      img:
          'https://images.unsplash.com/photo-1578469550956-0e16b69c6a3d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=806&q=80',
      title: 'Candi Prambanan',
      desc:
          'Candi Prambanan adalah kompleks candi Hindu terbesar di Indonesia dan merupakan Situs Warisan Dunia UNESCO. Candi ini dibangun pada abad ke-9 oleh dinasti Sanjaya dan merupakan contoh arsitektur Hindu klasik yang megah. Candi Prambanan terkenal karena kemegahan dan keindahan relief-reliefnya serta menjadi salah satu tujuan wisata utama di Yogyakarta.',
      addr: 'Jl. Raya Solo - Yogyakarta No. 16, Prambanan, Sleman, Yogyakarta'),
  HomepageContents(
      img:
          'https://images.unsplash.com/photo-1630214801769-24784bfd2b9c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80',
      title: 'Taman Sari',
      desc:
          'Taman Sari adalah bekas kompleks taman dan kolam renang dari Keraton Yogyakarta, istana resmi Sultan Yogyakarta. Kompleks ini dibangun pada abad ke-18 sebagai tempat rekreasi dan tempat peristirahatan bagi keluarga kerajaan. Taman Sari memiliki nilai sejarah yang tinggi dan merupakan salah satu objek wisata terkenal di Yogyakarta.',
      addr: 'Jl. Tamanan, Patehan, Kraton, Yogyakarta.'),
  HomepageContents(
      img:
          'https://images.unsplash.com/photo-1629605924917-d2de56a40951?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      title: 'Pantai Parangtritis',
      desc:
          'Pantai Parangtritis adalah salah satu pantai terkenal di Yogyakarta dan merupakan destinasi wisata populer di wilayah tersebut. Pantai ini terletak sekitar 27 kilometer selatan Yogyakarta dan dikenal karena keindahan pemandangannya, pasir hitamnya yang unik, serta pesona olahraga selancar.',
      addr: 'Jl. Parangtritis, Kretek, Bantul, Yogyakarta.')
];
