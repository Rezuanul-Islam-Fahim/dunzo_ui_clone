import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class ProfileEditSheet extends StatefulWidget {
  @override
  _ProfileEditSheetState createState() => _ProfileEditSheetState();
}

class _ProfileEditSheetState extends State<ProfileEditSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400 + MediaQuery.of(context).viewInsets.bottom,
      padding: EdgeInsets.fromLTRB(
        15,
        10,
        15,
        0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.person_pin_rounded),
                    SizedBox(width: 6),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ClipOval(
                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      splashRadius: 40,
                      icon: Icon(Icons.close),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            _buildTextField(context, 'Your Name'),
            SizedBox(height: 20),
            _buildTextField(
              context,
              'Phone Number',
              requiredField: true,
              icon: Icons.phone,
            ),
            SizedBox(height: 20),
            _buildTextField(context, 'Email ID', icon: Icons.email),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: primaryColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Color(0xFFd0d0d0),
                    spreadRadius: 2,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(
                      'Update',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    BuildContext context,
    String title, {
    bool requiredField = false,
    // ignore: unused_element
    IconData icon,
  }) {
    return Column(
      children: [
        Row(
          children: [
            if (requiredField)
              Text(
                '*',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xFFe94742),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Lato',
                color: Color(0xFF6f7487),
                fontSize: 13,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        SizedBox(
          height: 42,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xFFe0e3ea)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xFFe0e3ea)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: secondaryColor),
              ),
              prefixIcon: icon != null
                  ? Icon(
                      icon,
                      size: 20,
                      color: Color(0xFFb7b9c8),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
