import 'package:flutter_test/flutter_test.dart';
import 'package:mapadj_testing/api/my_get.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock implements http.Client {}

main() {
  group('MyGet Test', () {
    const testUrl = 'https://mydomain.de/api/myGetFunction';

    test('url check', () {
      expect(urlMyGetFunction, testUrl);
    });

    test('returns a MyGet Object if the http call completes successfully',
        () async {
      // Create Mock
      final client = MockClient();

      // Configure Mock
      when(client.get(testUrl))
          .thenAnswer((_) async => http.Response('{"name":"Vitalie"}', 200));

      // Test function with Mock
      expect(await fetchGet(client), isA<MyGet>());
    });

    test('throws an exception if the http call completes with an error', () {
      // Create Mock
      final client = MockClient();

      // Configure Mock
      when(client.get(testUrl))
          .thenAnswer((_) async => http.Response('Some Error', 404));

      // Test Error Case
      expect(fetchGet(client), throwsException);
    });
  });
}
