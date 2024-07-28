import 'package:nectar_app/core/api/endpoints.dart';

class AuthModel {
  final bool failed;
  final int statusCode;
  final bool isSuccess;
  final String message;
  dynamic data;

  AuthModel({
    required this.statusCode,
    required this.isSuccess,
    required this.message,
    required this.data,
    this.failed = false,
  });

  factory AuthModel.fromJson(Map<String, dynamic> jsonData, bool failed) {
    return AuthModel(
      statusCode: jsonData[ApiKeys.statusCode],
      isSuccess: jsonData[ApiKeys.isSuccess],
      message: jsonData[ApiKeys.message],
      data: jsonData[ApiKeys.data],
    );
  }
}

class DataModel {
  final bool isAuthenticated;
  final String id;
  final String email;
  final String username;
  final String phoneNumber;
  final String token;

  DataModel({
    required this.isAuthenticated,
    required this.id,
    required this.email,
    required this.username,
    required this.phoneNumber,
    required this.token,
  });

  factory DataModel.fromJson(Map<String, dynamic> jsonData) {
    return DataModel(
      isAuthenticated: ApiKeys.isAuthenticated,
      id: ApiKeys.id,
      email: ApiKeys.email,
      username: ApiKeys.username,
      phoneNumber: ApiKeys.phoneNumber,
      token: ApiKeys.token,
    );
  }
}
