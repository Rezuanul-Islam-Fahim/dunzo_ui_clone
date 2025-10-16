import 'package:flutter/material.dart';

import 'components/custom_appbar.dart';
import 'components/main_body.dart';

class StoreListScreen extends StatefulWidget {
  static const String routeName = '/store-list';

  @override
  _StoreListScreenState createState() => _StoreListScreenState();
}

class _StoreListScreenState extends State<StoreListScreen>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  bool get _isAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (135 - 75);
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _scrollController = ScrollController()
      ..addListener(() {
        _isAppBarExpanded
            ? _animationController.forward()
            : _animationController.reverse();
      });
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, bool> routeData =
        (ModalRoute.of(context)?.settings.arguments ?? {}) as Map<String, bool>;

    return Scaffold(
      body: Scrollbar(
        interactive: true,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            CustomAppBar(_fadeAnimation),
            SliverList(
              delegate: SliverChildListDelegate([MainBody(routeData)]),
            ),
          ],
        ),
      ),
    );
  }
}
