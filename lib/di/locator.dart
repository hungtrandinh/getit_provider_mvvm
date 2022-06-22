import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:getit_provider_mvvm/services/response/api_user.dart';

final locator =GetIt.instance;
void setupInjection() {
  locator.registerLazySingleton(()=>Dio(BaseOptions(contentType: "application/json")));
  locator.registerLazySingleton<ApiUser>(()=>ApiUser(locator()));
}