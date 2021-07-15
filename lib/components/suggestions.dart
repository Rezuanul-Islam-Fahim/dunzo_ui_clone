import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      direction: Axis.horizontal,
      children: [
        _buildBadge('Egg Omlete'),
        _buildBadge('Onion'),
        _buildBadge('Tommato Salad'),
        _buildBadge('Pizza'),
        _buildBadge('Burger'),
        _buildBadge('Egg Omlete'),
      ],
    );
  }

  Widget _buildBadge(String label) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: secondaryColor,
        border: Border.all(color: Color(0xFF7188AA), width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
