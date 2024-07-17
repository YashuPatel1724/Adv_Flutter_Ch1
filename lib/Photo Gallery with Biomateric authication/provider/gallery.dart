import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

// class FringerProvider extends ChangeNotifier {
//   final auth = LocalAuthentication();
//
//   bool response = false;
//
//   Future<void> checkFringerprint() async {
//     bool isSupported = await auth.isDeviceSupported();
//     bool isActive = await auth.canCheckBiometrics;
//
//     if (isSupported && isActive) {
//       response = await auth.authenticate(
//           localizedReason: 'Please add your fingerprint');
//       notifyListeners();
//
//       if(response)
//         {
//           log('fingerprint successfully worked!');
//         }
//     } else
//     {
//       log("Your device is not supported for fingerprint...!");
//     }
//     notifyListeners();
//   }
// }
class FringerProvider extends ChangeNotifier
{
  final localAuth = LocalAuthentication();
  bool didAuthenticate = false;

  Future<void> authication()
  async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      'device not supported';
    }
    try{
       didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Please authenticate to access secure data',
      );
      didAuthenticate = didAuthenticate;
      notifyListeners();
    }on PlatformException catch(e)
    {
      print(e);
    }
  }
}