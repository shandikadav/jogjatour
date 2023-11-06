import 'package:flutter/services.dart';
import 'package:jogjatour/pages/forgotpass_page.dart';
import 'package:jogjatour/pages/main_pages.dart';
import 'package:jogjatour/pages/register_page.dart';
import 'package:jogjatour/theme.dart';
import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

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
                      height: 80,
                    ),
                    Text(
                      "Selamat Datang!",
                      style: TextStyle(fontSize: 38),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text("Masuk untuk lanjut kedalam aplikasi",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(5, 191, 219, 0.6),
                        )),
                    SizedBox(
                      height: 60,
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
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Lupa Password?",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        )),
                    TextButton(
                      onPressed: () {},
                      child: Text("Buat akun",
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
