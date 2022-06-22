import 'dart:ui';

part 'picture.g.dart';
class Picture{
   final String large;
   Picture({required this.large});
   factory Picture.fromJson(Map<String,dynamic> json)=> _$PictureFromJson(json);
}