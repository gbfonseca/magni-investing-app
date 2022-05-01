// ignore_for_file: public_member_api_docs

import '../../config/api.dart';
import '../../shared/models/wallet_model.dart';
import '../../shared/models/wallet_service_model.dart';
import 'http_client.dart';

class WalletService implements WalletServiceModel {
  final IHttpClient client;
  final baseUrl = baseUrls['apiBase'];

  WalletService(this.client);

  @override
  Future<WalletModel> addWallet(dynamic data) async {
    final response = await client.post('$baseUrl/wallet/create', data);
    response['variable_income']['invested_value'] =
        double.parse(response['variable_income']['invested_value']);
    response['variable_income']['current_value'] =
        double.parse(response['variable_income']['current_value']);

    final wallet = WalletModel.fromJson(response);

    return wallet;
  }

  @override
  Future<List<WalletModel>> getWallets() async {
    final walletsData = <WalletModel>[];
    try {
      final response = await client.get('$baseUrl/wallet/find-all');
      for (var wallet in response) {
        walletsData.add(WalletModel.fromJson(wallet));
      }
      return walletsData;
    } catch (e) {
      print(e);
    }
    return walletsData;
  }

  @override
  Future<WalletModel> getPrimaryWallet() async {
    final response = await client.get('$baseUrl/wallet/get-primary');
    final wallet = WalletModel.fromJson(response);

    return wallet;
  }
}
