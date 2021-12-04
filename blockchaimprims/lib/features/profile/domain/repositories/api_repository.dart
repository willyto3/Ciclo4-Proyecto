import 'package:blockchaimprims/features/profile/data/models/user.dart';

abstract class ApiRepositoryInterface {
  Future<User> getUserFromToken(String token);
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<bool> logout(String token);
}