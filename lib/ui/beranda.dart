import 'package:flutter/material.dart';
import 'package:smarthyco/widgets/lahan.dart';
import 'package:smarthyco/widgets/penawaran.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          children: <Widget>[
            PenawaranSupply(),
            ListLahan(),
          ],
        ),
      ),
    );
  }
}
