import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWiget extends StatelessWidget {
  const LoadingWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Lottie.asset('lib/assets/animations/loading.json', width: 180);
}
