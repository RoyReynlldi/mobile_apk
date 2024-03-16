import 'package:flutter/material.dart';
import 'Login_page.dart';
import 'Home_page.dart';
import 'SplashScreen.dart'; 
// import 'Scrollbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
   };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'nunito',
      ),
      
      home: SplashScreen(),
      routes: routes,
    );
  }
}