import 'package:flutter/material.dart';

import 'components/body.dart';

class CompleteProfileScreentailor extends StatelessWidget {
  static String routeName = "/complete_profile_tailor";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
