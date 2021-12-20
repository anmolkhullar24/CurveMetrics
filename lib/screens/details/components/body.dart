import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/measurementsbody.dart';
import 'package:shop_app/screens/details/components/order_place.dart';
import 'package:shop_app/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  Body({Key key, @required this.product}) : super(key: key);
  final Product product;
  String NeckToShoulder;
  String ShoulderToShoulder;
  String ShoulderToWrist;
  String ShoulderToWaist;
  String Waist;
  String WaistToFeet;
  String Address;
  String PhoneNumber;
  String Chest;
  String Seam;
  String Hip;
  String RecieverName;
  String optionnumber;
  CollectionReference Orders = FirebaseFirestore.instance.collection('Orders');

  Future<void> addproduct() {
    return Orders.add({
      'Chest': Chest,
      'Hip': Hip,
      'Neck To Shoulder': NeckToShoulder,
      'Phone Number': PhoneNumber,
      'Seam': Seam,
      'Shoulder To Shoulder': ShoulderToShoulder,
      'Shoulder To Waist': ShoulderToWaist,
      'Shoulder To Wrist': ShoulderToWrist,
      'Waist': Waist,
      'Waist To Feet': WaistToFeet,
      'Cloth Quality': optionnumber,
      'Name': RecieverName,
    })
        .then((value) => toastMessages("Order is placed successfully"))
        .catchError((error) => toastMessages("There is some error"));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                // pressOnSeeMore: () {},
              ),
              RaisedButton(
                onPressed: _launchURL,
                child: new Text('Check your size'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Measurements ( inches )'),
              // measurement(),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Neck To Shoulder',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Shoulder To Shoulder',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Shoulder To Wrist',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Shoulder To Waist',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Waist',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Waist To Feet',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Hip',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Seam',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Chest',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Phone Number',
              //     hintText: '',
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Address',
              //     hintText: '',
              //   ),
              // ),
              // // DefaultButton(
              // //   text: "Check your size",
              // //   press: () {},
              // // ),
              // Text('Select Quality :'),
              // Text('1) 150 rs / meter'),
              // Text('2) 200 rs / meter'),
              // Text('3) 250 rs / meter'),
              // // DropdownButton<String>(
              // //   items: <String>['150 / meter', '200 / meter', '250 / meter']
              // //       .map((String value) {
              // //     return DropdownMenuItem<String>(
              // //       value: value,
              // //       child: Text(value),
              // //     );
              // //   }).toList(),
              // //   onChanged: (_) {},
              // // ),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Enter option number :',
              //     hintText: '',
              //   ),
              // ),

              // TopRoundedContainer(
              //   color: Color(0xFFF6F7F9),
              //   child: Column(
              //     children: [
              //       ColorDots(product: product),
              //       TopRoundedContainer(
              //         color: Colors.white,
              //         child: Padding(
              //           padding: EdgeInsets.only(
              //             left: SizeConfig.screenWidth * 0.15,
              //             right: SizeConfig.screenWidth * 0.15,
              //             bottom: getProportionateScreenWidth(40),
              //             top: getProportionateScreenWidth(15),
              //           ),
              //           child: DefaultButton(
              //             text: "Buy Now",
              //             press: () async {
              //               toastMessages("Order is placed successfully");
              //               Navigator.pushNamed(context, orderplaced.routeName);
              //             },
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Recievers Name',
                  hintText: '',
                ),
                onChanged: (value) => RecieverName = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Neck To Shoulder',
                  hintText: '',
                ),
                onChanged: (value) => NeckToShoulder = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Shoulder To Shoulder',
                  hintText: '',
                ),
                onChanged: (value) => ShoulderToShoulder = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Shoulder To Wrist',
                  hintText: '',
                ),
                onChanged: (value) => ShoulderToWrist = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Shoulder To Waist',
                  hintText: '',
                ),
                onChanged: (value) => ShoulderToWaist = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Waist',
                  hintText: '',
                ),
                onChanged: (value) => Waist = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Waist To Feet',
                  hintText: '',
                ),
                onChanged: (value) => WaistToFeet = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hip',
                  hintText: '',
                ),
                onChanged: (value) => Hip = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Seam',
                  hintText: '',
                ),
                onChanged: (value) => Seam = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Chest',
                  hintText: '',
                ),
                onChanged: (value) => Chest = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: '',
                ),
                onChanged: (value) => PhoneNumber = value,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                  hintText: '',
                ),
                onChanged: (value) => Address = value,
              ),

              // DefaultButton(
              //   text: "Check your size",
              //   press: () {},
              // ),
              Text('Select Quality :'),
              Text('1) 150 rs / meter'),
              Text('2) 200 rs / meter'),
              Text('3) 250 rs / meter'),
              // DropdownButton<String>(
              //   items: <String>['150 / meter', '200 / meter', '250 / meter']
              //       .map((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(value),
              //     );
              //   }).toList(),
              //   onChanged: (_) {},
              // ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter option number :',
                  hintText: '',
                ),
                onChanged: (value) => optionnumber = value,
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Buy Now",
                          press: () async {
                            toastMessages("Order is placed successfully");
                            addproduct();
                            Navigator.pushNamed(context, orderplaced.routeName);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

_launchURL() async {
  const url = 'https://jatinrana535-1g54b13oe59qfl6s.socketxp.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void toastMessages(String message) {
  Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
