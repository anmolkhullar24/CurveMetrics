import 'package:flutter/material.dart';
import 'package:shop_app/screens/tailorgui/customprodbody.dart';

class customprod extends StatelessWidget {
  // const customprod({ Key? key }) : super(key: key);
  static String routeName = "/customprod";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
      ),
      body: Body(),
    );
    // return ListView(children: [
    //   Image.asset('assets/images/suit.jpg'),
    //   Text("Neck To Shoulder : 9"),
    //   Text("Shoulder To Shoulder : 22"),
    //   Text("Shoulder To Wrist : 22"),
    //   Text("Shoulder To Waist : 19"),
    //   Text("Waist : 19"),
    //   Text("Waist To Foot : 40"),
    //   Text("Hip : 22"),
    //   Text("Seam : 11"),
    //   Text("Chest : 23"),
    // ]);
  }
}
