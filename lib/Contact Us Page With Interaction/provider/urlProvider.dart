import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Urlprovider extends ChangeNotifier
{

  void urlLauncher()
  {
    Uri uri = Uri.parse('tel: +91 9638547575');
    launchUrl(uri);
  }
  void mailLauncher()
  {
    Uri uri = Uri.parse('mailto: +91 9638547575');
    launchUrl(uri);
  }
  void linkLauncher()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/yashu-patel-843a422a9/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void instLauncher()
  {
    Uri uri = Uri.parse('https://www.instagram.com/yashu_biliya/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void teleLauncher()
  {
    Uri uri = Uri.parse('https://web.telegram.org/a/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
}