import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Text(
            '$counter',
            style: const TextStyle(
              fontSize: 100,
              color: Colors.black26,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                if (counter != 0) counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 40,
            ),
            FloatingActionButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
