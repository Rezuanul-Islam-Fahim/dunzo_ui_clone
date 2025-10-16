import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

import 'edit_location_screen.dart';
import 'location_screen.dart';

class SavedAddressesScreen extends StatelessWidget {
  static const String routeName = '/saved-addresses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF323b44),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: Text('Saved Addresses'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [_buildAddressPanel(context)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF323b44),
        child: Icon(Icons.add_location_alt_rounded),
        onPressed: () => Navigator.of(context).pushNamed(
          LocationScreen.routeName,
        ),
      ),
    );
  }

  Widget _buildAddressPanel(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        EditLocationScreen.routeName,
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Card(
          elevation: 3,
          shadowColor: Colors.grey[200]!,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 75,
                    height: 90,
                    color: defaultRedColor,
                    child: ClipOval(
                      child: Container(
                        color: Colors.white,
                        width: 38,
                        height: 38,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.home_work,
                          size: 20,
                          color: defaultRedColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'HOME',
                                style: TextStyle(
                                  color: defaultRedColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(right: 25),
                                child: Text(
                                  '1353, Atimkhana Road, Botrish, Kishoreganj',
                                  style: TextStyle(
                                    color: Color(0xFF919191),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            alignment: Alignment.center,
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Icon(
                              Icons.edit,
                              size: 12,
                              color: Colors.grey[400]!,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

