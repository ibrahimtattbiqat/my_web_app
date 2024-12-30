import 'package:get/get.dart';
import 'package:my_web_app/modules/page1/page1Controller.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}
