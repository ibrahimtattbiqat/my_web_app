import 'package:get/get.dart';

class MenuControllerService extends GetxController {
  /*  var selectedIndex = 0.obs;

  void updateIndex(int index) {
    selectedIndex.value = index;
  } */

  var selectedKey = ''.obs;

  void updateSelectedKey(String key) {
    selectedKey.value = key;
  }
}
