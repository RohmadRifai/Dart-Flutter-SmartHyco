import 'package:flutter/material.dart';
import 'package:smarthyco/ui/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/logo/logo.png'),
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
