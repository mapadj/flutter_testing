import 'package:flutter_test/flutter_test.dart';
import 'package:mapadj_testing/my_cat.dart';
import 'package:mockito/mockito.dart';

// Create a Mock Human
class MockHuman extends Mock implements Human {}

main() {
  group('Cat Test', () {
    const correct_sound_happy = 'rrrr';
    const correct_sound_sad = 'miao';

    test('sound check', () {
      expect(Cat.sound_happy, correct_sound_happy);
      expect(Cat.sound_sad, correct_sound_sad);
    });

    test('feed cat good food, expect happy sound', () async {
      // Create Mock Human and Cat
      final human = MockHuman();
      final cat = Cat();

      // Configure Mock Human
      when(human.feedCat()).thenAnswer((_) => 'good_food');

      // Test Cat with Mock Human
      expect(cat.askHumanForFood(human), Cat.sound_happy);
    });

    test('feed cat bad food, expect sad sound ', () async {
      // Create Mock Human and Cat
      final human = MockHuman();
      final cat = Cat();

      // Configure Mock Human
      when(human.feedCat()).thenAnswer((_) => 'bad_food');

      // Test Cat with Mock Human
      expect(cat.askHumanForFood(human), Cat.sound_sad);
    });

    test('feed cat unknown food, expect exception', () {
      // Create Mock Human and Cat
      final human = MockHuman();
      final cat = Cat();

      // Configure Mock
      when(human.feedCat()).thenAnswer((_) => 'unknown_food');

      // Test Cat with Mock Human
      expect(() => cat.askHumanForFood(human), throwsException);
    });
  });
}
