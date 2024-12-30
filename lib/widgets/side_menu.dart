import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beamer/beamer.dart';
import 'package:my_web_app/modules/home/menu_controller.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MenuControllerService menuControllerService = Get.find();
    final BeamerDelegate beamer = Beamer.of(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          Obx(() => ListTile(
                selected: menuControllerService.selectedKey.value == 'home',
                selectedColor: Colors.blue,
                title: const Text('Home'),
                onTap: () {
                  menuControllerService.updateSelectedKey('home');
                  beamer.beamToNamed('/');
                  Navigator.pop(context);
                },
              )),
          Obx(() => ListTile(
                selected: menuControllerService.selectedKey.value == 'page1',
                selectedColor: Colors.blue,
                title: const Text('Page 1'),
                onTap: () {
                  menuControllerService.updateSelectedKey('page1');
                  beamer.beamToNamed('/page1');
                  Navigator.pop(context);
                },
              )),
          Obx(() => ListTile(
                selected: menuControllerService.selectedKey.value == "page2",
                selectedColor: Colors.blue,
                title: const Text('Page 2'),
                onTap: () {
                  menuControllerService.updateSelectedKey("page2");
                  beamer.beamToNamed('/page2');
                  Navigator.pop(context);
                },
              )),
        ],
      ),
    );
  }
}
