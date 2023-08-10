import 'package:flutter/material.dart';
import 'package:news/utils/light_mood.dart';
import 'package:news/views/home_screen/home_view.dart';

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
    theme: LightMood.lightTheme,
      home: const HomeView(),
    );
  }
}

