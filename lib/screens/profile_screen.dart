import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/counter_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterState>().counter;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Counter: $counter'),
            ElevatedButton(
              onPressed: () {
                context.read<CounterState>().increment();
              },
              child: const Text('Increment from Profile'),
            ),
          ],
        ),
      ),
    );
  }
}