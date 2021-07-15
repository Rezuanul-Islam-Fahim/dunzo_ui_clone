import 'package:flutter/material.dart';

import 'item.dart';

class ItemList extends StatelessWidget {
  ItemList({@required this.title, @required this.itemlength});

  final String title;
  final int itemlength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Color(0xFFf2f2f2),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        ),
        ListView.builder(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: itemlength,
          itemBuilder: (ctx, index) {
            return Item();
          },
        ),
      ],
    );
  }
}
