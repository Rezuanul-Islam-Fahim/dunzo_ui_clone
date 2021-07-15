import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'banner_slider.dart';
import '../../../components/carousel_banner.dart';
import 'category_grid.dart';
import 'panel_category.dart';
import 'support_panel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          color: Color(0xFFFFFFFD),
          // color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  color: Color(0xFFcbeef0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Groceries and essential',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'will be delivered throughout the lockdown',
                                style: TextStyle(
                                  fontSize: 13,
                                  // fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Delivery might be slower than usual due to high demand',
                                style: TextStyle(
                                  fontSize: 11,
                                  // fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 125,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              top: -20,
                              width: 220,
                              height: 220,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFbdeaed),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/lightening.png',
                                width: 70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              dotPosition: -40,
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Essentials delivered to your doorstep',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            PanelCategory(),
            SizedBox(height: 25),
            CategoryGrid(),
            SizedBox(height: 30),
            Divider(thickness: 30, color: Color(0xFFedf0f7)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Top Picks for you',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            BannerSlider(),
            SizedBox(height: 20),
            Divider(thickness: 15, color: Color(0xFFedf0f7)),
            _buildAssistantPanel(),
            Divider(thickness: 15, color: Color(0xFFedf0f7)),
            SupportPanel(),
            Divider(thickness: 15, color: Color(0xFFedf0f7)),
          ],
        ),
      ),
    );
  }

  Container _buildAssistantPanel() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: [primaryColor, secondaryColor],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Dunzo Assistant',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(FontAwesomeIcons.arrowRight, size: 10),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'Just enter a location and the task.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Text(
                'We will get it done.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
