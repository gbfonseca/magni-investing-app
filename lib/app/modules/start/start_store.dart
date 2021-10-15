import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'start_store.g.dart';

class StartStore = _StartStoreBase with _$StartStore;

abstract class _StartStoreBase with Store implements Disposable {
  @observable
  var pageViewController = PageController();

  @override
  void dispose() {
    pageViewController.dispose();
  }
}
