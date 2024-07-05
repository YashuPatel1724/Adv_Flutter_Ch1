import 'package:flutter/material.dart';

import ' Switch Dark Theme to Light Theme/dark_and_ligth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DarkTheme(),
    );
  }
}
