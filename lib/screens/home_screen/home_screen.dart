import 'package:flutter/material.dart';

import 'components/custom_appbar.dart';
import 'components/main_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        CustomAppBar(_fadeAnimation),
        SliverList(delegate: SliverChildListDelegate([Body()])),
      ],
    );
  }
}
