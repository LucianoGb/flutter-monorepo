import 'package:flutter/material.dart';
import 'package:widgets/data/task_inherited.dart';
import 'package:widgets/screens/form_screen.dart';
import 'package:widgets/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const int _primaryValue = 0xFF6200EA;
  static const MaterialColor myPrimarySwatch =
      MaterialColor(_primaryValue, <int, Color>{
    50: Color(0xFFE8EAF6),
    100: Color(0xFFC5CAE9),
    200: Color(0xFF9FA8DA),
    300: Color(0xFF7986CB),
    400: Color(0xFF5C6BC0),
    500: Color(_primaryValue),
    600: Color(0xFF3949AB),
    700: Color(0xFF303F9F),
    800: Color(0xFF283593),
    900: Color(0xFF1A237E),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          primarySwatch: myPrimarySwatch,
          primaryColor: myPrimarySwatch[900],
        ),
        //HomePage(color: myPrimarySwatch[900]))
        home: TaskInherited(child: const HomePage()));
  }
}
