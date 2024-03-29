// ignore_for_file: prefer_const_constructors , prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/theme/dark_theme.dart';
import 'package:vendor/theme/light_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.downToUp,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

    );
  }
}


