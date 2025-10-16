import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationScreen extends StatelessWidget {
  static const String routeName = '/notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Notification settings',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            splashRadius: 22,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            SwitchBoxTile(
              title: 'Order and Support',
              subtitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat metus at pulvinar dictum.',
            ),
            Divider(thickness: 8, color: Colors.grey[100]!),
            SwitchBoxTile(
              title: 'Order and Support',
              subtitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat metus at pulvinar dictum.',
            ),
            Divider(thickness: 8, color: Colors.grey[100]!),
            SwitchBoxTile(
              title: 'Order and Support',
              subtitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat metus at pulvinar dictum.',
            ),
            Divider(thickness: 8, color: Colors.grey[100]!),
            SizedBox(height: 100),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100]!,
              offset: Offset(0, -1),
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please note:', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat metus at pulvinar dictum.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontFamily: 'Lato',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchBoxTile extends StatefulWidget {
  const SwitchBoxTile({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  _SwitchBoxTileState createState() => _SwitchBoxTileState();
}

class _SwitchBoxTileState extends State<SwitchBoxTile> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: TextStyle(color: Colors.black),
            ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              widget.subtitle,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontFamily: 'Lato',
              ),
            ),
          ),
          trailing: CupertinoSwitch(
            activeTrackColor: defaultGreenColor,
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
