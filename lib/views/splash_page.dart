import 'package:flutter/material.dart';
import 'package:anandham_admin/controllers/device_info_controller.dart';
import 'package:anandham_admin/views/login_page.dart';

import 'restricted_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  Future<void> _navigateToNextPage() async {
    bool isDeviceAllowed = await DeviceInfoController.isDeviceAllowed();
    if (isDeviceAllowed) {
      // Device is allowed, navigate to login page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } else {
      // Device is not allowed, navigate to restricted page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RestrictedPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'USER RESTRICTED',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
    );
  }
}
