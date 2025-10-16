import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  static const String routeName = '/support';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Dunzo Support',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15,
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
            Container(
              width: double.infinity,
              color: Color(0xFFf2f4ff),
              child: Text(
                'Issues not related to an order',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Color(0xFF172355),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            ),
            SupportPanel('I have a payment related query'),
            SupportPanel('I have a payment related query'),
            SupportPanel('I have a payment related query'),
          ],
        ),
      ),
    );
  }
}

class SupportPanel extends StatefulWidget {
  const SupportPanel(this.title);

  final String title;

  @override
  _SupportPanelState createState() => _SupportPanelState();
}

class _SupportPanelState extends State<SupportPanel> {
  bool _isExpanded = false;

  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF182552),
            ),
          ),
          trailing: Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
        ),
        // Divider(),
        AnimatedContainer(
          padding: EdgeInsets.only(left: 20, top: 5),
          width: double.infinity,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: !_isExpanded ? 0 : 90,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Text(
                'Please let us know how we may help',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.center,
                  width: 60,
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'CHAT',
                    style: TextStyle(
                      color: Color(0xFF363636),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1, height: 0),
      ],
    );
  }
}

