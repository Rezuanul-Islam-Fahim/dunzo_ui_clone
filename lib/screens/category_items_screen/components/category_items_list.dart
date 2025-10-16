import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class CategoryItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: 15),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
              _buildItem(
                'assets/images/banner.jpg',
                'Chicken Curry Cut Small Pieces',
                500,
                125,
              ),
            ],
          ),
          Container(
            height: 155,
            color: Color(0xFFf1f2f7),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Xpress Mart',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Erevu Ventures Pvt Ltd',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'OpenSans',
                    color: Colors.grey[700]!,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '177/1A 3rd floor, 2nd Main Rd, Dollar Layout, Phase 4, J.P. Nagar'
                  ', Bengaluru, Karnataka 560076',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'OpenSans',
                    color: Colors.grey[700]!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String imgUrl, String title, int quantity, int price) {
    return Container(
      height: 105,
      padding: EdgeInsets.only(right: 15),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            child: Image.asset(imgUrl, fit: BoxFit.cover),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 165,
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 3),
              Text(
                '$quantity GMS',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 3),
              Text(
                '₹$price',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30),
            splashColor: Colors.grey[200]!,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                    child: Icon(
                      Icons.add_rounded,
                      size: 18,
                      color: secondaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'ADD',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

