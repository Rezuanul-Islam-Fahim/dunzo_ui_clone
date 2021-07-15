import 'package:flutter/material.dart';

import 'components/category_items_list.dart';
import 'components/custom_appbar.dart';

class CategoryItemsScreen extends StatelessWidget {
  static const String routeName = '/category-items';
  final int itemLength = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: CustomAppBar(),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryItemsList(),
              CategoryItemsList(),
              CategoryItemsList(),
              CategoryItemsList(),
              CategoryItemsList(),
            ],
          ),
        ),
      ),
    );
  }
}
