import 'package:dio/dio.dart';

class ServerException {}

void dioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException();
    case DioExceptionType.sendTimeout:
      throw ServerException();
    case DioExceptionType.receiveTimeout:
      throw ServerException();
    case DioExceptionType.badCertificate:
      throw ServerException();
    case DioExceptionType.cancel:
      throw ServerException();
    case DioExceptionType.connectionError:
      throw ServerException();
    case DioExceptionType.unknown:
      throw ServerException();
    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400:
          throw ServerException();
        case 401:
          throw ServerException();
        case 403:
          throw ServerException();
        case 404:
          throw ServerException();
        case 409:
          throw ServerException();
        case 422:
          throw ServerException();
        case 504:
          throw ServerException();
      }
  }
}
