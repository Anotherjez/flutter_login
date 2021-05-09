import 'package:quiver/core.dart';

class LoginData {
  final String email;
  final String name;
  final String password;

  LoginData({
    required this.email,
    this.name = '',
    required this.password,
  });

  @override
  String toString() {
    return '$runtimeType($email, $name, $password)';
  }

  @override
  bool operator ==(Object other) {
    if (other is LoginData) {
      return email == other.email &&
          name == other.name &&
          password == other.password;
    }
    return false;
  }

  @override
  int get hashCode => hash2(name, password);
}
