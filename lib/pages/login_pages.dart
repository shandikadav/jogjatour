// import 'dart:ffi';
// import 'dart:html';

import 'package:jogjatour/pages/main_pages.dart';
import 'package:jogjatour/theme.dart';
import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(245, 248, 255, 255),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 110),
              Center(
                child: Image.asset(
                  'assets/logo_jtour_blue.png',
                  width: 271,
                  height: 111,
                ),
              ),
              SizedBox(height: 108),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  hintText: 'Masukan Username',
                  border: InputBorder.none,
                  
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  hintText: 'Masukkan Password',
                  border: InputBorder.none,
                  
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lupa Password?',
                      textAlign: TextAlign.center,
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPages()),
                    );
                  },
                  child: Text('Login Sekarang'),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 8, 130, 149),
                      minimumSize: Size(335, 52)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Buat Akun',
                    style: blackTextStyle.copyWith(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
