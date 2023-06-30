import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jogjatour/pages/homepages.dart';
import 'package:jogjatour/homepage_content.dart';


Widget validateData(String input) {
  if (input != dataHihihiha) {
    return Scaffold(
      body: Center(child: Text("Data tidak ada!")),
    );
  } else {
    List<HomepageContents> filteredContents = contents
        .where((data) => data.title == input)
        .toList();

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
        backgroundColor: Color.fromARGB(245, 248, 255, 255),
        body: Column(
          children: [
            Stack(
              children: [ClipRRect(
                child: Image.network(selectedContent.img,
                width: double.infinity,
                height: 245,
                fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 215),
                child: Container(
                height: 425,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                  color: Color.fromARGB(245, 248, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(selectedContent.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),),
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
    return validateData(dataHihihiha);
  }
}
