// import 'package:flutter/material.dart';
// import 'package:shop_app/screens/tailorgui/customprod.dart';
// import 'package:shop_app/screens/tailorgui/customprofilecomp/profile_menu.dart';
// import 'package:shop_app/size_config.dart';

// class Body extends StatelessWidget {
//   // const Body({ Key? key }) : super(key: key);
// //
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: getProportionateScreenHeight(20)),
//             // HomeHeader(),
//             // SizedBox(height: getProportionateScreenWidth(10)),
//             // DiscountBanner(),
//             // Categories(),
//             // SpecialOffers(),
//             // SizedBox(height: getProportionateScreenWidth(30)),
//             // PopularProducts(),
//             // SizedBox(height: getProportionateScreenWidth(30)),
//             ProfileMenu(
//               text: "You have got a new order from Jatin Rana",
//               icon: "assets/icons/User Icon.svg",
//               press: () async {
//                 Navigator.pushNamed(context, customprod.routeName);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/tailorgui/customprofilecomp/profile_menu.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/tailorgui/customprod.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final Stream<QuerySnapshot> OrdersStream =
      FirebaseFirestore.instance.collection('Orders').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: OrdersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List storedocs = [];
          snapshot.data.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
            // a['id'] = document.id;
          }).toList();
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: getProportionateScreenHeight(20)),
                // Image.asset('assets/images/suit.jpg'),
                for (var i = 0; i < storedocs.length; i++) ...[
                  ProfileMenu(
                    text:
                        "You have got a new order from " + storedocs[i]['Name'],
                    icon: "assets/icons/User Icon.svg",
                    press: () async {
                      Navigator.pushNamed(
                        context,
                        customprod.routeName,
                        arguments: {
                          'id': i,
                        },
                      );
                    },
                  ),
                ],
              ]),
            ),
          );
        });
  }
}
