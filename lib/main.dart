import 'package:flutter/material.dart';
import 'ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness:  isDarkMode ? Brightness.dark : Brightness.light,
      ),
      home: HomePage(onToogleTheme: toogleTheme),
    );
  }

  void toogleTheme(value) {
    setState(() {
      isDarkMode = value;
    });
  }
}
