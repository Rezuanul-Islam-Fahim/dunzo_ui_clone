import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/store_list_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(this._fadeAnimation);

  final Animation<double> _fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFFFFFFFF),
      expandedHeight: 115,
      elevation: 1,
      pinned: true,
      title: Text(
        'Order Daily Grocery',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          splashRadius: 22,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      actions: [
        FadeTransition(
          opacity: _fadeAnimation,
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 26,
              color: secondaryColor,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () => Navigator.of(context).pushNamed(
              StoreListSearchScreen.routeName,
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
                StoreListSearchScreen.routeName,
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 12),
                padding: EdgeInsets.only(left: 15),
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey[300]!),
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
                      FontAwesomeIcons.magnifyingGlass,
                      size: 18,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Search for store/item',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
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

