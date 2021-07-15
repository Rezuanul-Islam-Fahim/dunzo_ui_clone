import 'package:dunzo_ui_clone/screens/store_screen/components/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'components/discount_panel.dart';
import 'components/products_panel.dart';
import 'components/shop_categories.dart';

class StoreScreen extends StatefulWidget {
  static const String routeName = '/store-screen';

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // controller: _controller,
        slivers: [
          CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              DiscountPanel(),
              ProductsPanel(),
              Divider(thickness: 6, color: Color(0xFFedf0f7)),
              ProductsPanel(),
              Divider(thickness: 6, color: Color(0xFFedf0f7)),
              ShopCategories(),
              Divider(thickness: 6, color: Color(0xFFedf0f7)),
              ProductsPanel(),
              Container(
                color: Color(0xFFf1f2f7),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Xpress Mart',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Erevu Ventures Pvt Ltd',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'OpenSans',
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '177/1A 3rd floor, 2nd Main Rd, Dollar Layout, Phase 4, J.P. Nagar'
                      ', Bengaluru, Karnataka 560076',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'OpenSans',
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
