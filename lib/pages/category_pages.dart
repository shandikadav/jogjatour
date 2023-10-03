import 'package:flutter/material.dart';
import 'package:jogjatour/homepage_content.dart';
import 'package:jogjatour/pages/main_tour.dart';

String dataTitles = '';

Widget validateData(String input) {
  List<HomepageContents> filteredContents =
      contents.where((element) => element.cat == input.toLowerCase()).toList();

  if (filteredContents.isEmpty) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 130, 149),
        title: Text(input,
        style: TextStyle(
          fontSize: 17
        ),
        ),
      ),
      body: Center(child: Text("Data tidak ada!")),
    );
  } else {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 130, 149),
        title: Text(input,
        style: TextStyle(
          fontSize: 17
        ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredContents.length,
        itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    dataTitles = filteredContents[index].title;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MainTour(data: dataTitles),
                      ),
                    );
                  },
                  contentPadding: EdgeInsets.all(25),
                  title: Text(
                    filteredContents[index].title,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      filteredContents[index].img,
                      fit: BoxFit.cover,
                      width: 70,
                      height: 50,
                    ),
                  ),
                ),
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String dataCat;

  const CategoryPage({Key? key, required this.dataCat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return validateData(dataCat);
  }
}
