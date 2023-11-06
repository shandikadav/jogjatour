import 'package:flutter/services.dart';
import 'package:jogjatour/pages/forgotpass_page.dart';
import 'package:jogjatour/pages/login_pages.dart';
import 'package:jogjatour/pages/main_pages.dart';
import 'package:jogjatour/pages/signup_page.dart';
import 'package:jogjatour/theme.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Buat Akun",
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text("Buat akun untuk menggunakan aplikasi",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                        )),
                    SizedBox(
                      height: 60,
                    ),
                    Text("Nama Lengkap",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        )),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 38,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Username",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        )),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 38,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Password",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        )),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 38,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Konfirmasi Password",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        )),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 38,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const MainPages())));
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(5, 191, 219, 1),
                          shape: StadiumBorder(),
                          fixedSize: Size(200, 52),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah punya akun?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPages()));
                      },
                      child: Text("Masuk",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(5, 191, 219, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
