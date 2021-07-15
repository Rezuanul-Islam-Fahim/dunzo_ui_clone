import 'package:flutter/material.dart';

import 'product_slider.dart';
import 'recent_searches.dart';
import 'suggestions.dart';

class SearchScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecentSearches(),
          Divider(thickness: 4, color: Color(0xFFedf0f7)),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top up your daily essentials',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Trending in your area',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 20),
                Suggestions(),
                SizedBox(height: 10),
              ],
            ),
          ),
          ProductSlider(),
          Divider(thickness: 4, color: Color(0xFFedf0f7)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Top lunch ideas',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Yummy food delivered instantly',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          ProductSlider(),
          Divider(thickness: 4, color: Color(0xFFedf0f7)),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
            child: SizedBox(
              width: double.infinity,
              height: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.asset(
                  'assets/images/banner.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Divider(thickness: 4, height: 0, color: Color(0xFFedf0f7)),
        ],
      ),
    );
  }
}
