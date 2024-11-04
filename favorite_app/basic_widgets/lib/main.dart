import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.resetCallback});

  final VoidCallback resetCallback;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Count: $_counter'),
        const SizedBox(width: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _increment,
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: _decrement,
              child: const Text('Decrement'),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class TutorialHome extends StatefulWidget {
  const TutorialHome({super.key});

  @override
  State<TutorialHome> createState() => _TutorialHomeState();
}

class _TutorialHomeState extends State<TutorialHome> {
  late final _counterKey = GlobalKey<_CounterState>();

  void _resetCounter() {
    _counterKey.currentState?._resetCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {
            // Add functionality here
          },
        ),
        title: const Text(
          'Counter',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              // Add functionality here
            },
          ),
        ],
        backgroundColor: Color.fromARGB(255, 248, 186, 16),
      ),
      body: Counter(
        key: _counterKey,
        resetCallback: _resetCounter,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Reset',
        onPressed: _resetCounter,
        child: const Icon(Icons.delete), // เปลี่ยนเป็นรูปถังขยะ
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: TutorialHome(),
    ),
  );
}
