import 'package:flutter_test/flutter_test.dart';
import 'package:mapadj_testing/myClass.dart';

main() {
  group('MyClass Test', () {
    test('static const minLength should be 10', () {
      expect(MyClass.minLength, 10);
    });

    group('Test validateName', () {
      test('test length of name with empty', () {
        final model = MyClass();
        expect(model.validateName(null), false);
      });

      test('test length of name  9', () {
        final model = MyClass();

        expect(model.validateName('1234567890'), true);
      });

      test('test length of name 10', () {
        final model = MyClass();

        expect(model.validateName('123456789'), false);
      });
    });

    group('Test validateName2', () {
      test('test length of name with empty', () {
        final model = MyClass();
        expect(model.validateName2(null), false);
      });

      test('test length of name  9', () {
        final model = MyClass();

        expect(model.validateName2('1234567890'), true);
      });

      test('test length of name 10', () {
        final model = MyClass();

        expect(model.validateName2('123456789'), false);
      });
    });
  });
}
