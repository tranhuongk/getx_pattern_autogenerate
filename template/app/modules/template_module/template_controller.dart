import 'package:get/get.dart';
import '../../data/repository/template_repository.dart';

class TemplateController extends GetxController {
  final TemplateRepository repository;
  TemplateController({this.repository});

  final _text = 'Template'.obs;
  set text(text) => this._text.value = text;
  get text => this._text.value;
}
