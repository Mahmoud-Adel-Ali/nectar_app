import 'package:nectar_app/core/api/api_keys.dart';

class Data {
  bool? isAuthenticated;
  String? id;
  String? email;
  String? username;
  String? phoneNumber;
  String? token;

  Data({
    this.isAuthenticated,
    this.id,
    this.email,
    this.username,
    this.phoneNumber,
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      isAuthenticated: json[ApiKeys.isAuthenticated] as bool?,
      id: json[ApiKeys.id] as String?,
      email: json[ApiKeys.email] as String?,
      username: json[ApiKeys.username] as String?,
      phoneNumber: json[ApiKeys.phoneNumber] as String?,
      token: json[ApiKeys.token] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAuthenticated': isAuthenticated,
      'id': id,
      'email': email,
      'username': username,
      'phoneNumber': phoneNumber,
      'token': token,
    };
  }
}
