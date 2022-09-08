import 'package:carousel_slider/carousel_slider.dart';
import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';

class CarouselBanner extends StatefulWidget {
  CarouselBanner(this.corouselList, {this.dotPosition});

  final List<Widget> corouselList;
  final double dotPosition;

  @override
  State<CarouselBanner> createState() => _CarouselBannerState();
}

class _CarouselBannerState extends State<CarouselBanner> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CarouselSlider(
            carouselController: _controller,
            items: widget.corouselList
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
            options: CarouselOptions(
              height: 130,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) => setState(
                () => _currentIndex = index,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.corouselList.length,
            (int index) {
              return Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentIndex == index ? Colors.black45 : Colors.black12,
                ),
              );
            },
          ),
          // children: widget.corouselList.map((entry) {
          //   return GestureDetector(
          //     onTap: () => _controller.animateToPage(entry.key),
          //     child: Container(
          //       width: 12.0,
          //       height: 12.0,
          //       margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
          //       decoration: BoxDecoration(
          //           shape: BoxShape.circle,
          //           color: (Theme.of(context).brightness == Brightness.dark
          //                   ? Colors.white
          //                   : Colors.black)
          //               .withOpacity(_current == entry.key ? 0.9 : 0.4)),
          //     ),
          //   );
          // }).toList(),
        ),
      ],
    );
  }
}
