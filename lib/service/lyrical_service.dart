import 'package:dio/dio.dart';

class LyricalService {
  final searchApi = "api.genius.com/search";

  search(String query) async {
    final response = await Dio().get(searchApi, queryParameters: {"q": query},
        options: Options(headers: {
          "Authorization": "Bearer qiwqeOKYgBwsLJ3ybcJG3ycDkIcileq-i-SV605FtuVlZjYpktokeftOQvpen1Yx"
        }));
  }
}