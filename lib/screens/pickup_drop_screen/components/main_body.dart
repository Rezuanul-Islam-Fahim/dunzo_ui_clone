import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Column(
          children: [
            _buildPanel('Pickup Address', 'Search Pickup Location'),
            _buildPanel('Delivery Address', 'Search Delivery Location'),
            _buildPanel('Select Package Contents', 'e.g. Food Documents'),
          ],
        ),
        SizedBox(height: 20),
        Divider(thickness: 3, color: Color(0xFFedf0f7), height: 0),
        Container(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mode_edit_outline_rounded, size: 20),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: 'Notes to delivery boy...',
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey[500]!,
              ),
            ),
          ),
        ),
        Divider(thickness: 3, color: Color(0xFFedf0f7), height: 0),
      ],
    );
  }

  Widget _buildPanel(String title, String placeHolder) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.fromLTRB(60, 15, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600]!,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 2,
                    child: Container(
                      width: 3,
                      height: 3,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              SizedBox(height: 2),
              Text(
                placeHolder,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]!,
                ),
              ),
              SizedBox(height: 2),
              Divider(thickness: 2, color: Colors.grey[200]!),
            ],
          ),
        ),
      ),
    );
  }
}

