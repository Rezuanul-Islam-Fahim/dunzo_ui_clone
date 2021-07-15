import 'package:dunzo_ui_clone/components/search_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainSearchScreen extends StatelessWidget {
  static const String routeName = '/main-search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leadingWidth: 45,
            leading: Padding(
              padding: const EdgeInsets.only(left: 2, top: 10),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black87),
                splashRadius: 22,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            titleSpacing: 3,
            title: Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: SizedBox(
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 11, left: 16),
                      child: FaIcon(
                        FontAwesomeIcons.search,
                        color: Colors.black54,
                        size: 16,
                      ),
                    ),
                    hintText: 'Search for an item or store',
                    hintStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SearchScreenBody(),
            ]),
          )
        ],
      ),
    );
  }
}
