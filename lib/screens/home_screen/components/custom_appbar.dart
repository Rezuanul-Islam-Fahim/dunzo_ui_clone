import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/main_search_screen.dart';
import 'package:dunzo_ui_clone/screens/user_screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../cart_screen/cart_screen.dart';
import '../../location_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(this._fadeAnimation);

  final Animation<double> _fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 115,
      elevation: 0,
      pinned: true,
      // floating: true,
      // snap: true,
      titleSpacing: 0,
      title: InkWell(
        onTap: () => Navigator.of(context).pushNamed(LocationScreen.routeName),
        splashColor: Color(0xFF004DC0),
        highlightColor: Color(0xFF00245A),
        child: Container(
          width: 165,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 20),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Jayanagar',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.expand_more_rounded, size: 16),
            ],
          ),
        ),
      ),
      actions: [
        FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            width: 35,
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.search, size: 18),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () => Navigator.of(context).pushNamed(
                MainSearchScreen.routeName,
              ),
            ),
          ),
        ),
        Container(
          width: 35,
          alignment: Alignment.center,
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.user, size: 18),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () => Navigator.of(context).pushNamed(
              UserScreen.routeName,
            ),
          ),
        ),
        Container(
          width: 35,
          margin: EdgeInsets.only(right: 15),
          child: IconButton(
            // constraints: BoxConstraints(maxWidth: 10),
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                FaIcon(FontAwesomeIcons.shoppingCart, size: 18),
                Positioned(
                  right: -7,
                  top: -4,
                  child: ClipOval(
                    child: Container(
                      width: 8,
                      height: 8,
                      color: Color(0xFFfbce19),
                    ),
                  ),
                ),
              ],
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () => Navigator.of(context).pushNamed(
              CartScreen.routeName,
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(
                MainSearchScreen.routeName,
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 12),
                padding: EdgeInsets.only(left: 15),
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xFF5273A5),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                      // spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.search,
                      size: 18,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Search for store/item',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
