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
    final primaryColor = Colors.grey;

    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const Text('FABs'),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ),
          const SizedBox(height: 24),
          const Text('FlexIconButton'),
          const SizedBox(height: 8),
          FlexIconButton(
            icon: const Icon(Icons.edit),
            fillColor: Theme.of(context).colorScheme.primary,
            text: 'Edit',
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: M3eFab.menu(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FlexIconButton(
              icon: const Icon(Icons.edit),
              fillColor: primaryColor,
              text: 'Edit',
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            FlexIconButton(
              icon: const Icon(Icons.share),
              fillColor: primaryColor,
              text: 'Share',
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            FlexIconButton(
              icon: const Icon(Icons.calendar_month),
              fillColor: primaryColor,
              text: 'Calendar Month',
              onPressed: () {},
            ),
          ],
        ),
        color: Theme.of(context).colorScheme.primary,
        icon: Icons.menu,
        openColor: Colors.grey.shade400,
        openAsCircle: true,
      ),
    );
  }
}
