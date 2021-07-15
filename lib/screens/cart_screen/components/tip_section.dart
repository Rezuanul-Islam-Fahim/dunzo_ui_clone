import 'package:flutter/material.dart';

class TipSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFfffdf1),
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_outline_sharp),
              SizedBox(width: 15),
              Column(
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
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 15, 10),
            child: Wrap(
              spacing: 25,
              runSpacing: 12,
              direction: Axis.horizontal,
              children: [
                _buildBadge(Icons.favorite, '₹50'),
                _buildBadge(Icons.sports_football_rounded, '₹140'),
                _buildBadge(Icons.sports_baseball, '₹30'),
                _buildBadge(Icons.card_giftcard, '₹100'),
                _buildBadge(Icons.mobile_friendly, '₹200'),
                _buildBadge(Icons.computer_rounded, '₹20'),
                _buildBadge(Icons.phone_iphone, '₹600'),
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _buildBadge(IconData icon, String label) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFFFFFFF),
        border: Border.all(color: Colors.grey[300]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.black54,
            ),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                fontFamily: 'Lato',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
