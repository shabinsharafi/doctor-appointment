import 'package:doctor_app/styles.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: Styles.fontFamilyRegular,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, background: Colors.grey.shade50),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
