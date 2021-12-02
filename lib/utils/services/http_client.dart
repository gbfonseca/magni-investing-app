abstract class IHttpClient {
  Future<dynamic> get(String path);
  Future<dynamic> post(String path, data);
  Future<dynamic> put(String path, data);
}
