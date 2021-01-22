import '../../../app/data/provider/home_provider.dart';
import 'package:meta/meta.dart';

class HomeRepository {
  final HomeProvider provider;

  HomeRepository({@required this.provider}) : assert(provider != null);

  getUser(id) {
    return provider.getUser(id);
  }

  postUser(Map data) {
    return provider.postUser(data);
  }

  userMessages() {
    return provider.userMessages();
  }
}
