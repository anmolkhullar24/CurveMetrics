import 'package:flutter/material.dart';
// import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/tailorgui/components/custombottomnavbar.dart';

class tailorhome extends StatelessWidget {
  // const tailorhome({ Key? key }) : super(key: key);
  static String routeName = "/tailorhome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
