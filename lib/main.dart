import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(const ResultApp());
}

class ResultApp extends StatelessWidget {
  const ResultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Result Nepal",
      home: LoginPage(),
    );
  }
}
