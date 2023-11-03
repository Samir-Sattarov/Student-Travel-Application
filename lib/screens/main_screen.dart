import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => MainScreen());

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
