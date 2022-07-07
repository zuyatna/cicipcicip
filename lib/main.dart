import 'package:flutter/material.dart';
import 'theme/cicipcicip_theme.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CicipcicipTheme.dark();
    // TODO: Apply home widget
    return MaterialApp(
      theme: theme,
      title: 'Cicipcicip',
      home: const Home(),
    );
  }
}
