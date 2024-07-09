import 'package:adv_flutter_ch1/Stepper/horizontal_stepper.dart';
import 'package:adv_flutter_ch1/Stepper/vertical_srepper.dart';
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
      // home: DarkTheme(),
      initialRoute: '/vertical',
      routes: {
        '/' : (context)=> HorizontalStepper(),
        '/vertical' : (context)=> verticalStepper(),
      },
    );
  }
}
