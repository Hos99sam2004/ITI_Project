import 'package:dio/dio.dart';
import 'package:hos/Presentations/Rigestars/core/Api/Api_consumer.dart';
import 'package:hos/Presentations/Rigestars/core/Api/Api_interceptor.dart';
import 'package:hos/Presentations/Rigestars/core/Api/endPoinnts.dart';
// import 'package:hos/Presentations/Rigestars/core/errors/errorModel.dart';
import 'package:hos/Presentations/Rigestars/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}){
    dio.options.baseUrl = Endpoints.baseurl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add( LogInterceptor(
      responseBody: true,
      error: true,
      request: true,
      requestHeader: true,
      requestBody: true,
    ));
  }
  @override

  Future delete(String path,
      {dynamic data, Map<String, dynamic>? queryparameters,bool  isFormData =false}) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryparameters,
        
      );
         return response;
    } on DioException catch (e) {
      Handel_Dio_Exceptions(e);
    }
  }

  @override
  Future get(String path,
      {dynamic data, Map<String, dynamic>? queryparameters}) async{
       try {
          final response =await dio.get(
          path,
          data: data,
          queryParameters: queryparameters,
        );
           return response;
        } on DioException catch (e) {
      Handel_Dio_Exceptions(e);
    }
   
  }

  @override
  Future patch(String path,
      {dynamic data, Map<String, dynamic>? queryparameters,bool  isFormData =false}) async {
    try {
          final response =await dio.patch(
          path,
         data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryparameters,
        );
          return response;
        } on DioException catch (e) {
      Handel_Dio_Exceptions(e);
    }
  }

  @override
  Future post(String path,
      {dynamic data, Map<String, dynamic>? queryparameters,bool  isFormData =false})async {
   try {
          final response =await dio.post(
          path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryparameters,
        );
        return response;
        } on DioException catch (e) {
      Handel_Dio_Exceptions(e);
    }
  }

}
