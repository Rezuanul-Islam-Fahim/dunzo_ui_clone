import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/pickup_drop_screen/pickup_drop_screen.dart';
import 'package:dunzo_ui_clone/screens/store_list_screen/store_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PanelCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2.2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      children: [
        gridPanel(context, defaultGreenColor, 'Groceries & Essentials'),
        gridPanel(context, skinColor, 'Fruits & Vegetables'),
        gridPanel(
          context,
          secondaryColor,
          'Pickup & Drop',
          PickupDropScreen.routeName,
        ),
        gridPanel(context, defaultRedColor, 'Meat & Fish'),
      ],
    );
  }

  Widget gridPanel(
    BuildContext context,
    Color color,
    String title, [
    String routeName = StoreListScreen.routeName,
  ]) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => Navigator.of(context).pushNamed(
            routeName,
            arguments: {
              'mainCategory': false,
              'showDetailedScreen': false,
            },
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 95,
                  child: Text(
                    title,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.center,
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: FaIcon(FontAwesomeIcons.arrowRight, size: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
