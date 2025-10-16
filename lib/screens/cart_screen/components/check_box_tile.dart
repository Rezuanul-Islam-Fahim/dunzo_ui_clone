import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: CheckboxListTile(
        title: SizedBox(
          height: 25,
          child: Text(
            'No Contact Delivery',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Text(
          'Partner will check with you and leave the order outside your door',
          style: TextStyle(fontSize: 13),
        ),
        value: checkedValue,
        onChanged: (newValue) {
          setState(() {
            checkedValue = newValue!;
          });
        },
        activeColor: secondaryColor,
        controlAffinity: ListTileControlAffinity.leading,
        tileColor: Color(0xFFfffdf1),
        contentPadding: EdgeInsets.fromLTRB(5, 10, 25, 25),
      ),
    );
  }
}
