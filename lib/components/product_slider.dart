import 'package:flutter/material.dart';

class ProductSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15, top: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: EdgeInsets.only(right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: SizedBox(
                      width: 140,
                      height: 100,
                      child: Image.asset(
                        'assets/images/banner.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                SizedBox(
                  width: 140,
                  child: Text(
                    'Organic Era',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      size: 12,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Within 60 minutes',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
