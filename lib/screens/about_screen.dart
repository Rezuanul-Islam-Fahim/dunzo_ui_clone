import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9b9b9b),
        elevation: 0,
        title: Text(
          'About',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            _buildTile('Terms and Condition', () {}),
            _buildTile('Privacy and Policy', () {}),
            _buildTile('About Us', () {}),
            _buildTile('Contact Us', () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(String title, Function navigation) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          title: Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14,
            color: Colors.grey[400]!,
          ),
        ),
        Divider(),
      ],
    );
  }
}

