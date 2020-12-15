class Cat {
  static const sound_happy = 'rrrr';
  static const sound_sad = 'miao';
  String askHumanForFood(Human human) {
    // Ask human for food
    final food = human.feedCat();

    // judge food
    if (food == 'good_food') {
      return sound_happy;
    } else if (food == 'bad_food') {
      return sound_sad;
    } else {
      throw Exception('Unknown food');
    }
  }
}

class Human {
  String feedCat() {
    // ignore: todo
    // TODO: Not Implemented!
    return 'SOME FOOD';
  }
}
