class ResultModel {
  Response response;

  ResultModel.fromJson(Map<String, dynamic> xyz) {
    response = Response.fromJson(xyz["response"]);
  }
}

class Response {
  List<Hit> hits;

  Response.fromJson(Map<String, dynamic> xyz) {
    this.hits = (xyz['hits'] as List).map((e) => Hit.fromJson(e)).toList();
  }
}

class Hit {
  Result result;

  Hit.fromJson(Map<String, dynamic> xyz) {
    result = Result.fromJson(xyz["result"]);
  }
}

class Result {
  String imageUrl;
  int id;
  String title;

  Result.fromJson(Map<String, dynamic> xyz) {
    this.id = xyz["id"];
    this.imageUrl = xyz["header_image_url"];
    this.title = xyz["title"];
  }
}
