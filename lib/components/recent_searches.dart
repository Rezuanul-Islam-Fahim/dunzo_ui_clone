import 'package:flutter/material.dart';

class RecentSearches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 30, 15, 10),
      child: Wrap(
        spacing: 15,
        runSpacing: 12,
        direction: Axis.horizontal,
        children: [
          _buildBadge('Egg Omlete'),
          _buildBadge('Onion'),
          _buildBadge('Tomato'),
          _buildBadge('Garlic'),
          _buildBadge('Mangoes'),
          _buildBadge('Oranges'),
        ],
      ),
    );
  }

  Widget _buildBadge(String label) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFedf0f7),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.watch_later_outlined, size: 12, color: Colors.black54),
            SizedBox(width: 3),
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
