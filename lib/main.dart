import 'package:aroshatest/UI/MainPage.dart';
import 'package:aroshatest/UI/SplashScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AroshaTwitter',
      theme: ThemeData(
        dividerColor: Colors.transparent,
        highlightColor: Colors.black45,
        accentColor: Colors.black12,
        primarySwatch: Colors.blue,
        fontFamily: 'MalikTrial',

      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        '/Home' : (context) => AppMainPage()
      },
    );
  }
}

