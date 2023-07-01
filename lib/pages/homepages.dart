import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jogjatour/homepage_content.dart';
import 'category_pages.dart';
import 'main_tour.dart';
import 'notif_page.dart';

String dataHihihiha = '';


class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(245, 248, 255, 255),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo_jtour_black.png',
                    height: 20,
                    width: 80,
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/notif.png',
                      height: 30,
                      width: 30,
                    ), onPressed: () { 
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationPage()),
                    );
                     },
                  ),
                  Image.asset(
                    'assets/profile.png',
                    height: 50,
                    width: 50,
                  )
                ],
              ),
              SizedBox(height: 18,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Cari wisata disini',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
                style: TextStyle(
                  fontSize: 11
                ),
              ),
              
              SizedBox(height: 2,),
              Row(
                children: [
                  Container(
                    child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Rekomendasi Terpopuler',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16,
                            )
                          ),
                        ),
                  ),
                ],
              ),
              SizedBox(height: 4,),
              CarouselSlider(options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                viewportFraction: 0.6,
                height: 170,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeFactor: 0.3,
              ),
              items: contents
            .map((item) => Stack(
              children: [
                InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                        child:
                            Image.asset(item.img, 
                            fit: BoxFit.cover,
                            width: 400, 
                            height: 170,
                            ),
                  ),
                  onTap: () {
                    dataHihihiha = item.title;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainTour(data: dataHihihiha)),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 135),
                  child: Container(
                    height: 35,
                    color: Color.fromARGB(150, 0, 0, 0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:145, left: 10),
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),),
                )
              ],
            )
                )
            .toList(),
              ),
              SizedBox(height: 2,),
              Row(
                children: [
                  Container(
                    child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Kategori',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16,
                            )
                          ),
                        ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Color.fromARGB(255, 252, 153, 145),
                          child: Image.asset('assets/makanan.png',
                          height: 15,
                          width: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Wisata Kuliner",
                          style: TextStyle(
                            fontSize: 11
                          ),),
                        )
                      ],
                    ),
                    onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CategoryPage()),
                        );
                        },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Color.fromARGB(255, 147, 193, 117),
                          child: Image.asset('assets/alam.png',
                          height: 15,
                          width: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Wisata Alam",
                          style: TextStyle(
                            fontSize: 11
                          ),),
                        )
                      ],
                    ),
                    onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CategoryPage()),
                        );
                        },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Color.fromARGB(255, 126, 142, 248),
                          child: Image.asset('assets/sejarah.png',
                          height: 15,
                          width: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Wisata Budaya",
                          style: TextStyle(
                            fontSize: 11
                          ),),
                        )
                      ],
                    ),
                    onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CategoryPage()),
                        );
                        },
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Color.fromARGB(255, 251, 186, 184),
                          child: Image.asset('assets/Mosque.png',
                          height: 15,
                          width: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Wisata Religi",
                          style: TextStyle(
                            fontSize: 11
                          ),),
                        )
                      ],
                    ),
                    onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CategoryPage()),
                        );
                        },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Color.fromARGB(255, 167, 147, 244),
                          child: Image.asset('assets/topi.png',
                          height: 15,
                          width: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Wisata Cerdas",
                          style: TextStyle(
                            fontSize: 11
                          ),),
                        )
                      ],
                    ),
                    onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CategoryPage()),
                        );
                        },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Color.fromARGB(255, 255, 231, 161),
                          child: Image.asset('assets/farm.png',
                          height: 15,
                          width: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Wisata Pertani",
                          style: TextStyle(
                            fontSize: 11
                          ),),
                        ),
                      ],
                    ),
                    onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CategoryPage()),
                        );
                        },
                  ),
                ],
              )
            ],
          ),     
        ),
      ),
    );
  }
}