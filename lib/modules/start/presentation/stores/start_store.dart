import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'start_store.g.dart';

class StartStore = _StartStoreBase with _$StartStore;

abstract class _StartStoreBase with Store {
  @observable
  var pageViewController = PageController();

  @override
  void dispose() {
    pageViewController.dispose();
  }
}
