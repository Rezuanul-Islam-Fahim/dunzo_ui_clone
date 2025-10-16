import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'FRESH CHICKEN',
                style: TextStyle(
                  color: Colors.grey[700]!,
                  fontSize: 12,
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(
                height: 20,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(0),
                  ),
                  icon: SizedBox(
                    width: 8,
                    child: Icon(
                      Icons.add,
                      size: 14,
                      color: secondaryColor,
                    ),
                  ),
                  label: Text(
                    'Add More',
                    style: TextStyle(
                      fontSize: 12,
                      color: secondaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              ClipOval(
                child: Container(
                  width: 6,
                  height: 6,
                  color: primaryColor,
                ),
              ),
              SizedBox(width: 15),
              Container(
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chicken Curry Cut Without Skin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '1 Kg',
                      style: TextStyle(
                        color: Colors.grey[500]!,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.horizontal_rule_rounded,
                      size: 15,
                      color: secondaryColor,
                    ),
                    SizedBox(width: 6),
                    Text(
                      '3',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.add_rounded,
                      size: 20,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Text(
                '₹50',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

