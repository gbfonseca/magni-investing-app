import 'stock_list_model.dart';

abstract class IStocksService {
  Future<List<StockListModel>> getStocks();
  Future getStockByCode(String code);
}
