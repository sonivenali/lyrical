import 'package:dio/dio.dart';
import 'package:lyrical/models.dart';

class LyricalService {
  final searchApi = "api.genius.com/search";

   Future<ResultModel> search(String query) async {
    final response = await Dio().get(searchApi,
        queryParameters: {"q": query},
        options: Options(headers: {
          "Authorization":
              "Bearer qiwqeOKYgBwsLJ3ybcJG3ycDkIcileq-i-SV605FtuVlZjYpktokeftOQvpen1Yx"
        }));
    return ResultModel.fromJson(response.data);
  }
}
