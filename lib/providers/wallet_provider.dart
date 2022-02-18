import 'package:flutter/material.dart';

import '../shared/models/wallet_model.dart';
import '../utils/services/dio_client.dart';
import '../utils/services/wallet_service.dart';

class WalletProvider extends ChangeNotifier {
  ValueNotifier<WalletModel?> wallet = ValueNotifier(null);

  ValueNotifier<List<WalletModel>> wallets =
      ValueNotifier<List<WalletModel>>([]);

  Future<WalletModel?> getPrimaryWallet() async {
    final _walletService = WalletService(dio);
    if (wallet.value != null) {
      // wallet.notifyListeners();
      return wallet.value;
    }
    final data = await _walletService.getPrimaryWallet();
    wallet.value = data;
    wallet.notifyListeners();
    return data;
  }

  Future<List<WalletModel>> getWallets() async {
    try {
      final _walletService = WalletService(dio);
      if (wallets.value.isEmpty) {
        final data = await _walletService.getWallets();
        wallets.value.addAll(data);
        wallets.notifyListeners();
        return data;
      }
      return wallets.value;
    } catch (e) {
      print(e);
    }
    return [];
  }

  saveWallet(WalletModel wallet) {
    wallets.value.add(wallet);
    wallets.notifyListeners();
  }
}
