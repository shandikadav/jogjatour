import 'package:flutter/material.dart';
import 'package:jogjatour/homepage_content.dart';
import 'package:jogjatour/pages/main_tour.dart';

String dataTitle = '';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  List<HomepageContents> filteredsContents = []; // Daftar konten yang sudah difilter
  List<HomepageContents> allContents = contents; // Daftar semua konten

  void updateContent(String value) {
    setState(() {
      filteredsContents = allContents
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(245, 248, 255, 255),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Cari Tempat Wisata",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => updateContent(value),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Misal: Jalan Malioboro",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color.fromARGB(255, 5, 191, 219),
                ),
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredsContents.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      dataTitle = filteredsContents[index].title;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MainTour(data: dataTitle),
                        ),
                      );
                    },
                    contentPadding: EdgeInsets.all(25),
                    title: Text(
                      filteredsContents[index].title,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        filteredsContents[index].img,
                        fit: BoxFit.cover,
                        width: 70,
                        height: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
