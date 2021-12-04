import 'package:blockchaimprims/features/profile/data/models/user.dart';

class LoginResponse {
  final String token;
  final User user;

  LoginResponse(
    this.user,
    this.token,
  );
}
