import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (_) => const HomeScreen()},
      onGenerateRoute: (settings) {
        if (settings.name == "/second") {
          final message = settings.arguments as String;

          return MaterialPageRoute(
            builder: (_) => SecondScreen(message: message),
          );
        }
        return null;
      },
    );
  }
}
