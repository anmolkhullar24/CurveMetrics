import 'package:flutter/material.dart';
import 'package:shop_app/screens/tailorlogin/components/body.dart';

class tailorloginscreen extends StatelessWidget {
  // const tailorloginscreen({ Key? key }) : super(key: key);
  static String routeName = "/tailorloginscreen";
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
