import 'package:blockchaimprims/features/profile/data/models/user.dart';
import 'package:blockchaimprims/features/profile/domain/repositories/local_storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalRepositoryImpl extends LocalRepositoryInterface {
  final _prefToken = 'TOKEN';
  static const _prefName = 'USER';
  static const _prefEmail = 'WILLYTOC@GMAIL:COM';
  static const _prefPassword = '12345';
  static const _prefPhone = '3017893883';

  @override
  Future<void> clearAllData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  @override
  Future<String> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString(_prefToken);
    return _prefToken;
  }

  @override
  Future<String> saveToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_prefToken, token);
    return token;
  }

  @override
  Future<User> getUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString(_prefName);
    sharedPreferences.getString(_prefEmail);
    sharedPreferences.getString(_prefPassword);
    sharedPreferences.getString(_prefPhone);

    const user = User(_prefEmail, _prefPassword, _prefPhone, _prefPhone);
    return user;
  }

  @override
  Future<User> saveUser(User user) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_prefName, user.name);
    sharedPreferences.setString(_prefEmail, user.email);
    sharedPreferences.setString(_prefPassword, user.password);
    sharedPreferences.setString(_prefPhone, user.phone);
    return user;
  }
}
