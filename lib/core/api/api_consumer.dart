abstract class ApiConsumer {
  // API Methods
  Future<dynamic> getMethod(
    String path,
    Object? data,
    Map<String, dynamic>? queryParameter,
  );
  Future<dynamic> postMethod(
    String path,
    Object? data,
    Map<String, dynamic>? queryParameter, {
    bool isFormData = false,
  });
  Future<dynamic> patchMethod(
    String path,
    Object? data,
    Map<String, dynamic>? queryParameter, {
    bool isFormData = false,
  });
  Future<dynamic> deleteMethod(
    String path,
    Object? data,
    Map<String, dynamic>? queryParameter, {
    bool isFormData = false,
  });
}
