import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:superior/pages/carPage.dart';
import 'package:superior/pages/getStarted.dart';
import 'package:superior/pages/home.dart';
import 'package:superior/pages/pricingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Superior',
      theme: ThemeData(
        backgroundColor: Color(0xff000000),
        primaryColor: Color(0xffffffff),
        accentColor: Color(0xff79797D),
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "getStarted": (BuildContext _) => GetStartedPage(),
        "home": (BuildContext _) => HomePage(),
        "car": (BuildContext _) => CarPage(),
        "price": (BuildContext _) => PricingScreen(),
      },
      home: GetStartedPage(),
    );
  }
}
