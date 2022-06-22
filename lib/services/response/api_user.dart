import 'package:dio/dio.dart';
import 'package:getit_provider_mvvm/commons/app_contains.dart';
import 'package:getit_provider_mvvm/models/reponsedata.dart';
import 'package:retrofit/http.dart';

part 'api_user.g.dart';
@RestApi()
abstract class ApiUser{
  factory ApiUser(Dio dio, {String baseUrl}) = _ApiUser;
  @GET(src)
  Future<ResponseData> getUser();
}