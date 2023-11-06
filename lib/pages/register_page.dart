import 'package:flutter/services.dart';
import 'package:jogjatour/pages/login_pages.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));

    return Scaffold(
        body: Column(children: [
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
              "Buat Akun",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 20),
            child: Text(
              "Buat akun untuk menggunakan Aplikasi",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Expanded(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Nama Lengkap',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  hintText: 'Masukan Nama Lengkap',
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Username',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  hintText: 'Masukan Username',
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  hintText: 'Masukkan Password',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                style: TextStyle(fontSize: 14),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Ulangi Password',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  hintText: 'Ulangi Password',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                style: TextStyle(fontSize: 14),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Daftar',
                  style: TextStyle(fontSize: 13),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 8, 130, 149),
                    minimumSize: Size(335, 45)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sudah punya akun?",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPages()),
                    );
                  },
                  child: Text(
                    'Masuk',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 10, 77, 104),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )
    ]));
  }
}
