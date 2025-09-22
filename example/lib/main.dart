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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
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
      body: Column(children: [_Container(child: const _Fabs())]),
      floatingActionButton: M3eFab.regular(
        icon: const Icon(Icons.add),
        color: Theme.of(context).colorScheme.primary,
        onPressed: () {},
      ),
    );
  }
}

class _Fabs extends StatelessWidget {
  const _Fabs();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        M3eFab.small(
          icon: const Icon(Icons.add),
          color: Colors.purple,
          onPressed: () {},
        ),
        M3eFab.regular(
          icon: const Icon(Icons.add),
          color: Colors.purple,
          onPressed: () {},
        ),
        M3eFab.large(
          icon: const Icon(Icons.add),
          color: Colors.purple,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _Container extends StatelessWidget {
  final Widget child;
  const _Container({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(padding: const EdgeInsets.all(8.0), child: child),
    );
  }
}
