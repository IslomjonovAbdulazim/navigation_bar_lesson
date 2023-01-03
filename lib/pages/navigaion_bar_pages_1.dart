import 'package:flutter/material.dart';

class NavigationBarPage1 extends StatefulWidget {
  NavigationBarPage1({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage1> createState() => _NavigationBarPage1State();
}

class _NavigationBarPage1State extends State<NavigationBarPage1> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 1500),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentIndex,
        backgroundColor: Colors.grey.shade300,
        surfaceTintColor: Colors.black,
        height: 80,
        onDestinationSelected: (int index) {
          currentIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            selectedIcon: Icon(
              Icons.home_filled,
              size: 30,
            ),
            tooltip: 'Home page',
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'aa',
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'aa',
          ),
        ],
      ),
    );
  }
}
