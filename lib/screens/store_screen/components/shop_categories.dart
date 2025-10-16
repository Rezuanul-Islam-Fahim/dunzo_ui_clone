import 'package:dunzo_ui_clone/screens/category_items_screen/category_items_screen.dart';
import 'package:flutter/material.dart';

class ShopCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What are you looking for?',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          GridView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2 / 3.3,
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              // mainAxisSpacing: 15,
            ),
            children: [
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Breakfast & Dairy',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Fresh Vegetables',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Fresh Fruits',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Snacks & Beverage',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Provisions',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Instant Foods & Ready To Eat',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Cleaning & Household',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Pet Foods',
              ),
              _buildCategoryPanel(
                context,
                'assets/images/banner.jpg',
                'Paan',
              ),
            ],
          ),
          SizedBox(height: 20),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200]!,
                  offset: Offset(1, 1),
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.move_to_inbox_rounded),
                      SizedBox(width: 5),
                      Text(
                        'View 6 more Categories',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.expand_more_rounded),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryPanel(
    BuildContext context,
    String imgUrl,
    String title,
  ) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        CategoryItemsScreen.routeName,
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 90,
              child: Image.asset(imgUrl, fit: BoxFit.cover),
            ),
            SizedBox(height: 5),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

