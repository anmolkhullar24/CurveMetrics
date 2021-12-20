import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/tailorlogin/tailorloginscreen.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "Select Customer or Tailor",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DefaultButton(
                    text: "Tailor",
                    press: () async {
                      Navigator.of(context)
                          .pushReplacementNamed(tailorloginscreen.routeName);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultButton(
                    text: "Customer",
                    press: () async {
                      Navigator.of(context)
                          .pushReplacementNamed(SignInScreen.routeName);
                    },
                  )
                ])))));
  }
}
