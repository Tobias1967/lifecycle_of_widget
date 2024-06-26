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
    print("initState() aufgerufen für _CounterScreenState");
  }

  @override
  void dispose() {
    ///////////// Hier wird alles wieder gelöscht!
    print("dispose() aufgerufen für _CounterScreenState");
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      counter += 20;
      print("Zähler aktualisiert zu: $counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build() aufgerufen für _CounterScreenState");
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
