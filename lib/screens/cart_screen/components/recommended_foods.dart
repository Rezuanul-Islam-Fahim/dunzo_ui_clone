import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class RecommendedFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Row(
            children: [
              Icon(Icons.thumb_up_alt_outlined, size: 16),
              SizedBox(width: 13),
              Text(
                'Recommended just for your',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 250,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 15, top: 20, bottom: 20),
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (ctx, index) {
              return GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(
                  ProductDetailsScreen.routeName,
                ),
                child: Container(
                  width: 145,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(left: 8, top: 5, right: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[100]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          'assets/images/lightening.png',
                          width: 70,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Regular Cucumber',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '1 Kg',
                        style: TextStyle(
                          color: Colors.grey[600]!,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₹50',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato',
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(30),
                            splashColor: Colors.grey[200]!,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
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
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

