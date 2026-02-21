import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PrimaryButton(
          label: 'Go to Second Screen',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SecondScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}