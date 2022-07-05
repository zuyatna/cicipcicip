import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    // TODO: Apply home widget
    return MaterialApp(
      // TODO: Add theme
      title: 'Cicipcicip',
      home: Scaffold(
        // TODO: Style the title
        appBar: AppBar(
          title: const Text('Cicipcicip'),
        ),
        // TODO: Style the body
        body: const Center(
          child: Text('Let\'s get cooking 👩‍🍳'),
        ),
      ),
    );
  }
}
