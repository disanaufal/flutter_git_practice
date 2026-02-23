import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/counter_state.dart';
import '../widgets/primary_button.dart';
import 'profile_screen.dart';
import '../state/counter_status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterState>();

    Widget content;

    switch (state.status) {
      case CounterStatus.loading:
        content = const CircularProgressIndicator();
        break;

      case CounterStatus.error:
        content = Text(state.error ?? 'Unknown error');
        break;

      default:
        content = Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Counter: ${state.counter}'),
            PrimaryButton(
              label: 'Increment (Async)',
              onPressed: () {
                context.read<CounterState>().incrementAsync();
              },
            ),
            const SizedBox(height: 16),
            PrimaryButton(
              label: 'Go to Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ProfileScreen(),
                  ),
                );
              },
            ),
          ],
        );
    }

    return Scaffold(body: Center(child: content));
  }
}
