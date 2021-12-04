import 'package:blockchaimprims/features/profile/data/models/user.dart';
import 'package:blockchaimprims/features/profile/domain/request/login_request.dart';
import 'package:blockchaimprims/features/profile/domain/response/login_response.dart';

abstract class ApiRepositoryInterface {
  Future<User> getUserFromToken(String token);
  Future<LoginResponse> login(LoginRequest login);
  Future<void> logout(String token);
}