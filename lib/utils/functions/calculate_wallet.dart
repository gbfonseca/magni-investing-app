import '../../shared/models/wallet_model.dart';

mixin CalculateWallet {
  static calculateCurrentValue(WalletModel wallet) =>
      wallet.variable_income.current_value
          .toStringAsFixed(2)
          .replaceFirst(r'.', ',');

  static calculateInvestedValue(WalletModel wallet) =>
      wallet.variable_income.invested_value
          .toStringAsFixed(2)
          .replaceFirst(r'.', ',');
}
