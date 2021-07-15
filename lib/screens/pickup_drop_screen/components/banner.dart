import 'package:dunzo_ui_clone/components/carousel_banner.dart';
import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselBanner(
      [
        _buildBanner(
          'Keep Them Ready to Go',
          'Please keep the items ready before the partner arrives for pickup',
          Color(0xFFfdeded),
          Color(0xFFe0c1bf),
          Color(0xFF620c0b),
          'assets/images/lightening.png',
        ),
        _buildBanner(
          'Keep Them Ready to Go',
          'Please keep the items ready before the partner arrives for pickup',
          Color(0xFFfdeded),
          Color(0xFFe0c1bf),
          Color(0xFF620c0b),
          'assets/images/lightening.png',
        ),
        _buildBanner(
          'Keep Them Ready to Go',
          'Please keep the items ready before the partner arrives for pickup',
          Color(0xFFfdeded),
          Color(0xFFe0c1bf),
          Color(0xFF620c0b),
          'assets/images/lightening.png',
        ),
      ],
      dotPosition: -20,
    );
  }

  Container _buildBanner(
    String title,
    String subtitle,
    Color bgColor,
    Color borderColor,
    Color textColor,
    String imgUrl,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(6),
        color: bgColor,
      ),
      padding: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: textColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            imgUrl,
            width: 70,
          ),
        ],
      ),
    );
  }
}
