import 'dart:convert';

import 'package:ezwallet_mobile/utils/services/auth_service.dart';
import 'package:ezwallet_mobile/utils/services/http_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class IHttpClientMock extends Mock implements IHttpClient {}

var jsonResponse = r'''
  {
  "user": {
    "id": "a428d341-f084-40ce-a6a4-6600685ee054",
    "name": "Gabriel",
    "lastName": "Fonseca",
    "email": "gabriel.fonsecadev@gmail.com",
    "password": "$2b$12$6/Wkq52bed5Mzl5OebQtyOlun0pm389YuAlgb8SetCEwDUE92JXFq",
    "created_at": "2021-09-06T19:16:55.951Z",
    "updated_at": "2021-09-06T19:16:55.951Z"
  },
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImE0MjhkMzQxLWYwODQtNDBjZS1hNmE0LTY2MDA2ODVlZTA1NCIsImlhdCI6MTYzODQ2MTg5MSwiZXhwIjoxNjM5MDY2NjkxfQ.sDauLwVjLq89-xxIhvToFae72HiwUa87ajKYtsowJNY"
  }
  ''';

void main() {
  test('should return an user and token on success', () async {
    final client = IHttpClientMock();
    const data = {
      "email": "any_email@mail.com",
      "password": "any_password",
    };
    when(() => client.post('auth/signin', data))
        .thenAnswer((_) async => jsonDecode(jsonResponse));

    final service = AuthService(client);
    final response = await service.signin(data);
    expect(response.user.name, 'Gabriel');
  });
}
