import 'package:blockchaimprims/features/profile/data/models/user.dart';

class LoginRequest {
  LoginRequest({required this.user, required this.password});

  final User user;
  final String password;
}
