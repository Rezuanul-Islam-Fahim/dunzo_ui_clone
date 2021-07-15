import 'package:flutter/material.dart';

import 'components/confirm_order.dart';
import 'components/form.dart';

class CustomOrderScreen extends StatelessWidget {
  static const String routeName = '/custom-order';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Text(
          'Order anything in 3 simple steps',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      bottomSheet: ConfirmOrderSheet(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFc0c0da)),
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFFefeefc),
              ),
              margin: EdgeInsets.all(15),
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
                            'Order From Pan Stores',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF20225b),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Add the paan items you want to the list below & we will get it from the best store near you.',
                            style: TextStyle(color: Color(0xFF050042)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/lightening.png',
                    width: 70,
                  ),
                ],
              ),
            ),
            FormBody(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
