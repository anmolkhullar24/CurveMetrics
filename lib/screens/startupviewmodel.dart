import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app/authentication_service.dart';
import 'package:shop_app/locator.dart';
import 'package:shop_app/models/base_model.dart';
import 'package:shop_app/navigation_service.dart';
import 'package:shop_app/route_names.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

// class NavigationService {
//   GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();

//   GlobalKey<NavigatorState> get navigationKey => _navigationKey;

//   void pop() {
//     return _navigationKey.currentState.pop();
//   }

//   Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
//     return _navigationKey.currentState
//         .pushNamed(routeName, arguments: arguments);
//   }
// }

class StartUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = NavigationService();
  // final GlobalKey<NavigatorState> navigatorKey =
  //     new GlobalKey<NavigatorState>();

// import 'package:flutter/material.dart';

  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Future isUserLoggedIn() async {
  //   var user = await _firebaseAuth.currentUser;
  //   return user.uid != null;
  // }

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();
    if (hasLoggedInUser) {
      // navigatorKey.currentState.pushNamed(HomeScreen.routeName);
      _navigationService.navigateTo(LoginViewRoute);
    } else {
      _navigationService.navigateTo(SignUpViewRoute);
      // navigatorKey.currentState.pushNamed(SignInScreen.routeName);
    }
  }
}
