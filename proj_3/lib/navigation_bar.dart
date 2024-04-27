import 'package:flutter/material.dart';
import 'package:proj_3/store.dart';
import 'package:proj_3/profile.dart';
import 'package:proj_3/Home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  final screens = [Home(), market(), profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 60,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 53, 45, 124),
              size: 30,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(
              color: Color.fromARGB(255, 53, 45, 124),
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            label: "Store",
          ),
          NavigationDestination(
            icon: Icon(
              color: Color.fromARGB(255, 53, 45, 124),
              Icons.person,
              size: 30,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
