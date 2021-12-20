import 'package:flutter/material.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/tailorgui/components/custombottomnavbar.dart';

import 'customprofilecomp/body.dart';

class customprofile extends StatelessWidget {
  // const customeprofile({ Key? key }) : super(key: key);
  static String routeName = "/customprofile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
