import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'state/counter_state.dart';
import 'screens/home_screen.dart';
import 'data/counter_repository.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterState(CounterRepository()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
/*class MyApp extends StatelessWidget {
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
        if (settings.name == "/counter") {
          return MaterialPageRoute(builder: (_) => const CounterScreen());
        }
        return null;
      },
    );
  }
} */
