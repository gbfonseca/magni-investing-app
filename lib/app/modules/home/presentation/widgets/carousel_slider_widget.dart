import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../domain/models/carousel_items.dart';

/// A Slider to Home Page
class SliderCarousel extends StatelessWidget {
  /// Declare a var List of Carousel Items
  List<CarouselItems> items;

  /// Must to be pass a CarouselItems List
  SliderCarousel({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) => CarouselSlider(
        items: items
            .map((item) => Builder(
                builder: (context) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          item.path,
                          width: 279,
                          height: 211,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(item.title,
                            style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: ColorConstats.kPrimaryColor)),
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          item.description,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: ColorConstats.kFontColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )))
            .toList(),
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 0,
            viewportFraction: 0.9,
            height: MediaQuery.of(context).size.height),
      );
}
