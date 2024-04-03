import 'dart:io';
import 'package:device_info/device_info.dart';

class DeviceInfoController {
  static List<String> allowedIdentifiers = [
    '32cd8bebceda3262',
    'example_idfv_1',
  ];

  static Future<String?> getAndroidIdentifier() async {
    AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
    print('Android Identifier: ${androidInfo.androidId}');
    return androidInfo.androidId;
  }

  static Future<String?> getIDFV() async {
    IosDeviceInfo iosInfo = await DeviceInfoPlugin().iosInfo;
    print('iOS Identifier: ${iosInfo.identifierForVendor}');
    return iosInfo.identifierForVendor;
  }

  static Future<bool> isDeviceAllowed() async {
    String? identifier;
    if (Platform.isAndroid) {
      identifier = await getAndroidIdentifier();
    } else if (Platform.isIOS) {
      identifier = await getIDFV();
    }
    print('Identifier: $identifier');
    return identifier != null && allowedIdentifiers.contains(identifier);
  }
}
