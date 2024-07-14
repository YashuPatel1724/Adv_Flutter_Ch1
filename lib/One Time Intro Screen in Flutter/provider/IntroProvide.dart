import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Introprovider extends ChangeNotifier
{
  bool intro = false;
  late SharedPreferences sharedPreferences;

   Future<void> setHome(bool intro)
   async {
     sharedPreferences = await SharedPreferences.getInstance();
     sharedPreferences.setBool('intro', intro);
   }

  void removeIntro()
  {
    intro = true;
    setHome(intro);
    notifyListeners();
  }

   // Future<void> getHome()
   // async {
   //   sharedPreferences = await SharedPreferences.getInstance();
   //   intro = sharedPreferences.getBool('intro') ?? false;
   // }
   Introprovider(intros)
   {
     intro = intros;
     notifyListeners();
   }
}