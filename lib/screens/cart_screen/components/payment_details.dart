import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Details',
                style: TextStyle(
                  color: Colors.grey[600]!,
                  // fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 15),
              _buildExpense('Item Total', '₹45'),
              Divider(height: 12),
              _buildExpense('Partner Tip Amount', '₹35'),
              Divider(height: 12),
              _buildExpense(
                'Partner Delivery Fee ',
                'Free',
                showPaymentColor: true,
              ),
              Divider(height: 12),
              _buildExpense('To Pay', '₹80', showBoldTitle: true),
              SizedBox(height: 30),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 25,
          child: Image.asset(
            'assets/images/zigzag-pattern.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Row _buildExpense(
    String title,
    String price, {
    bool showPaymentColor = false,
    bool showBoldTitle = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Lato',
            fontWeight: showBoldTitle ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            fontFamily: 'Lato',
            color: showPaymentColor ? secondaryColor : Colors.black87,
          ),
        ),
      ],
    );
  }
}

