class MyClass {
  static const minLength = 10;

  bool validateName(String name) {
    if (name == null) {
      return false;
    }

    if (name.length >= minLength) {
      return true;
    }
    return false;
  }

  validateName2(String name) {
    return (name?.length ?? 0) >= minLength;
  }
}
