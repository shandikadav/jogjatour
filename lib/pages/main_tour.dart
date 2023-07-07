import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jogjatour/pages/category_pages.dart';
import 'package:jogjatour/pages/homepages.dart';
import 'package:jogjatour/homepage_content.dart';
import 'searchpage.dart';

Widget validateData(String input) {
  if (input != dataHihihiha && input != dataTitle && input != dataTitles) {
    return Scaffold(
      body: Center(child: Text("Data tidak ada!")),
    );
  } else {
    List<HomepageContents> filteredContents =
        contents.where((data) => data.title == input).toList();

    if (filteredContents.isEmpty) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
          body: Center(child: Text("Data tidak ada!")),
        ),
      );
    } else {
      HomepageContents selectedContent = filteredContents.first;
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 10, 77, 104),
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    selectedContent.img,
                    width: double.infinity,
                    height: 245,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 215),
                  child: Container(
                    height: 425,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      color: Color.fromARGB(245, 10, 77, 104),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedContent.title,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(245, 245, 248, 255)),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Color.fromARGB(100, 245, 248, 255),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            selectedContent.addr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(245, 245, 248, 255)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "Deskripsi Wisata",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(245, 245, 248, 255)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            selectedContent.desc,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                                color: Color.fromARGB(245, 245, 248, 255)),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
  }
}

class MainTour extends StatelessWidget {
  final String data;

  const MainTour({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return validateData(data);
  }
}
