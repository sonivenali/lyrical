import 'package:flutter/material.dart';
import 'package:lyrical/home_screen.dart';

void main() {
  runApp(Lyrical());
}

class Lyrical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
