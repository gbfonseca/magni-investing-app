import '../../config/api.dart';
import '../../shared/models/stock_list_model.dart';
import '../../shared/models/stocks_service_model.dart';
import 'http_client.dart';

class StocksService implements IStocksService {
  final IHttpClient client;
  final baseUrl = baseUrls['apiStocks'];
  StocksService(this.client);

  @override
  Future<List<StockListModel>> getStockByCode(String code) {
    // TODO: implement getStockByCode
    throw UnimplementedError();
  }

  @override
  Future<List<StockListModel>> getStocks() async {
    final response = await client.get('$baseUrl/actions');
    var stockList = <StockListModel>[];
    for (var stock in response['body']) {
      stockList.add(StockListModel.fromJson(stock));
    }
    return stockList;
  }
}
