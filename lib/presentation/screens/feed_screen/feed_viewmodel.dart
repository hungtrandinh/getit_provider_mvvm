import 'package:getit_provider_mvvm/base/base_view_model.dart';
import '../../../models/reponsedata.dart';

class FeedViewModel extends BaseViewModel {

  Future<ResponseData> getResults() async {
    final ResponseData responseData;
    responseData = await apiUser.getUser();
    notifyListeners();
    return responseData;
  }
}
