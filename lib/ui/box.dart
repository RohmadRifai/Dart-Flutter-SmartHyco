import 'package:flutter/material.dart';
import 'package:smarthyco/widgets/semua_box.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SemuaBox(),
      ),
    );
  }
}
