import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

import 'components/profile_edit_sheet.dart';
import 'components/user_settings_tile.dart';

class UserScreen extends StatefulWidget {
  static const String routeName = '/user-profile';

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  ScrollController _controller = ScrollController();
  bool showAppbarTitle = false;

  @override
  void initState() {
    _controller.addListener(() {
      if (_controller.hasClients && _controller.offset > 30) {
        setState(() {
          showAppbarTitle = true;
        });
      } else if (_controller.hasClients && _controller.offset < 30) {
        setState(() {
          showAppbarTitle = false;
        });
      }
    });
    super.initState();
  }

  void triggerProfileEditDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return ProfileEditSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 1,
            title: showAppbarTitle
                ? Text(
                    'Account Details',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : null,
            leading: Padding(
              padding: const EdgeInsets.only(left: 2),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black87),
                splashRadius: 22,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hey there!',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: triggerProfileEditDialog,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 3,
                              vertical: 1,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'EDIT',
                                  style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: secondaryColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.grey[500]!,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '+91 9434567683',
                          style: TextStyle(
                            color: Colors.grey[600]!,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 8,
                color: Colors.grey[200]!,
              ),
              UserSettingsTile(),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 65),
                child: Text(
                  'Version 3.28.0.1',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600]!,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

