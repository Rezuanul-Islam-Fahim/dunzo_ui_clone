import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';
import 'package:pit_slider_carousel/pit_slider_carousel.dart';

class CarouselBanner extends StatelessWidget {
  CarouselBanner(this.corouselList, {this.dotPosition});

  final List<Widget> corouselList;
  final double dotPosition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: PitSliderCarousel(
        children: corouselList
            .map(
              (slide) => Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: slide,
                ),
              ),
            )
            .toList(),
        maxDotsIndicator: 10,
        dotSize: 5,
        activeDotColor: secondaryColor,
        dotColor: Colors.grey[200],
        useDot: true,
        animationCurve: Curves.ease,
        animationDuration: Duration(milliseconds: 800),
        autoPlay: true,
        dotPosition: Position(bottom: dotPosition),
        height: 130,
      ),
    );
  }
}
