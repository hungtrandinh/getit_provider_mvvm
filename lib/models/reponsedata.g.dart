part of 'reponsedata.dart';
ResponseData _$ResultFromJson(Map<String, dynamic> json){
  return ResponseData(results: (json["results"] as List).map((e) => Results.fromJson(e)).toList());
}