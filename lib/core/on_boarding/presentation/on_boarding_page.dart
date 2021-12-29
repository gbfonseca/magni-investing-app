import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import 'on_boarding.dart';
import 'widgets/introduction_on_boarding.dart';

class OnBoardingPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final store = useListenable(OnBoardingNotifier());
    return Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: SafeArea(
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(
                left: SpacingSizes.s8,
                right: SpacingSizes.s8,
                top: SpacingSizes.s24,
                bottom: SpacingSizes.s32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(
                //   'lib/app/assets/images/logo/logo.png',
                //   width: 189,
                //   height: 41,
                // ),
                Expanded(
                    flex: 1, child: IntroductionOnBoarding(items: store.value)),
                // ButtonWidget(
                //     text: 'Avançar',
                //     onPressed: () => Modular.to.navigate('/signin/'))
              ],
            ),
          ),
        )));
  }
}
