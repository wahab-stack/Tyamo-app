import 'package:flutter/material.dart';
import 'package:tyamo/Views/Auth/login.dart';

void main() {
  runApp(Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saddam Steel Works',
      home: Login(),
    );
  }
}
