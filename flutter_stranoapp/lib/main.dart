import 'package:flutter/material.dart';
import 'package:flutter_stranoapp/pages/Homepage.dart';
import 'package:flutter_stranoapp/pages/ItemPage.dart';
import 'package:flutter_stranoapp/pages/cartPage.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => HomePage(),
        "ItemPage" : (context) => ItemPage(),
      },
    );
}
} 