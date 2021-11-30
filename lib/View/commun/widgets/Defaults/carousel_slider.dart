import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _current = 0;
  final CarouselController buttonCarouselController = CarouselController();

  // const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3];
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: list
              .map(
                (e) => Builder(
                  builder: (BuildContext context) {
                    return Container(
                      color: Colors.grey,
                      width: screenSize.width,
                      child: Stack(
                        children: [
                          Text(
                            'text $e',
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: list.asMap().entries.map(
                                (
                                  entry,
                                ) {
                                  return TextButton(
                                    onPressed: () =>
                                        buttonCarouselController.animateToPage(
                                      entry.key,
                                    ),
                                    child: Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(
                                          _current == entry.key ? 0.9 : 0.4,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
              .toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: screenSize.height / 3.5,
            onPageChanged: (
              index,
              reason,
            ) {
              setState(
                () {
                  _current = index;
                },
              );
            },
            //aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(
              seconds: 3,
            ),
            autoPlayAnimationDuration: Duration(
              milliseconds: 800,
            ),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
