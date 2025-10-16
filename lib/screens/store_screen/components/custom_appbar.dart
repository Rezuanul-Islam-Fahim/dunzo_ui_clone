import 'package:dunzo_ui_clone/screens/store_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  // CustomAppBar(this.showInfoPanel);

  // final bool showInfoPanel;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFFFFFFFF),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Xpress Mart',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'BTM Stage 1',
            style: TextStyle(
              color: Colors.grey[600]!,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          splashRadius: 22,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(
            StoreSearchScreen.routeName,
          ),
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
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
      ),
      titleSpacing: 10,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.watch_later,
                    size: 18,
                    color: Colors.indigo.withValues(alpha: 0.3),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Within 60 minutes',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(
                    Icons.moving_outlined,
                    color: Colors.amber,
                    size: 18,
                  ),
                  SizedBox(width: 3),
                  Text(
                    '4400+ products available here',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      expandedHeight: 180,
      elevation: 1,
      pinned: true,
    );
  }
}
