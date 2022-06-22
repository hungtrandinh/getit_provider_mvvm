part of 'results.dart';
Results _$ResultsFromJson(Map<String,dynamic> json){
  return Results(gender: json["gender"], email: json["email"],picture: Picture.fromJson(json['picture']));
}
// Map<String,dynamic> _$ResultsToJson(Results instance) => <String,dynamic>{
//   "gender" : instance.gender,
//   "email"  : instance.email,
//   "picture": Picture.fromJson(instance.picture)
// };