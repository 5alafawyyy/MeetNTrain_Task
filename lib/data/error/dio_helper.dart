import 'package:dio/dio.dart';
import 'package:meet_n_train_task/data/network/api_constance.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstance.baseUrl,
        receiveDataWhenStatusError: true,
        headers: {
          ApiConstance.contentType: ApiConstance.applicationJson,
        },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        ApiConstance.authorization: '$token',
        ApiConstance.contentType: ApiConstance.applicationJson,
      };
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
