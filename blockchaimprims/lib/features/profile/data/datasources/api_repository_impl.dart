import 'package:blockchaimprims/features/profile/data/models/user.dart';
import 'package:blockchaimprims/features/profile/domain/exception/auth_exception.dart';
import 'package:blockchaimprims/features/profile/domain/repositories/api_repository.dart';
import 'package:blockchaimprims/features/profile/domain/request/login_request.dart';
import 'package:blockchaimprims/features/profile/domain/response/login_response.dart';

class ApiRepositoryImpl implements ApiRepositoryInterface {
  @override
  Future<User> getUserFromToken(String token) async {
    if (token == 'AA111') {
      return Future.value(
        const User('John Doe', 'prueba@gmail.com', '123456', '+56912345678'),
      );
    } else if (token == 'AA222') {
      return Future.value(
        const User(
            'Pollo Perez', 'prueba2@gmail.com', '123456', '+56912345679'),
      );
    }
    throw AuthException();
  }

  @override
  Future<LoginResponse> login(LoginRequest login) async {
    if (login.user == 'AA111' && login.password == '123456') {
      return LoginResponse(
          const User('John Doe', 'prueba@gmail.com', '123456', '+56912345678'),
          'AA111');
    } else if (login.user == 'AA111' && login.password == '123456') {
      return LoginResponse(
          const User(
              'Pollo Perez', 'prueba2@gmail.com', '123456', '+56912345679'),
          'AA222');
    }
    throw AuthException();
  }

  @override
  Future<void> logout(String token) async {
    print('Removing Token From Server');
    return;
  }
}
