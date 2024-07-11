import 'package:adv_flutter_ch1/Provider%20&%20Change%20Theme%20using%20Provider/View/componts/chaneTheme.dart';
import 'package:adv_flutter_ch1/Quotes%20Data%20Solving%20with%20Provider/provider/quoteProvider.dart';
import 'package:adv_flutter_ch1/Quotes%20Data%20Solving%20with%20Provider/view/addQuote.dart';
import 'package:adv_flutter_ch1/Stepper/horizontal_stepper.dart';
import 'package:adv_flutter_ch1/Stepper/vertical_srepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import ' Switch Dark Theme to Light Theme/dark_and_ligth.dart';
import 'Provider & Change Theme using Provider/Provider/Theme _Provider.dart';
import 'Provider & Change Theme using Provider/View/Change_Theme_using_Provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => ThemeProvider(),
    //   builder: (context, child) => MaterialApp(
    //     // theme: GlobalTheme.lightTheme,
    //     // darkTheme: GlobalTheme.darkTheme,
    //     // themeMode: Provider.of<ThemeProvider>(context, listen: true).isDark
    //     //     ? ThemeMode.dark
    //     //     : ThemeMode.light,
    //     debugShowCheckedModeBanner: false,
    //     // home: DarkTheme(),
    //     // initialRoute: '/vertical',
    //     // routes: {
    //     //   '/' : (context)=> HorizontalStepper(),
    //     //   '/vertical' : (context)=> verticalStepper(),
    //     // },
    //     home: ChangeTheme(),
    //   ),
    // );
    return ChangeNotifierProvider(create: (context) => QuotesProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NewQuotes(),
      ),
    );
  }
}
