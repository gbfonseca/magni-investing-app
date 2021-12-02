import 'package:dio/dio.dart';

import 'http_client.dart';

class DioClient implements IHttpClient {
  final Dio dio = Dio();

  @override
  Future get(String url) async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future post(String url, dynamic data) async {
    var response = await dio.post(url, data: data);
    return response;
  }
}
