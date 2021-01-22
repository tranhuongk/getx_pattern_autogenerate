import 'package:get/get.dart';
import '../../../app/data/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController({this.repository});

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
