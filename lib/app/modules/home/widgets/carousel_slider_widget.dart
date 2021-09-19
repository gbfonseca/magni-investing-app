import 'package:ezwallet_mobile/app/modules/home/protocols/carousel_items.dart';
import 'package:ezwallet_mobile/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderCarousel extends StatelessWidget {
  List<CarouselItems> items;
  SliderCarousel({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items.map((item) {
        return Builder(builder: (BuildContext context) {
          return Column(
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
          );
        });
      }).toList(),
      options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 0,
          viewportFraction: 0.9,
          height: MediaQuery.of(context).size.height),
    );
  }
}
