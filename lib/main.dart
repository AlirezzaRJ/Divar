
import 'package:divar/ui/welcomepage/welcome_page.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Constants.backgroundColor,
          body: const  WelcomePage(),
        ),
      ),
    );
  }
}
