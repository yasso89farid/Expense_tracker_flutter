import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:login_page_final/view/screen/LoginPage.dart';
// ignore_for_file: avoid_print
// ignore: depend_on_referenced_packages, unused_import
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoarding(),
    );
  }
}

