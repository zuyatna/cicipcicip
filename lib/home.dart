import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cicipcicip',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: Center(
        child: Text(
          'Let\'s get cooking 👩‍🍳',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO: Add bottom navigation bar
    );
  }
}
