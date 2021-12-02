import 'package:mobx/mobx.dart';

import '../../on_boarding/domain/models/carousel_items.dart';

part 'on_boarding_store.g.dart';

class OnBoardingStore = _OnBoardingStoreBase with _$OnBoardingStore;

abstract class _OnBoardingStoreBase with Store {
  @observable
  List<CarouselItems> value = [
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
  ];
}
