import 'wallet_model.dart';

abstract class WalletServiceModel {
  Future<List<WalletModel>> getWallets();
  Future<WalletModel> getPrimaryWallet();

  Future<WalletModel> addWallet(dynamic data);
}
