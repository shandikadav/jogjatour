import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jogjatour/pages/favorite.dart';
import 'package:jogjatour/pages/homepages.dart';
import 'package:jogjatour/pages/login_pages.dart';
import 'package:jogjatour/pages/main_pages.dart';
import 'package:jogjatour/pages/on_board.dart';
import 'package:jogjatour/pages/profile.dart';
import 'package:jogjatour/pages/searchpage.dart';
import 'package:jogjatour/pages/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPages(),
        '/on-boarding': (context) => OnBoardingPages(),
        '/login' :(context) => LoginPages(),
        '/mainpage' :(context) => MainPages(),
        '/homepage' :(context) => HomePages(),
        '/search' :(context) => Searchpage(),
        '/favorite' :(context) => FavoritePage(),
        '/profile' :(context) => ProfilePage(),
      },
    );
  }
}
