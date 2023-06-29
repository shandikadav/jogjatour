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
                            width: double.infinity, 
                            height: 170,
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
                  Column(
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
                  Column(
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
                  Column(
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
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                  Column(
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
                  Column(
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