import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/components/carousel_banner.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
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
              height: 230,
              padding: EdgeInsets.only(bottom: 30),
              child: CarouselBanner(
                [
                  Image.asset(
                    'assets/images/lightening.png',
                    height: double.infinity,
                  ),
                  Image.asset(
                    'assets/images/lightening.png',
                    height: double.infinity,
                  ),
                  Image.asset(
                    'assets/images/lightening.png',
                    height: double.infinity,
                  ),
                  Image.asset(
                    'assets/images/lightening.png',
                    height: double.infinity,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Maggi Special Nasala noodles',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.grey[200],
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                                child: Icon(
                                  Icons.add_rounded,
                                  size: 18,
                                  color: secondaryColor,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'ADD',
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text(
                    '70 GSM',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '₹15',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 4, color: Color(0xFFedf0f7)),
            Container(
              width: double.infinity,
              // color: Colors.red,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nibh est, condimentum vitae volutpat',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Important Information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Country of Origin',
                    style: TextStyle(
                      // fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Bangladesh',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nibh est, condimentum vitae volutpat at, dapibus sit amet tortor. Suspendisse sagittis vestibulum elit vitae sodales. Integer scelerisque ante velit, non feugiat odio accumsan id. Mauris lobortis lectus sit amet quam dignissim, sit amet placerat neque dictum. Sed aliquet mi lacus, eu eleifend mauris tempus et. Donec tellus elit, efficitur eu ante eu, tincidunt fringilla lorem. Duis a enim arcu. Mauris aliquam eleifend diam eget vehicula. Maecenas eget turpis ullamcorper, fringilla ligula ac, tincidunt urna. Curabitur varius eget eros eget sagittis. Nulla tincidunt, dolor eget sollicitudin feugiat, ipsum velit viverra eros, eget mattis sapien mauris nec tortor.',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
