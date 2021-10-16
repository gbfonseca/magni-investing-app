import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../utils/colors.dart';
import '../../domain/models/carousel_items.dart';

/// A Slider to OnBoarding Page
class IntroductionOnBoarding extends StatelessWidget {
  /// Declare a var List of Carousel Items
  List<CarouselItems> items;

  /// Must to be pass a CarouselItems List
  IntroductionOnBoarding({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) => IntroductionScreen(
        pages: [
          ...items.map((item) => PageViewModel(
              title: item.title,
              body: item.description,
              image: Image.asset(item.path),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.kPrimaryColor),
                  bodyTextStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.kFontColor))))
        ],
        done: Text('Avançar'),
        onDone: () {
          Modular.to.navigate('/signin/');
        },
        showSkipButton: true,
        skip: Text('Pular'),
        showNextButton: true,
        next: Text('Próximo'),
        dotsDecorator: DotsDecorator(
            activeColor: ColorConstants.kPrimaryColor,
            activeSize: Size(25, 5),
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
      );
}
