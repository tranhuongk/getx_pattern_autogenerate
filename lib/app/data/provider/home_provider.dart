import 'package:getx_pattern_form/app/data/model/api/api_connect.dart';
import 'package:getx_pattern_form/app/utils/constants.dart';

class HomeProvider {
  HomeProvider();

  // Get request
  Future<dynamic> getUser() async {
    return (await ApiConnect.instance.get(Constants.user)).getRes();
  }
}
