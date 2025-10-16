import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatelessWidget {
  static const String routeName = '/add-card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor.withValues(alpha: 0.8),
        elevation: 0,
        title: Text(
          'Credit/Debit Card',
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Form(
            child: Column(
              children: [
                _buildField('CARD NO.', 'Enter Card Number',
                    showCardIcon: true),
                SizedBox(height: 30),
                _buildField('NAME ON CARD', 'Enter Name'),
                SizedBox(height: 30),
                _buildCardDateField(),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(5),
                  color: primaryColor,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'ADD CARD',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField(
    String title,
    String placeHolder, {
    // ignore: unused_element
    bool showCardIcon = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              hintText: placeHolder,
              hintStyle: TextStyle(
                color: Color(0xFF999999),
                fontFamily: 'Lato',
                fontSize: 15,
              ),
              suffixIcon: showCardIcon
                  ? Icon(
                      Icons.credit_card,
                      color: Color(0xFFd8d8d8),
                    )
                  : null,
            ),
            textInputAction: TextInputAction.next,
          ),
        ),
      ],
    );
  }

  Widget _buildCardDateField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'EXPIRY DATE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: primaryColor),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 30,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'MM',
                    hintStyle: TextStyle(
                      color: Color(0xFF999999),
                      fontFamily: 'Lato',
                      fontSize: 13,
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
              Text(
                '/',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 16,
                      ),
                      border: InputBorder.none,
                      hintText: 'YY',
                      hintStyle: TextStyle(
                        color: Color(0xFF999999),
                        fontFamily: 'Lato',
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
