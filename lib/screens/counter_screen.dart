import "package:flutter/material.dart";

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CounterDisplay(count: count),
            const SizedBox(height: 16),
            CounterButton(onIncrement: increment),
          ],
        ),
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  final int count;

  const CounterDisplay({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      count.toString(),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class CounterButton extends StatelessWidget {
  final VoidCallback onIncrement;

  const CounterButton({
    super.key,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onIncrement,
      child: const Text('Increment'),
    );
  }
}