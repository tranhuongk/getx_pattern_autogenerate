import 'package:getx_pattern_form/app/data/provider/home_provider.dart';
import 'package:meta/meta.dart';

class HomeRepository {
  final HomeProvider apiClient;

  HomeRepository({@required this.apiClient}) : assert(apiClient != null);

  getUser(id) {
    return apiClient.getUser(id);
  }

  postUser(Map data) {
    return apiClient.postUser(data);
  }

  userMessages() {
    return apiClient.userMessages();
  }
}
