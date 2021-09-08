import 'package:chats_app/pages/HomePage.dart';
import 'package:chats_app/pages/DetailPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      routes: {
      '/' : (context) => HomePage(),
      '/detail' : (context) => Detail(),
      }
      ,
    );
  }
}
