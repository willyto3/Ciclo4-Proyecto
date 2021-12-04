import 'package:blockchaimprims/features/profile/domain/model/user.dart';
import 'package:blockchaimprims/features/profile/domain/repositories/local_storage_repository.dart';

class LocalRepositoryImpl extends LocalRepositoryInterface{
  @override
  Future<void> clearAllData() {
    // TODO: implement clearAllData
    throw UnimplementedError();
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future<User> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<User> saveUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<String> saveToken(String token) {
    // TODO: implement saveToken
    throw UnimplementedError();
  }

}