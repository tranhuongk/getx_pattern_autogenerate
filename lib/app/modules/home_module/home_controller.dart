import 'package:get/get.dart';
import 'package:getx_pattern_form/app/data/provider/home_provider.dart';

class HomeController extends GetxController {
  HomeController({this.provider});
  final HomeProvider provider;

  final RxInt counter = 0.obs;
  void increase() {
    this.counter.value += 1;
  }

  void decrease() {
    this.counter.value -= 1;
  }
}
