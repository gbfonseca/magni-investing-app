import 'wallet_model.dart';

abstract class WalletServiceModel {
  Future<List<WalletModel>> getWallets();
  Future<WalletModel> addWallet(dynamic data);
}
