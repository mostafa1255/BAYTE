import 'package:dio/dio.dart';

class ApiServeces {
  final _baseurl = "https://";
  final Dio dio;

  ApiServeces(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get("$_baseurl$endpoint");
    return response.data;
  }
}
