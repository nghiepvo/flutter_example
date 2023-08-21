import 'package:flutter/material.dart';
import 'package:flutter_example/constants/color.dart';
import 'package:flutter_example/pages/welcome/welcome_page.dart';

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
      title: 'Flutter Example',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          primaryColor: kPrimaryColor),
      home: const WelcomePage(),
    );
  }
}
