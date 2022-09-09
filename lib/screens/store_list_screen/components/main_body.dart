import 'package:dunzo_ui_clone/components/carousel_banner.dart';
import 'package:flutter/material.dart';

import 'store_list.dart';

class MainBody extends StatelessWidget {
  MainBody(this.routeData);

  final Map<String, bool> routeData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            CarouselBanner(
              [
                Container(
                  child: Image.asset(
                    'assets/images/banner.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/banner.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/banner.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/banner.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '200 Stores',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            StoreList(routeData),
          ],
        ),
      ),
    );
  }
}
