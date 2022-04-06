import 'package:flutter/material.dart';
import 'package:tokokopi/constans.dart';
import 'package:tokokopi/users/akunpage.dart';
import 'package:tokokopi/users/beranda.dart';
import 'package:tokokopi/users/favoritepage.dart';
import 'package:tokokopi/users/keranjangpage.dart';
import 'package:tokokopi/users/transaksipage.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new FavoritePage(),
    new KeranjangPage(),
    new TransaksiPage(),
    new AkunPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.storefront_sharp,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.storefront_sharp,
              color: Colors.grey,
            ),
            label: 'Menus',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.confirmation_number,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.confirmation_number,
              color: Colors.grey,
            ),
            label: 'Coupon',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.swap_horiz_sharp,
              color: Colors.grey,
            ),
            icon: new Icon(
              Icons.swap_horiz_sharp,
              color: Colors.grey,
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
