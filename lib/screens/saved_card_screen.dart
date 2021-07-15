import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

import 'add_card_screen.dart';

class SavedCardScreen extends StatelessWidget {
  static const String routeName = '/saved-card';

  Widget build(BuildContext context) {
    var sliverAppBar = SliverAppBar(
      pinned: true,
      backgroundColor: secondaryColor,
      elevation: 0,
      title: Text(
        'Saved Cards',
        style: TextStyle(fontSize: 18, fontFamily: 'OpenSans'),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          splashRadius: 22,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppBar,
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                // height: double.infinity,
                alignment: Alignment.center,

                child: SizedBox(
                  height: MediaQuery.of(context).size.height -
                      sliverAppBar.toolbarHeight -
                      MediaQuery.of(context).padding.top -
                      56,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/lightening.png', width: 120),
                        SizedBox(height: 10),
                        Text(
                          'You have no cards saved yet',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontFamily: 'Lato',
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Tap the + button below to add a card',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45,
                            fontFamily: 'Lato',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF323b44),
        child: Icon(Icons.credit_card_rounded),
        onPressed: () => Navigator.of(context).pushNamed(
          AddCardScreen.routeName,
        ),
      ),
    );
  }
}
