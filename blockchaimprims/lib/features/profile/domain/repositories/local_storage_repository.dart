import 'package:blockchaimprims/features/profile/data/models/user.dart';

abstract class LocalRepositoryInterface {
  Future<void> clearAllData();
  Future<String> getToken();
  Future<String> saveToken(String token);
  Future<User> saveUser(User user);
  Future<User> getUser();
}
