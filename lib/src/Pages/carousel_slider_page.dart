import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../core/constants/asset_constants.dart';
import '../widgets/appbar_widget.dart';

class CarouselSliderPage extends StatefulWidget {
  const CarouselSliderPage({super.key});

  @override
  _CarouselSliderPageState createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Carousel Slider',
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
          CarouselSlider(
            items: [
              for (int i = 0; i < 5; i++)
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        i % 2 == 0
                            ? kImgUrlComputerSquare
                            : kImgUrlNatureLandScape,
                      ),
                      fit: BoxFit.cover,
                    ),

                    // add elevation to the image
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.5),
                    //     spreadRadius: 2,
                    //     blurRadius: 5,
                    //     offset: const Offset(0, 3),
                    //   ),
                    // ],
                  ),
                ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
