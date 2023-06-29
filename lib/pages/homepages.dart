import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jogjatour/homepage_content.dart';
import 'package:jogjatour/pages/favorite.dart';

import 'notif_page.dart';


class HomePages extends StatelessWidget {
  const HomePages({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(245, 248, 255, 255),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo_jtour_black.png',
                    height: 28,
                    width: 80,
                  ),
                  SizedBox(
                    width: 150,
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
                    height: 55,
                    width: 55,
                  )
                ],
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Cari wisata disini',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              
              SizedBox(height: 10,),
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
                              fontSize: 20,
                            )
                          ),
                        ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              CarouselSlider(options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                viewportFraction: 0.6,
                height: 240,
                autoPlay: true,
              ),
              items: contents
            .map((item) => Stack(
              children: [
                InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                        child:
                            Image.network(item.img, 
                            fit: BoxFit.cover, 
                            width: 1000, 
                            height: 253,
                            ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FavoritePage()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190),
                  child: Container(
                    height: 55,
                    color: Color.fromARGB(150, 0, 0, 0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:204, left: 20),
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                )
              ],
            )
                )
            .toList(),
              ),
              SizedBox(height: 10,),
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
                              fontSize: 20,
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
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        color: Color.fromARGB(255, 252, 153, 145),
                        child: Image.asset('assets/makanan.png',
                        height: 30,
                        width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Wisata Kuliner"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        color: Color.fromARGB(255, 147, 193, 117),
                        child: Image.asset('assets/alam.png',
                        height: 30,
                        width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Wisata Alam"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        color: Color.fromARGB(255, 126, 142, 248),
                        child: Image.asset('assets/sejarah.png',
                        height: 30,
                        width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Wisata Budaya"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        color: Color.fromARGB(255, 251, 186, 184),
                        child: Image.asset('assets/Mosque.png',
                        height: 30,
                        width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Wisata Religi"),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:2),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          color: Color.fromARGB(255, 167, 147, 244),
                          child: Image.asset('assets/topi.png',
                          height: 30,
                          width: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Wisata Cerdas"),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        color: Color.fromARGB(255, 255, 231, 161),
                        child: Image.asset('assets/farm.png',
                        height: 30,
                        width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Wisata Pertanian"),
                      ),
                    ],
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

// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           child: Container(
//             margin: EdgeInsets.all(5.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                     Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [
//                               Color.fromARGB(200, 0, 0, 0),
//                               Color.fromARGB(0, 0, 0, 0)
//                             ],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topCenter,
//                           ),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                         child: Text(
//                           'No. ${imgList.indexOf(item)} image',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//         ))
//     .toList();