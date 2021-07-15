import 'package:dotted_border/dotted_border.dart';
import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class DiscountPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFf8f8fa),
      height: 90,
      child: ListView(
        padding: EdgeInsets.only(top: 15, left: 20, bottom: 15, right: 5),
        scrollDirection: Axis.horizontal,
        children: [
          _buildPanel(),
          _buildPanel(),
          _buildPanel(),
          _buildPanel(),
          _buildPanel(),
        ],
      ),
    );
  }

  Widget _buildPanel() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(4),
            dashPattern: [3, 3, 3, 3],
            color: Colors.black26,
            padding: EdgeInsets.all(1),
            strokeWidth: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(8, 8, 30, 8),
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              child: Text(
                'Get a free bingo mad angles cheese with cheese with cheese',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          Positioned(
            top: -10,
            right: -10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: skinColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6, right: 6),
                child: Icon(
                  Icons.card_giftcard_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
