import 'package:getx_pattern_form/app/data/api/api_connect.dart';
import 'package:getx_pattern_form/app/data/model/user.dart';
import 'package:getx_pattern_form/app/utils/constants.dart';

class HomeProvider {
  HomeProvider();

  // Get request
  Future<User> getUser() async {
    return User.fromJson(
      (await ApiConnect.instance.get(EndPoints.user)).getBody(),
    );
  }
}
