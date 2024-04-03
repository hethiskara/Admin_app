import 'package:flutter/material.dart';

class RestrictedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Restricted',
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 39, 39)))),
      ),
      body: Center(
        child: Text('User Restricted!'),
      ),
    );
  }
}
