import 'package:flutter/material.dart';
import 'package:m3_expressive_flutter/m3_expressive_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Column(
        children: [
          Center(
            child: Shapes.Circle(
              size: 100,
              image: NetworkImage('https://placehold.jp/150x150.png'),
            ),
          ),
          Center(child: Shapes.Circle(size: 100, color: Colors.orange)),
        ],
      ),
    );
  }
}
