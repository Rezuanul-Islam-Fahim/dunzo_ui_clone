import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class SupportPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                panel(
                  Icons.home_filled,
                  'Get things delivered to your doorsteps instantly',
                ),
                SizedBox(height: 20),
                panel(
                  Icons.house_siding_outlined,
                  'Delivered from anywhere in the city',
                ),
                SizedBox(height: 20),
                panel(
                  Icons.shopping_cart,
                  'No minimum order value in your purchase',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset('assets/images/lightening.png', width: 80),
          ),
        ],
      ),
    );
  }

  Widget panel(IconData icon, String title) {
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                primaryColor,
                secondaryColor,
                // Color(0xFF28b664),
                // Color(0xFF32db74),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Container(
            width: 35,
            height: 35,
            child: Icon(icon, color: Colors.white, size: 18),
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
