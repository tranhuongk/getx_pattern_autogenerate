import 'package:get/get.dart';
import '../../../app/data/provider/template_provider.dart';

class TemplateController extends GetxController {
  final TemplateProvider provider;
  TemplateController({this.provider});

  final _text = 'Template'.obs;
  set text(text) => this._text.value = text;
  get text => this._text.value;
}
