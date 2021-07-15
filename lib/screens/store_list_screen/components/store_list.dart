import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/detailed_store_screen/detailed_store_screen.dart';
import 'package:dunzo_ui_clone/screens/store_screen/store_screen.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  StoreList(this.routeData);

  final Map<String, bool> routeData;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _buildStorePanel(context, true, true),
        _buildStorePanel(context),
        _buildStorePanel(context, false, true),
        _buildStorePanel(context, true, true),
        _buildNoStoreSection(),
        _buildStorePanel(context, true, false),
        _buildStorePanel(context),
        _buildStorePanel(context, true, true),
        _buildStorePanel(context),
        _buildStorePanel(context),
      ],
    );
  }

  Widget _buildNoStoreSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.4),
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.grey[200]),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: 60,
            height: 60,
            child: Image.asset('assets/images/lightening.png'),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text(
                'Can\'t find your favourite store?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'Make a list and order from any store',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 10),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStorePanel(
    BuildContext context, [
    bool showBadges = false,
    bool showInfos = false,
  ]) {
    var thumbnail = PreferredSize(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          width: 95,
          height: 95,
          child: Image.asset(
            'assets/images/banner.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      preferredSize: Size(95, 95),
    );

    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        routeData['mainCategory']
            ? routeData['showDetailedScreen']
                ? DetailedStoreScreen.routeName
                : StoreScreen.routeName
            : StoreScreen.routeName,
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            thumbnail,
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Xpress Mart',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '3.9 km BTM Stage 1',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        size: 12,
                        color: Colors.grey[600],
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Within 60 Minutes',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                          fontFamily: 'Lato',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  if (showBadges)
                    Wrap(
                      spacing: 10,
                      children: [
                        _buildBadge(
                          'Top Store',
                          Icons.star,
                          Color(0xFF01d290),
                        ),
                        _buildBadge(
                          'Wide Variety',
                          Icons.shopping_bag,
                          Color(0xFFf3a014),
                        ),
                      ],
                    ),
                  if (showInfos && !routeData['mainCategory'])
                    SizedBox(
                      width: MediaQuery.of(context).size.width -
                          thumbnail.preferredSize.width -
                          45,
                      child: Column(
                        children: [
                          Divider(height: 30, color: Color(0xFFe7e8ec)),
                          Column(
                            children: [
                              _buildInfo(
                                Icons.wallet_giftcard_outlined,
                                Colors.purple,
                                '10% off on Selected Items',
                              ),
                              SizedBox(height: 6),
                              _buildInfo(
                                Icons.attach_money_rounded,
                                Colors.amber,
                                'Get a Free Bingo Mad Angles Cheese Nachos on Your Cart',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(IconData icon, Color iconColor, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: iconColor),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBadge(String title, IconData icon, Color color) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color.withOpacity(0.1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        child: Row(
          children: [
            Icon(icon, color: color, size: 16),
            SizedBox(width: 3),
            Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
