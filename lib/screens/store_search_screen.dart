import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoreSearchScreen extends StatelessWidget {
  static const String routeName = '/store-search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          'Search in Xpress Mart',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        titleSpacing: 10,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: Material(
              shadowColor: Colors.grey[50],
              elevation: 2,
              borderRadius: BorderRadius.circular(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  height: 42,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Search for an item',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Lato',
                        color: Colors.grey[500],
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                          horizontal: 15,
                        ),
                        child: FaIcon(FontAwesomeIcons.search, size: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
