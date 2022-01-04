import 'package:dio/dio.dart';

import 'http_client.dart';

class DioClient implements IHttpClient {
  final Dio dio = Dio();

  @override
  Future get(String path) async {
    var response = await dio.get("$path");
    return response.data;
  }

  @override
  Future<dynamic> post(String path, dynamic data) async {
    var response = await dio.post("$path", data: data);
    return response.data;
  }

  @override
  Future put(String path, data) async {
    final response = await dio.put("$path", data: data);
    return response.data;
  }
}

final dio = DioClient();
