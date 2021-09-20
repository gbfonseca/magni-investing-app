import 'package:mobx/mobx.dart';

part 'signin_store.g.dart';

class SigninStore = _SigninStoreBase with _$SigninStore;
abstract class _SigninStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}