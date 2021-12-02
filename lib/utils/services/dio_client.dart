import 'package:dio/dio.dart';

import 'http_client.dart';

final url = 'https://ezwallet-hml.herokuapp.com/api';

class DioClient implements IHttpClient {
  final Dio dio = Dio();

  @override
  Future get(String url) async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<dynamic> post(String path, dynamic data) async {
    var response = await dio.post("$url/$path", data: data);
    return response.data;
  }

  @override
  Future put(String path, data) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
