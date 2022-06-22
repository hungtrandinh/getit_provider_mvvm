import 'package:getit_provider_mvvm/models/results.dart';
import 'package:json_annotation/json_annotation.dart';
part 'reponsedata.g.dart';
@JsonSerializable()
class ResponseData{
  List<Results> results;
  ResponseData({required this.results});
  factory ResponseData.fromJson(Map<String,dynamic> json) =>_$ResultFromJson(json);
}