

part of 'picture.dart';

Picture _$PictureFromJson(Map<String,dynamic> json){
  return Picture(large: json["large"]);
}