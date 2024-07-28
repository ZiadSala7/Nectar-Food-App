import 'package:dio/dio.dart';

class ServerException {}

void dioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw Exception("connection Timeout");

    case DioExceptionType.sendTimeout:
      throw Exception("send Timeout");

    case DioExceptionType.receiveTimeout:
      throw Exception("receive Timeout");

    case DioExceptionType.badCertificate:
      throw Exception("bad Certificate");

    case DioExceptionType.cancel:
      throw Exception("canceled");

    case DioExceptionType.connectionError:
      throw Exception("connection Error");

    case DioExceptionType.unknown:
      throw Exception("unknown Error");

    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400:
          throw ServerException();
      }
  }
}
