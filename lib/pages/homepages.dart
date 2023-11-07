import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:jogjatour/homepage_content.dart';
import 'category_pages.dart';
import 'main_tour.dart';
import 'notif_page.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 27, 22, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/profile.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Selamat Datang',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300)),
                              Text(
                                'Guido Augusta',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Icon(Icons.notifications_none_outlined),
                        iconSize: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF5F8FF),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFF05BFDB)),
                        ),
                        hintText: 'Cari wisata disini',
                        hintStyle:
                            TextStyle(height: 0.7, fontWeight: FontWeight.w100),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Semua',
                          style: TextStyle(fontSize: 12),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF05BFDB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Populer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Rekomendasi',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Paling dilihat',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 8),
                    child: CarouselSlider(
                      items: [
                        cardSlider(
                            title: 'Jalan Malioboro',
                            alamat:
                                'Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta',
                            image: 'assets/jalan_malioboro.png'),
                        cardSlider(
                            title: 'Umbul Saren',
                            alamat:
                                'Wedomartani, Sleman, Kabupaten Sleman, Daerah Istimewa Yogyakarta',
                            image: 'assets/umbul_saren.png'),
                      ],
                      options: CarouselOptions(
                        height: 230,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        viewportFraction: 0.57,
                        enlargeCenterPage: false,
                        // aspectRatio: 15 / 5,
                        enableInfiniteScroll: true,
                        padEnds: false,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Destinasi Terdekat',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lihat Semua',
                          style: TextStyle(
                              color: Color.fromARGB(130, 0, 0, 0),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  destinasiTerdekat(
                    title: 'Umbul Saren',
                    alamat:
                        'Wedomartani, Sleman, Kabupaten Sleman, Daerah Istimewa Yogyakarta',
                    image: 'assets/umbul_saren.png',
                    jarak: '4 km',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  destinasiTerdekat(
                    title: 'Jalan Malioboro',
                    alamat:
                        'Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta',
                    image: 'assets/jalan_malioboro.png',
                    jarak: '7.5 km',
                  ),
                  destinasiTerdekat(
                    title: 'Umbul Saren',
                    alamat:
                        'Wedomartani, Sleman, Kabupaten Sleman, Daerah Istimewa Yogyakarta',
                    image: 'assets/umbul_saren.png',
                    jarak: '4 km',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  destinasiTerdekat(
                    title: 'Jalan Malioboro',
                    alamat:
                        'Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta',
                    image: 'assets/jalan_malioboro.png',
                    jarak: '7.5 km',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class destinasiTerdekat extends StatelessWidget {
  final String title;
  final String alamat;
  final String image;
  final String jarak;

  destinasiTerdekat(
      {required this.title,
      required this.alamat,
      required this.image,
      required this.jarak});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 170,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF05BFDB),
                          size: 20,
                        ),
                        Expanded(
                          child: Text(
                            alamat,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 41,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 40,
                    height: 13,
                    decoration: BoxDecoration(
                      color: Color(0xFF05BFDB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        jarak,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class cardSlider extends StatelessWidget {
  final String title;
  final String alamat;
  final String image;
  cardSlider({required this.title, required this.alamat, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: Container(
        width: 185,
        height: 230,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              SizedBox(
                height: 6,
              ),
              Text(title),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF05BFDB),
                    size: 20,
                  ),
                  Expanded(
                    child: Text(
                      alamat,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
