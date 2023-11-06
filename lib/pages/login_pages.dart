import 'package:flutter/services.dart';
import 'package:jogjatour/pages/forgotpass_page.dart';
import 'package:jogjatour/pages/main_pages.dart';
import 'package:jogjatour/pages/signup_page.dart';
import 'package:jogjatour/theme.dart';
import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

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
                padding: const EdgeInsets.only(top: 80, left: 20),
                child: Text(
                  "Masuk ke dalam",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 20),
                child: Text(
                  "Akun mu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160, left: 20),
                child: Text(
                  "Harap masuk untuk menggunakan Aplikasi",
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassPage()),
                          );
                        },
                        child: Text(
                          'Lupa Password?',
                          textAlign: TextAlign.center,
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPages()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 13),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 8, 130, 149),
                        minimumSize: Size(335, 45)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 105,
                        child: Divider(
                          height: 10,
                          thickness: 2,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Text(
                        "Atau Masuk",
                        textAlign: TextAlign.center,
                        style: blackTextStyle.copyWith(
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: 105,
                        child: Divider(
                          height: 10,
                          thickness: 2,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 142,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/logo_google.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Google"),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                              side: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 169, 169, 169))),
                        ),
                      ),
                      Container(
                        width: 142,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/logo_facebook.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Facebook"),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                              side: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 169, 169, 169))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun?",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        'Buat Akun',
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
          ),
        ],
      ),
    );
  }
}
