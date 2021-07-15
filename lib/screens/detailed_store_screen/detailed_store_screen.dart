import 'package:flutter/material.dart';

import 'components/custom_appbar.dart';
import 'components/main_body.dart';

class DetailedStoreScreen extends StatelessWidget {
  static const String routeName = '/detailed-store';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [CustomAppBar()];
          },
          body: TabBarView(
            children: [
              MainBody(),
              MainBody(),
              MainBody(),
              MainBody(),
              MainBody(),
              MainBody(),
            ],
          ),
        ),
      ),
    );
  }
}
