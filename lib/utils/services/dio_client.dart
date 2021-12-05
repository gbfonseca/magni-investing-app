import 'package:dio/dio.dart';

import 'http_client.dart';

final baseUrl = 'https://ezwallet-hml.herokuapp.com/api';

class DioClient implements IHttpClient {
  final Dio dio = Dio();

  @override
  Future get(String path) async {
    var response = await dio.get("$baseUrl/$path");
    return response.data;
  }

  @override
  Future<dynamic> post(String path, dynamic data) async {
    var response = await dio.post("$baseUrl/$path", data: data);
    return response.data;
  }

  @override
  Future put(String path, data) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
