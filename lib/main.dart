import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  void _incrementCounter() {
    setState(() {
      counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text(
          "Zähler App",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Der aktuelle Wert ist:',
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
