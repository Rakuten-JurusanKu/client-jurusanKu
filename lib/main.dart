import 'package:fe_jurusanku/pages/home/home_page.dart';
import 'package:fe_jurusanku/pages/jurusan_page.dart';
import 'package:fe_jurusanku/pages/main_page.dart';
import 'package:fe_jurusanku/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => SplashPage(),
        '/sign-in' :(context) => SignInPage(),
        '/home' :(context) => MainPage(),
        '/jurusan' :(context) => JurusanPage(),
      },
    );
  }
}