import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:shop_app/screens/startupviewmodel.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key key}) : super(key: key);
  static String routeName = "/startupview";

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<StartUpViewModel>.withConsumer(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 100,
                child: Image.asset('assets/images/splash_1.png'),
              ),
              CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Color(0xff19c7c1)),
              )
            ],
          ),
        ),
      ),
      viewModel: StartUpViewModel(),
      onModelReady: (model) => model.handleStartUpLogic(),
    );
  }
}
