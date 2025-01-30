import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'contador',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;

      if (_counter > 20) {
        _decrementCounter();
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;

      if (_counter < 0) {
        _incrementCounter();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/a_mais_mais.jpg"),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CONTADOR DA MAIS MAIS:',
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.black),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: _incrementCounter,
                      child: const Text('ADICIONAR'),
                      style: ButtonStyle(
                          foregroundColor:
                              WidgetStateProperty.all(Colors.black),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.white)),
                    ),
                    TextButton(
                      onPressed: _decrementCounter,
                      child: const Text('SUBTRAIR'),
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all(Colors.black),
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
