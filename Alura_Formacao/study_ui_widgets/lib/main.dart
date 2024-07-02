import 'package:flutter/material.dart';
import 'package:study_ui_widgets/teste.dart';

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
          colorScheme:
              ColorScheme.light(primary: Color.fromARGB(255, 212, 239, 3)),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.amber,
            elevation: 5.0,
            shadowColor: Theme.of(context).colorScheme.shadow,
          ),
          useMaterial3: true,
        ),
        home: Teste());
  }
}
