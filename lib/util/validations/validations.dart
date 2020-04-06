class Validations {
  Validations._();

  static bool isValidPassword({String password}) {
    if (password.length < 6) {
      return false;
    }

    return true;
  }

  static bool isValidEmailAddress({String email}) {
    if (email.isEmpty) {
      return false;
    }

    if (!email.contains('@')) {
      return false;
    }

    return true;
  }
}
