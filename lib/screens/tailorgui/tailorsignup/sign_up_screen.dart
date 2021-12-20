import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreentailor extends StatelessWidget {
  static String routeName = "/tailor_sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
