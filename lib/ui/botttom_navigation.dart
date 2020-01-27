import 'package:flutter/material.dart';
import 'package:smarthyco/ui/akun.dart';
import 'package:smarthyco/ui/beranda.dart';
import 'package:smarthyco/ui/komoditas.dart';
import 'package:smarthyco/ui/box.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: BottomNavigationBarExample(),
        create: (BuildContext context) => BottomNavigationBarProvider(),
      ),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  var currentTab = [
    Beranda(),
    Komoditas(),
    Box(),
    Text('Supply'),
    Akun(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage('assets/logo/logo.png'),
          width: 130,
          height: 50,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: currentTab[int.parse(provider.currentIndex.toString())],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: int.parse(provider.currentIndex.toString()),
        onTap: (int index) {
          provider.currentIndex = index;
        },
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: const Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            title: const Text('Komoditas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: const Text('Miteq'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            title: const Text('Supply'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: const Text('Akun'),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
