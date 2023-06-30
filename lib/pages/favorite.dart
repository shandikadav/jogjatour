import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 248, 255, 255),
      appBar: AppBar(title: Text("Favorite",
      style: TextStyle(
        fontSize: 18
      ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromARGB(255, 8, 130, 149),
      ),
      body: Center(child: Text("Belum ada wisata favorit yang ditambahkan",
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 13
      ),)),
    );
  }
}