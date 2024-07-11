import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Theme _Provider.dart';
import 'componts/row.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProviderTrue = Provider.of<ThemeProvider>(context,listen: true);
    ThemeProvider themeProviderfalse = Provider.of<ThemeProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Changer', style: TextStyle(fontSize: 20, letterSpacing: 0.5),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(
            child: CircleAvatar(
              maxRadius: 60,
              child: Image.asset('Asset/images/profile.png'),
            ),
          ),
          Text('Testing User',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 50, right: 20),
            child: Row(
              children: [
                Icon(Provider.of<ThemeProvider>(context, listen: true).isDark ? CupertinoIcons.moon_fill : Icons.sunny, size: 28, color: Theme.of(context).colorScheme.surface,),
                SizedBox(width: 25,),
                Text(Provider.of<ThemeProvider>(context, listen: true).isDark ? 'Dark Mode' : 'Light Mode',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Spacer(),
                Switch(
                  activeColor: Theme.of(context).colorScheme.surface,
                  value: themeProviderTrue.isDark, onChanged: (value) {
                  themeProviderfalse.theme();
                },)
              ],
            ),
          ),
          SizedBox(height: 30,),
          row(icon: Icons.grid_on, name: 'Story',color:  Theme.of(context).colorScheme.onInverseSurface),
          SizedBox(height: 32,),
          row(icon: Icons.settings, name: 'Settings',color: Theme.of(context).colorScheme.onTertiary),
          SizedBox(height: 32,),
          row(icon: Icons.message , name: 'Help Center',color: Theme.of(context).colorScheme.onTertiaryContainer),
          SizedBox(height: 32,),
          row(icon: Icons.notifications , name: 'Notification',color:Theme.of(context).colorScheme.surface,),
        ],
      ),
    );
  }
}
