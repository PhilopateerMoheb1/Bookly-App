import 'dart:html';

import 'package:dio/dio.dart';

abstract class Failure {}

class ServerFailure extends Failure {
  final String errMsg;

  ServerFailure(this.errMsg);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Error Msg: connectionTimeout");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Error Msg: sendTimeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Error Msg: receiveTimeout");
      case DioExceptionType.badCertificate:
        return ServerFailure("Error Msg: badCertificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response,
        );
      case DioExceptionType.cancel:
        return ServerFailure("Error Msg: cancel");
      case DioExceptionType.connectionError:
        return ServerFailure("Error Msg: connectionError");
      case DioExceptionType.unknown:
        return ServerFailure("Error Msg: connectionTimeout");
      default:
        return ServerFailure("Error Msg: connectionTimeout");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        response["error"]["message"],
      );
    } else if (statusCode == 404) {
      return ServerFailure("Not found");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error");
    } else {
      return ServerFailure("Error");
    }
  }
}
