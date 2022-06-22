import 'package:flutter/material.dart';
import 'package:getit_provider_mvvm/services/response/api_user.dart';
import '../di/locator.dart';

class BaseViewModel extends ChangeNotifier{
  final apiUser = locator<ApiUser>();
}