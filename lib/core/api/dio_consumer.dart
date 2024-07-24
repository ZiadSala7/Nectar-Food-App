import 'package:dio/dio.dart';
import 'package:nectar_app/core/api/api_consumer.dart';
import 'package:nectar_app/core/api/api_interceptors.dart';
import 'package:nectar_app/core/api/endpoints.dart';
import 'package:nectar_app/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer(this.dio) {
    dio.options.baseUrl = Endpoints.baseUrl;
    //ApiInterceptors => can override its methods
    dio.interceptors.add(ApiInterceptors());
    //has a ready functions to use to prints details  of: response, request, request headers and errors
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ),
    );
  }

  @override
  Future getMethod(
      String path, Object? data, Map<String, dynamic>? queryParameter) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      dioExceptions(e);
    }
  }

  @override
  Future postMethod(
    String path,
    dynamic data,
    Map<String, dynamic>? queryParameter, {
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      dioExceptions(e);
    }
  }

  @override
  Future patchMethod(
    String path,
    dynamic data,
    Map<String, dynamic>? queryParameter, {
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      dioExceptions(e);
    }
  }

  @override
  Future deleteMethod(
    String path,
    dynamic data,
    Map<String, dynamic>? queryParameter, {
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      dioExceptions(e);
    }
  }
}
