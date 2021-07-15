import 'package:dunzo_ui_clone/screens/location_screen.dart';
import 'package:flutter/material.dart';

class FormBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose category',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFf3f3f5),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Books|Documents',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Lato',
                          color: Color(0xFF888c98),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Color(0xFF888c98),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Make a list of items (Max 10 Allowed)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    hintText: 'Type item/task one by one',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Lato',
                      color: Color(0xFF888c98),
                    ),
                    filled: true,
                    fillColor: Color(0xFFf3f3f5),
                  ),
                  minLines: 6,
                  maxLines: 6,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(
              LocationScreen.routeName,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter store/pickup address',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFf3f3f5),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 18,
                          color: Color(0xFF888c98),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Search for store/place/pickup',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Lato',
                            color: Color(0xFF888c98),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(
              LocationScreen.routeName,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Address',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFf3f3f5),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 18,
                          color: Color(0xFF888c98),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Add/Select Address',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Lato',
                            color: Color(0xFF888c98),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
