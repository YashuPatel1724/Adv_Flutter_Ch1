import 'package:adv_flutter_ch1/Contact%20Us%20Page%20With%20Interaction/view/screen/urlProvider.dart';
import 'package:adv_flutter_ch1/One%20Time%20Intro%20Screen%20in%20Flutter/provider/IntroProvide.dart';
import 'package:adv_flutter_ch1/One%20Time%20Intro%20Screen%20in%20Flutter/view/IntroScreen1.dart';
import 'package:adv_flutter_ch1/One%20Time%20Intro%20Screen%20in%20Flutter/view/homePage.dart';
import 'package:adv_flutter_ch1/Provider%20&%20Change%20Theme%20using%20Provider/View/componts/chaneTheme.dart';
import 'package:adv_flutter_ch1/Quotes%20Data%20Solving%20with%20Provider/provider/quoteProvider.dart';
import 'package:adv_flutter_ch1/Quotes%20Data%20Solving%20with%20Provider/view/addQuote.dart';
import 'package:adv_flutter_ch1/Stepper/horizontal_stepper.dart';
import 'package:adv_flutter_ch1/Stepper/vertical_srepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import ' Switch Dark Theme to Light Theme/dark_and_ligth.dart';
import 'Contact Us Page With Interaction/provider/urlProvider.dart';
import 'One Time Intro Screen in Flutter/view/introScreen2.dart';
import 'One Time Intro Screen in Flutter/view/introScreen3.dart';
import 'Provider & Change Theme using Provider/Provider/Theme _Provider.dart';
import 'Provider & Change Theme using Provider/View/Change_Theme_using_Provider.dart';

Future<void> main() async {
  runApp(
    ChangeNotifierProvider(
        create: (context) => Urlprovider(),
        builder: (context, child) => MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UrlLauncher(),
    );
  }
}
