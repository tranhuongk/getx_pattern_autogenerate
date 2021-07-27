import 'package:getx_pattern_form/app/data/model/api/api_connect.dart';
import 'package:getx_pattern_form/app/data/model/user.dart';
import 'package:getx_pattern_form/app/utils/constants.dart';

class TemplateProvider {
  TemplateProvider();

  // Get request
  Future<User> getUser() async {
    return User.fromJson(
      (await ApiConnect.instance.get(Constants.user)).getBody(),
    );
  }
}
