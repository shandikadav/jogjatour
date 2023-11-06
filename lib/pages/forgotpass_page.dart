import 'package:flutter/services.dart';
import 'package:jogjatour/pages/main_pages.dart';
import 'package:flutter/material.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Color.fromARGB(255, 8, 131, 149),
                height: 250,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 150),
                child: Container(
                  width: 208,
                  height: 214,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(50, 5, 191, 219),
                      shape: BoxShape.circle),
                ),
              ),
              Container(
                width: 208,
                height: 214,
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 5, 191, 219),
                    shape: BoxShape.circle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 20),
                child: Text(
                  "Lupa Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160, left: 20),
                child: Text(
                  "Masukkan Email untuk melakukan reset Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 246, 246, 246),
                labelText: 'Masukkan Email',
                labelStyle:
                    TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Lanjutkan',
                style: TextStyle(fontSize: 13),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 8, 130, 149),
                  minimumSize: Size(335, 45)),
            ),
          ),
        ],
      ),
    );
  }
}
