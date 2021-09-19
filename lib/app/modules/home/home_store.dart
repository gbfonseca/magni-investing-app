import 'package:ezwallet_mobile/app/modules/home/protocols/carousel_items.dart';
import 'package:flutter_triple/flutter_triple.dart';

class HomeStore extends NotifierStore<Exception, List<CarouselItems>> {
  HomeStore()
      : super([
          CarouselItems(
              path: 'lib/assets/images/wallet-image/wallet-image.png',
              title: 'Praticidade',
              description: 'Monte sua careira de investimentos facilmente.'),
          CarouselItems(
              path: 'lib/assets/images/personal_finance/personal_finance.png',
              title: 'Simplicidade',
              description:
                  'Acompanhe a evolução do seu patrimônio de forma simples.'),
          CarouselItems(
              path: 'lib/assets/images/analysis/analysis.png',
              title: 'Fácil análise',
              description: 'Compare e analise facilmente os ativos.'),
        ]);
}
