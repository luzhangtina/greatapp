import 'package:flutter_test/flutter_test.dart';
import 'package:greatapp/util/validations/validations.dart';

void main() {
  test(
    'password is less than 6 character',
    () {
      final bool result = Validations.isValidPassword(
        password: '12345',
      );
      expect(result, false);
    },
  );

  test(
    'password is more than 5 character',
    () {
      final bool result = Validations.isValidPassword(
        password: '123456',
      );
      expect(result, true);
    },
  );

  test(
    'email is empty',
    () {
      final bool result = Validations.isValidEmailAddress(
        email: '',
      );
      expect(result, false);
    },
  );

  test(
    'email doesn\'t contain \'@\'',
    () {
      final bool result = Validations.isValidEmailAddress(
        email: 'test.com',
      );
      expect(result, false);
    },
  );

  test(
    'email contains \'@\'',
    () {
      final bool result = Validations.isValidEmailAddress(
        email: 'test@test.com',
      );
      expect(result, true);
    },
  );
}
