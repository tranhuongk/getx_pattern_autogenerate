import 'package:get/get.dart';
import '../../data/repository/template_repository.dart';

class TemplateController extends GetxController {
  final TemplateRepository repository;
  TemplateController({this.repository});

  final _counter = 0.obs;
  set counter(value) => this._counter.value = value;
  get counter => this._counter.value;
  void increase() {
    this._counter.value += 1;
  }

  void decrease() {
    this._counter.value -= 1;
  }
}
