import 'package:flutter/material.dart';
import 'package:my_daily/screens/form_task.dart';
import 'package:my_daily/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Daily',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.white),
        primaryColor: Color.fromRGBO(3, 48, 67, 1),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(3, 48, 67, 1),
        ),
        useMaterial3: true,
      ),
      home: FormTask(),
    );
  }
}
