import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class RemoteAuthentication {
  final HttpClient httpClient;
  final String url;
  RemoteAuthentication(this.httpClient, this.url);

  Future<void> auth() async {
    return await httpClient.request(url: url, method: 'post');
  }
}

abstract class HttpClient {
  Future<void>? request({required String url, required String method});
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  late final HttpClientSpy httpClientSpy;
  late final String url;
  late final RemoteAuthentication sut;

  setUp(() {
    httpClientSpy = HttpClientSpy();
    url = faker.internet.httpUrl();
    sut = RemoteAuthentication(httpClientSpy, url);
  });
  test('Shoud call Remote Authentication with correct url', () async {
    await sut.auth();

    verify(httpClientSpy.request(url: url, method: 'post'));
  });
}
