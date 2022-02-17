// ignore_for_file: public_member_api_docs

import 'dart:convert';

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

    final wallet = WalletModel.fromJson(json.encode(response));

    return wallet;
  }

  @override
  Future<List<WalletModel>> getWallets() async {
    final response = await client.get('$baseUrl/wallet/find-all');
    final walletsData = <WalletModel>[];
    for (var wallet in response) {
      walletsData.add(WalletModel.fromJson(jsonEncode(wallet)));
    }
    return walletsData;
  }
}
