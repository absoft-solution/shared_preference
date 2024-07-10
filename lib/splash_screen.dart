import 'package:flutter/material.dart';
import 'package:sp_practice/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices=SplashServices();
  @override
  void initState() {
    splashServices.isLogin(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash Screen",style: TextStyle(fontSize: 48),)),
    );
  }
}
