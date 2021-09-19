import 'package:flutter_triple/flutter_triple.dart';
import 'domain/models/carousel_items.dart';

/// Store of Home
class HomeStore extends NotifierStore<Exception, List<CarouselItems>> {
  /// HomeStore initialize the List of Carousel Items
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
