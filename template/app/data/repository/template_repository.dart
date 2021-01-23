import '../../../app/data/provider/template_provider.dart';
import 'package:meta/meta.dart';

class TemplateRepository {
  final TemplateProvider provider;

  TemplateRepository({@required this.provider}) : assert(provider != null);

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
