import 'package:dio/dio.dart';
import 'failure_model.dart';

class ServerFaliure extends Faliure {
  ServerFaliure(super.errmessage);

  factory ServerFaliure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection timeout with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFaliure("Bad Connection , Please try Again Later");
      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
            dioError.response!.data!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFaliure('Request to ApiServer was canceld');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFaliure('No Internet Connection');
        }
        return ServerFaliure('Unexpected Error, Please try again!');
      default:
        return ServerFaliure('Opps There was an Error, Please try again');
    }
  }
  factory ServerFaliure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFaliure("Requist Not Found");
    } else if (statusCode >= 500) {
      return ServerFaliure("Error in Server , Please Try Again Later");
    } else {
      return ServerFaliure("Opps There is an Error");
    }
  }
}
