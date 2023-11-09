import 'package:flutter/material.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/pages/profile_page.dart';

class BottomNav_Page extends StatefulWidget {
  const BottomNav_Page({super.key});

  @override
  State<BottomNav_Page> createState() => _BottomNav_PageState();
}

class _BottomNav_PageState extends State<BottomNav_Page> {
  int selectedindex = 0;
  List<Widget> childrens=[
    Home_Page(),
    Profile_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.grey.shade900,
          unselectedItemColor: Colors.grey.shade500,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedindex,
          onTap: navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
      body: childrens[selectedindex],
    );
  }

  void navigateBottomBar(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
