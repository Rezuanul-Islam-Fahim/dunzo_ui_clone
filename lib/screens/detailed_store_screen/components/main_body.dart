import 'package:flutter/material.dart';

import 'item_list.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ItemList(title: 'Hygiene', itemlength: 4),
          ItemList(title: 'Oral Care', itemlength: 3),
          ItemList(title: 'Others', itemlength: 7),
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
}

