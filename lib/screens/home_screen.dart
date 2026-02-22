import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Home Screen'),
            const SizedBox(height: 16),
            PrimaryButton(
              label: 'Go to Second Screen',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: 'Hello from Home Screen!',
                );
              },
            ),
            const SizedBox(height: 12),
            PrimaryButton(
              label: 'Go to Counter Screen',
              onPressed: () {
                Navigator.pushNamed(context, '/counter');
              },
            ),
          ],
        ),
      ),
    );
  }
}
