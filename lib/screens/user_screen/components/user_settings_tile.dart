import 'package:dunzo_ui_clone/screens/about_screen.dart';
import 'package:dunzo_ui_clone/screens/empty_screen.dart';
import 'package:dunzo_ui_clone/screens/main_order_screen.dart';
import 'package:dunzo_ui_clone/screens/notification_screens.dart';
import 'package:dunzo_ui_clone/screens/refer_partner_screen.dart';
import 'package:dunzo_ui_clone/screens/saved_addresses_screen.dart';
import 'package:dunzo_ui_clone/screens/saved_card_screen.dart';
import 'package:dunzo_ui_clone/screens/support_screen.dart';
import 'package:flutter/material.dart';

class UserSettingsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTile(
          context,
          'Recent Orders',
          Icons.ac_unit,
          MainOrderScreen.routeName,
        ),
        _buildTile(
          context,
          'PayTm',
          Icons.ac_unit,
          EmptyScreen.routeName,
        ),
        _buildTile(
          context,
          'Saved Addresses',
          Icons.ac_unit,
          SavedAddressesScreen.routeName,
        ),
        _buildTile(
          context,
          'Saved Cards',
          Icons.ac_unit,
          SavedCardScreen.routeName,
        ),
        _buildTile(
          context,
          'Refer a Partner',
          Icons.ac_unit,
          ReferPartnerScreen.routeName,
        ),
        _buildTile(
          context,
          'Notification settings',
          Icons.ac_unit,
          NotificationScreen.routeName,
        ),
        _buildTile(
          context,
          'Support',
          Icons.ac_unit,
          SupportScreen.routeName,
        ),
        _buildTile(
          context,
          'About',
          Icons.ac_unit,
          AboutScreen.routeName,
        ),
      ],
    );
  }

  Widget _buildTile(
    BuildContext context,
    String title,
    IconData icon,
    String routeName,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () => Navigator.of(context).pushNamed(routeName),
        leading: CircleAvatar(
          radius: 16,
          backgroundColor: Colors.grey[100],
          child: Icon(Icons.ac_unit, size: 20),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 14,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
