import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class EditLocationScreen extends StatelessWidget {
  static const String routeName = '/edit-location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Add address details',
          style: TextStyle(
            fontSize: 17,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
            ),
            child: TextButton.icon(
              icon: Icon(Icons.delete, color: Colors.black87, size: 18),
              label: Text(
                'DELETE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 316),
        child: Stack(
          children: [
            Center(
              child: Text('Implement Map Here'),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                elevation: 8,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                          size: 20,
                        ),
                        SizedBox(width: 3),
                        Text(
                          'Edit on map',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 15),
              _buildField(
                'Flat, Floor, Building Name',
                Icons.home,
                color: primaryColor,
              ),
              SizedBox(height: 20),
              _buildField(
                'How to Reach (Optional)',
                Icons.navigation_rounded,
              ),
              SizedBox(height: 20),
              _buildField(
                'Contact Details (Optional)',
                Icons.phone,
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.save, color: Color(0xffa6a8b4), size: 20),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Save As',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                            fontFamily: 'Lato',
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            _buildSaveMethodButton(
                              'HOME',
                              () {},
                              isActive: true,
                            ),
                            _buildSaveMethodButton('OFFICE', () {}),
                            _buildSaveMethodButton('OTHERS', () {}),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Material(
                borderRadius: BorderRadius.circular(30),
                color: primaryColor,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Save Address',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSaveMethodButton(
    String title,
    Function handler, {
    bool isActive = false,
  }) {
    return Container(
      margin: EdgeInsets.only(right: 13),
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: isActive ? primaryColor : Color(0xFFb7bac3),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? primaryColor : Color(0xFF6f7487),
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // ignore: unused_element
  Widget _buildField(String title, IconData icon, {Color? color}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(icon, color: Color(0xffa6a8b4), size: 20),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFe7e8ec)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFe7e8ec)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                        width: 1.6,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
