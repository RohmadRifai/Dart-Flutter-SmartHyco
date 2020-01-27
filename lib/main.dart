import 'package:flutter/material.dart';
import 'package:smarthyco/ui/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartHyco',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        //accentColor: Colors.greenAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
