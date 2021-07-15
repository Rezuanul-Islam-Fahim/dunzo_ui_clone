import 'package:flutter/material.dart';

import 'components/cart_bottom_sheet.dart';
import 'components/check_box_tile.dart';
import 'components/order_details.dart';
import 'components/payment_details.dart';
import 'components/recommended_foods.dart';
import 'components/tip_section.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(height: 0, color: Color(0xFFedf0f7)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: Text(
          'Confirm Order',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OrderDetails(),
            Divider(thickness: 13, height: 0, color: Color(0xFFedf0f7)),
            RecommendedFoods(),
            Divider(thickness: 13, height: 0, color: Color(0xFFedf0f7)),
            CustomCheckBox(),
            Divider(thickness: 13, height: 0, color: Color(0xFFedf0f7)),
            TipSection(),
            Divider(thickness: 13, color: Color(0xFFedf0f7)),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(Icons.mode_edit_outline_rounded),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: 'Notes to delivery boy...',
                hintStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(thickness: 13, color: Color(0xFFedf0f7)),
            PaymentDetails(),
            SizedBox(height: 150),
          ],
        ),
      ),
      bottomSheet: CartBottomSheet(),
    );
  }
}
