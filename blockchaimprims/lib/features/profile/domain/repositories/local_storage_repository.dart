import 'package:blockchaimprims/features/profile/data/models/user.dart';

abstract class LocalRepositoryInterface {
  Future<String> getToken();
  Future<void> clearAllData();
  Future<User> saveUser(User user);
  Future<User> getUser();
  Future<String> saveToken(String token);
}
