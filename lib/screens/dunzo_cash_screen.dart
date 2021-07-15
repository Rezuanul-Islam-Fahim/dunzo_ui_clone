import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class DunzoCashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 80,
                  color: primaryColor,
                ),
                Container(
                  color: primaryColor,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'YOUR DUNZO CASH BALANCE',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '₹50',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato',
                            color: Color(0xFF0f1a38),
                          ),
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: [
                            Container(
                              width: 43,
                              height: 4,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 20,
                              height: 4,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Share your code and save 20% on your bill value upto ₹100 on your next order',
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 35),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: defaultRedColor,
                          ),
                          child: Text(
                            'Expires in 3 days',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          'How it works',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        _buildInfo(
                          'Share the referral link with your friend',
                          Icons.share,
                        ),
                        SizedBox(height: 12),
                        _buildInfo(
                          'Your finger clicks on the lick or signs up through the code',
                          Icons.hail_outlined,
                        ),
                        SizedBox(height: 12),
                        _buildInfo(
                          'Your friend get ₹50 Dunzo Cash on sign up. You get ₹50 when they complete on order of ₹100'
                          ' or more within 7 days. you can earn upto ₹500 Dunzo Cash',
                          Icons.account_balance_wallet,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 20,
              top: 30,
              child: Image.asset(
                'assets/images/lightening.png',
                width: 110,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String title, IconData icon) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 5),
          Icon(icon, color: secondaryColor, size: 20),
          SizedBox(width: 23),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
