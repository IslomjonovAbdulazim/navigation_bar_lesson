import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurvedNavigationBarPackage1 extends StatefulWidget {
  const CurvedNavigationBarPackage1({Key? key}) : super(key: key);

  @override
  State<CurvedNavigationBarPackage1> createState() =>
      _CurvedNavigationBarPackage1State();
}

class _CurvedNavigationBarPackage1State
    extends State<CurvedNavigationBarPackage1> {
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.indigo,
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
