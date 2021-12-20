import 'package:flutter/material.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/tailorgui/components/custombottomnavbar.dart';
import 'package:shop_app/screens/tailorgui/customprofilecomp/profile_menu.dart';

import 'customsalecomp/body.dart';

class customsale extends StatelessWidget {
  // const customsale({ Key? key }) : super(key: key);
  static String routeName = "/customsale";

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         // SizedBox(height: getProportionateScreenHeight(20)),
    //         // HomeHeader(),
    //         // SizedBox(height: getProportionateScreenWidth(10)),
    //         // DiscountBanner(),
    //         // Categories(),
    //         // SpecialOffers(),
    //         // SizedBox(height: getProportionateScreenWidth(30)),
    //         // PopularProducts(),
    //         // SizedBox(height: getProportionateScreenWidth(30)),
    //         ProfileMenu(
    //           text: "You have got a new order from anjali",
    //           icon: "assets/icons/User Icon.svg",
    //           press: () => {},
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("SALES"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
