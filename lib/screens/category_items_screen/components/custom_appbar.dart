import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/store_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:customizable_space_bar/customizable_space_bar.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFFFFFFFF),
      expandedHeight: 160,
      elevation: 1,
      pinned: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          splashRadius: 22,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      actions: [
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
            color: Colors.black54,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () => Navigator.of(context).pushNamed(
            StoreSearchScreen.routeName,
          ),
        ),
      ],
      flexibleSpace: CustomizableSpaceBar(
        builder: (context, scrollingRate) {
          /// Example content
          return Padding(
            padding: EdgeInsets.only(
              bottom: 60 + scrollingRate * 7,
              left: 20 + scrollingRate * 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Chicken',
                  style: TextStyle(
                    fontSize: 18 - scrollingRate * 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'CP Prime Fresh',
                  style: TextStyle(
                    fontSize: 15 - scrollingRate * 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]!,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: Container(
          padding: const EdgeInsets.only(bottom: 15),
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black87,
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: primaryColor,
            ),
            automaticIndicatorColorAdjustment: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.symmetric(horizontal: 12),
            indicatorWeight: 0,
            indicatorPadding: EdgeInsets.zero,
            tabs: <Widget>[
              _buildTab('All'),
              _buildTab('Best Sellers'),
              _buildTab('Staple'),
              _buildTab('Seasonal'),
              _buildTab('Exotic'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String title) {
    return Container(
      height: 30,
      child: Tab(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey[200]!),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

