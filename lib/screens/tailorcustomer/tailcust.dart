import 'package:flutter/material.dart';
import 'package:shop_app/screens/tailorcustomer/components/body.dart';

class tailcust extends StatelessWidget {
  // const tailcust({ Key key }) : super(key: key);
  static String routeName = "/tailcust";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Customer or Tailor"),
      ),
      body: Body(),
    );
  }
}
