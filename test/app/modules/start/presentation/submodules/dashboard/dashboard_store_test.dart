import 'package:ezwallet_mobile/app/modules/start/presentation/submodules/dashboard/dashboard_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DashboardStore store;

  setUpAll(() {
    store = DashboardStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
