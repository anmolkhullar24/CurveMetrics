import 'package:flutter/material.dart';

class orderplaced extends StatelessWidget {
  // const orderplaced({ Key? key }) : super(key: key);
  static String routeName = "/order_place";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Placed',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Order Placed Successfully'),
          ),
        ),
        body: Center(
          child: Text(
            'Order Placed Successfully',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
