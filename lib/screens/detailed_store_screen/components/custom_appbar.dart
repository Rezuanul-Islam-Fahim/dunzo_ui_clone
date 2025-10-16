import 'package:dotted_border/dotted_border.dart';
import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/store_list_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFFFFFFFF),
      expandedHeight: 290,
      elevation: 1,
      pinned: true,
      titleSpacing: 10,
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
      actions: [
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
            color: secondaryColor,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () => Navigator.of(context).pushNamed(
            StoreListSearchScreen.routeName,
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [
          StretchMode.fadeTitle,
        ],
        background: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        size: 12,
                        color: Color(0xFF6f7583),
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Within 25 Minutes',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Lato',
                          color: Color(0xFF585d71),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[500]!,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Free Delivery',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 12,
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(4),
                dashPattern: [3, 3, 3, 3],
                color: Color(0xFFc1c1c1),
                padding: EdgeInsets.all(1),
                strokeWidth: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      _buildInfoPanel(
                        'LAZYPAY: 15% cashBack upto Rs 100, No Min Order',
                      ),
                      SizedBox(height: 3),
                      _buildInfoPanel(
                        'SIMPL: 20% cashback upto Rs 50, No min order',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(
                  StoreListSearchScreen.routeName,
                ),
                child: Container(
                  // margin: EdgeInsets.fromLTRB(15, 0, 15, 12),
                  padding: EdgeInsets.only(left: 15),
                  height: 42,
                  decoration: BoxDecoration(
                    color: Color(0xFFf3f3f5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 18,
                        color: Color(0xFFb7bac3),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Search for store/item',
                        style: TextStyle(
                          color: Color(0xFF868c9a),
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
      ),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 40),
        child: Container(
          color: Colors.white,
          child: TabBar(
            labelColor: primaryColor,
            unselectedLabelColor: Colors.black87,
            isScrollable: true,
            automaticIndicatorColorAdjustment: true,
            indicatorColor: primaryColor,
            labelPadding: EdgeInsets.symmetric(horizontal: 12),
            tabs: <Widget>[
              _buildTab('ALL'),
              _buildTab('BEST SELLERS'),
              _buildTab('STAPLE'),
              _buildTab('SEASONAL'),
              _buildTab('EXOTIC'),
              _buildTab('OTHERS'),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildInfoPanel(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.watch_later,
          color: Color(0xFF767bd6),
          size: 15,
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0f1a38),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTab(String title) {
    return Container(
      height: 30,
      child: Tab(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

