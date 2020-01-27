import 'package:flutter/material.dart';
import 'package:smarthyco/ui/botttom_navigation.dart';
import 'package:smarthyco/widgets/login_daftar.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/logo/logo.png'),
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: 'Masukan Email'),
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: 'Masukan Kata Sandi'),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: OutlineButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) =>
                                BottomNavigation())),
                    borderSide: BorderSide(
                      color: Theme.of(context).accentColor,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Masuk',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ),
                ),
                SizedBox(
                  //height: 100,
                  width: 300,
                  child: FlatButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => LoginDaftar())),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Daftar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
