import 'package:flutter/material.dart';
import 'package:instagram_clone/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        fontFamily: 'noto',
        primarySwatch: Colors.pink,
      ),
      home: const MainPage(),
    );
  }
}
