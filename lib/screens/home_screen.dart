import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PrimaryButton(
          label: 'Press Me',
          onPressed: () {
            // TODO: Handle button press
          },
        ),
      ),
    );
  }
}