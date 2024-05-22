import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print("initState() called for _CounterScreenState");
  }

  @override
  void dispose() {
    print("dispose() called for _CounterScreenState");
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      counter += 2;
      print("Counter updated to: $counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build() called for _CounterScreenState");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text(
          "Test-Seite",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hier kommt man hin!',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$counter',
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 234, 7, 7)),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: _incrementCounter,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 237, 104, 8),
                side: const BorderSide(
                    color: Color.fromARGB(255, 243, 33, 86), width: 2),
              ),
              child: const Text("Erhöhe um 2"),
            ),
          ],
        ),
      ),
    );
  }
}
