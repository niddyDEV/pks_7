
import 'package:flutter/material.dart';
import 'package:pks_7/pages/home_page.dart';
import 'package:pks_7/pages/profile_page.dart';
import 'package:pks_7/pages/cart_page.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<StatefulWidget> createState() => _StateScreenMain();
}

class _StateScreenMain extends State<ScreenMain> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const PageShop(),
    const PageCart(),
    const PageProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/shop.png')),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/cart.png')),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/profile.png')),
            label: 'Профиль',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF1A6FEE),
        onTap: _onItemTapped,
      ),
    );
  }
}
