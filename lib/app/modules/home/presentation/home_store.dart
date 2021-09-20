import 'package:ezwallet_mobile/app/modules/home/domain/models/carousel_items.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  List<CarouselItems> value = [
    CarouselItems(
        path: 'lib/app/assets/images/wallet-image/wallet-image.png',
        title: 'Praticidade',
        description: 'Monte sua careira de investimentos facilmente.'),
    CarouselItems(
        path: 'lib/app/assets/images/personal_finance/personal_finance.png',
        title: 'Simplicidade',
        description:
            'Acompanhe a evolução do seu patrimônio de forma simples.'),
    CarouselItems(
        path: 'lib/app/assets/images/analysis/analysis.png',
        title: 'Fácil análise',
        description: 'Compare e analise facilmente os ativos.'),
  ];
}
