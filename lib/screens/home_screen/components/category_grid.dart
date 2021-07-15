import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/custom_order_screen/custom_order_screen.dart';
import 'package:dunzo_ui_clone/screens/store_list_screen/store_list_screen.dart';
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      children: [
        categoryPanel(context, Icons.shopping_basket, 'Food Delivery'),
        categoryPanel(context, Icons.medical_services, 'Medicines'),
        categoryPanel(
          context,
          Icons.pets,
          'Pet Supplies',
          showDetailedScreen: false,
        ),
        categoryPanel(
          context,
          Icons.health_and_safety_rounded,
          'Health and Wealth',
        ),
        categoryPanel(
          context,
          Icons.card_giftcard_sharp,
          'Gifts & Lifestyle',
        ),
        categoryPanel(
          context,
          Icons.soap,
          'Poan Soap',
          routeName: CustomOrderScreen.routeName,
        ),
        categoryPanel(
          context,
          Icons.cottage,
          'Any store in the city',
          routeName: CustomOrderScreen.routeName,
        ),
      ],
    );
  }

  Widget categoryPanel(
    BuildContext context,
    IconData icon,
    String title, {
    String routeName = StoreListScreen.routeName,
    bool showDetailedScreen = true,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            offset: Offset(0, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(3),
          onTap: () => Navigator.of(context).pushNamed(
            routeName,
            arguments: {
              'mainCategory': true,
              'showDetailedScreen': showDetailedScreen,
            },
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: secondaryColor),
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
