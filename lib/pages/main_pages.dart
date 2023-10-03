import 'package:flutter/material.dart';
import 'package:jogjatour/pages/favorite.dart';
import 'package:jogjatour/pages/homepages.dart';
import 'package:jogjatour/pages/profile.dart';
import 'package:jogjatour/pages/searchpage.dart';

int currentIndex = 0;

List pages = [
  HomePages(),
  Searchpage(),
  FavoritePage(),
  ProfilePage(),
];



class MainPages extends StatefulWidget {
  const MainPages({super.key});
  

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  void onTap(int index) {
  setState(() {
    currentIndex = index;
  });

  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home_filled)),
        BottomNavigationBarItem(label: "",icon: Icon(Icons.search)),
        BottomNavigationBarItem(label: "",icon: Icon(Icons.favorite_border_outlined)),
        BottomNavigationBarItem(label: "",icon: Icon(Icons.person)),
      ]),
    );
  }
}
