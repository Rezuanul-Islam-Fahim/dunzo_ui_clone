import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';
import 'order_screen.dart';
import 'dunzo_cash_screen.dart';
import 'search_screen.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    OrderScreen(),
    DunzoCashScreen(),
  ];
  int _selectedIndex = 0;

  void selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(height: 0, thickness: 1.1, color: Color(0xFFedf0f7)),
          BottomNavigationBar(
            selectedItemColor: secondaryColor,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
            onTap: selectPage,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: 'SEARCH',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'ORDERS',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(Icons.account_balance_wallet_outlined),
                    Positioned(
                      top: -5,
                      right: -30,
                      child: Container(
                        alignment: Alignment.center,
                        width: 28,
                        height: 18,
                        decoration: BoxDecoration(
                          color: Color(0xFF6c7aff),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '₹50',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'DUNZO CASH',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
