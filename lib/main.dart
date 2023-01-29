import 'package:codigo6_whatsapp/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Manrope",
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF075e56),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xff10CE5F)),
      ),
      // theme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
      home: HomePage(),
    );
  }
}
