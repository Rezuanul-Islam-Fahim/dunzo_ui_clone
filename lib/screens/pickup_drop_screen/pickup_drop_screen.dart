import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

import 'components/banner.dart' as b;
import 'components/bottom_sheet.dart';
import 'components/main_body.dart';

class PickupDropScreen extends StatelessWidget {
  static const String routeName = '/pickup-drop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Send Package',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline, size: 30),
          ),
        ],
      ),
      bottomSheet: BottomSheetSection(),
      body: SingleChildScrollView(
        child: Container(
          color: primaryColor,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 5),
                b.Banner(),
                MainBody(),
                SizedBox(height: 160),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
