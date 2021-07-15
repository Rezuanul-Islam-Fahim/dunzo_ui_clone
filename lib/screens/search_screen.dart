import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/components/search_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          toolbarHeight: 70,
          backgroundColor: primaryColor,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color(0xFF5273A5),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 11),
                    child: FaIcon(
                      FontAwesomeIcons.search,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                  hintText: 'Search for an item or store',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              color: primaryColor,
              child: SearchScreenBody(),
            ),
          ]),
        )
      ],
    );
  }
}
