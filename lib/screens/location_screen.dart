import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 36),
          IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Search for your location',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                      filled: true,
                      fillColor: Color(0xFFedf0f7),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Address search e.g. Nilkhet Market',
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 16),
                        child: FaIcon(
                          FontAwesomeIcons.search,
                          size: 18,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5 - 36,
                      child: Divider(color: Color(0xFFDCDFE6)),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5 - 36,
                      child: Divider(color: Color(0xFFDCDFE6)),
                    ),
                  ],
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.gps_fixed,
                    color: secondaryColor,
                    size: 20,
                  ),
                  label: Text(
                    'User Current Location',
                    style: TextStyle(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Divider(thickness: 6, color: Color(0xFFedf0f7)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saved Addresses',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.home, color: Colors.grey[500], size: 20),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HOME',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '1353, Nurani Sharak, Botrish, Kishoreganj',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
