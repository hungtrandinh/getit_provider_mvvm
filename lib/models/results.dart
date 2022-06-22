import 'package:getit_provider_mvvm/models/picture.dart';
import 'package:json_annotation/json_annotation.dart';
part 'results.g.dart';
@JsonSerializable()
class Results{
  final Picture? picture;
  final String? gender;
  final String? email;
  Results({required this.gender,required this.email,required this.picture});
  factory Results.fromJson(Map<String,dynamic> json) => _$ResultsFromJson(json);
  // Map<String,dynamic> toJson() => _$ResultsToJson(this);

}

