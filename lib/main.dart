import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/controller/news_cubit.dart';
import 'package:news/utils/light_mood.dart';
import 'package:news/views/home_screen/home_view.dart';

void main() {
  runApp(
      BlocProvider(
    create: (context) => NewsCubit(),
    child:const MyApp(),
  ));
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

