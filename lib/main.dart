import 'package:flutter/material.dart';
import 'package:navigation_bar_lesson/pages/bottom_navy_bar_package_page_1.dart';
import 'package:navigation_bar_lesson/pages/curved_navigation_bar_package_1.dart';
import 'package:navigation_bar_lesson/pages/navigaion_bar_pages_1.dart';

import 'pages/bottom_navigation_bar_page_1.dart';
import 'pages/google_nav_bar_package_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationBar1(),
    );
  }
}
