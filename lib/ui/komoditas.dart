import 'package:flutter/material.dart';
import 'package:smarthyco/widgets/semua_komoditas.dart';

class Komoditas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SemuaKomoditas(),
      ),
    );
  }
}
