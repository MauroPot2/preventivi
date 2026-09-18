import 'package:preventiviedili/features/auth/domain/user.dart';

abstract class AuthRepository {
  Future<User?> getCurrentUser();

  Future<User> login(String email, String password);

  Future<User> registerUser(String name, String email, String password);

  Future<void> logout();

  Future<void> resetPassword(String email);
}
