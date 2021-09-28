import 'package:mobx/mobx.dart';

part 'signup_store.g.dart';

class SignupStore = _SignupStoreBase with _$SignupStore;
abstract class _SignupStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}