// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:shop_app/size_config.dart';
// import 'top_rounded_container.dart';
// class measurement extends StatefulWidget {
//   const measurement({Key key}) : super(key: key);

//   @override
//   _measurementState createState() => _measurementState();
// }

// class _measurementState extends State<measurement> {
//   String NeckToShoulder;
//   String ShoulderToShoulder;
//   String ShoulderToWrist;
//   String ShoulderToWaist;
//   String Waist;
//   String WaistToFeet;
//   String Address;
//   String PhoneNumber;
//   String Chest;
//   String Seam;
//   String Hip;
//   String optionnumber;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Neck To Shoulder',
//             hintText: '',
//           ),
//           onChanged: (value) => NeckToShoulder = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Shoulder To Shoulder',
//             hintText: '',
//           ),
//           onChanged: (value) => ShoulderToShoulder = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Shoulder To Wrist',
//             hintText: '',
//           ),
//           onChanged: (value) => ShoulderToWrist = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Shoulder To Waist',
//             hintText: '',
//           ),
//           onChanged: (value) => ShoulderToWaist = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Waist',
//             hintText: '',
//           ),
//           onChanged: (value) => Waist = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Waist To Feet',
//             hintText: '',
//           ),
//           onChanged: (value) => WaistToFeet = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Hip',
//             hintText: '',
//           ),
//           onChanged: (value) => Hip = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Seam',
//             hintText: '',
//           ),
//           onChanged: (value) => Seam = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Chest',
//             hintText: '',
//           ),
//           onChanged: (value) => Chest = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Phone Number',
//             hintText: '',
//           ),
//           onChanged: (value) => PhoneNumber = value,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Address',
//             hintText: '',
//           ),
//           onChanged: (value) => Address = value,
//         ),
//         // DefaultButton(
//         //   text: "Check your size",
//         //   press: () {},
//         // ),
//         Text('Select Quality :'),
//         Text('1) 150 rs / meter'),
//         Text('2) 200 rs / meter'),
//         Text('3) 250 rs / meter'),
//         // DropdownButton<String>(
//         //   items: <String>['150 / meter', '200 / meter', '250 / meter']
//         //       .map((String value) {
//         //     return DropdownMenuItem<String>(
//         //       value: value,
//         //       child: Text(value),
//         //     );
//         //   }).toList(),
//         //   onChanged: (_) {},
//         // ),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Enter option number :',
//             hintText: '',
//           ),
//           onChanged: (value) => optionnumber = value,
//         ),
//         TopRoundedContainer(
//                 color: Color(0xFFF6F7F9),
//                 child: Column(
//                   children: [
//                     ColorDots(product: product),
//                     TopRoundedContainer(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: SizeConfig.screenWidth * 0.15,
//                           right: SizeConfig.screenWidth * 0.15,
//                           bottom: getProportionateScreenWidth(40),
//                           top: getProportionateScreenWidth(15),
//                         ),
//                         child: DefaultButton(
//                           text: "Buy Now",
//                           press: () async {
//                             toastMessages("Order is placed successfully");
//                             Navigator.pushNamed(context, orderplaced.routeName);
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//       ],
//     );
//   }
// }
// _launchURL() async {
//   const url = 'https://jatinrana535-1g54b13oe59qfl6s.socketxp.com/';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

// void toastMessages(String message) {
//   Fluttertoast.showToast(
//       msg: message.toString(),
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.SNACKBAR,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       fontSize: 16.0);
// }