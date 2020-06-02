import 'package:flutter/material.dart';
import 'package:food_ordering_app/pages/cart.dart';
import 'package:food_ordering_app/pages/detail.dart';
import 'package:food_ordering_app/pages/home.dart';
import 'package:food_ordering_app/uidata.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ordering App',
      theme: ThemeData(
        textTheme: GoogleFonts.ptSansTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        UIData.homePageRoute: (BuildContext context) => HomePage(),
        UIData.detailPageRoute: (BuildContext context) => DetailPage(),
        UIData.cartRoute: (BuildContext context) => CartPage()
      }
    );
  }
}
