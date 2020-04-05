class Validations {
  Validations._();

  static bool isValidPassword(String value) {
    if (value.length < 6) {
      return false;
    }

    return true;
  }

  static bool isValidEmailAddress(String value) {
    if (value.isEmpty) {
      return false;
    }

    if (!value.contains('@')) {
      return false;
    }

    return true;
  }
}
