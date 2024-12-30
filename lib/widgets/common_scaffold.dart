import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beamer/beamer.dart';
import 'package:my_web_app/modules/home/menu_controller.dart';
import 'side_menu.dart';

class CommonScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const CommonScaffold({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BeamerDelegate beamer = Beamer.of(context);
    final MenuControllerService menuController = Get.find();

    // Defer the state update until after the current build phase
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Sync the selected key with the current BeamPage
      final currentKey =
          beamer.currentBeamLocation.state.routeInformation.uri.path;
      if (currentKey == '/') {
        menuController.updateSelectedKey('home');
      } else if (currentKey == '/page1') {
        menuController.updateSelectedKey('page1');
      } else if (currentKey == '/page2') {
        menuController.updateSelectedKey('page2');
      } else if (currentKey == '/nested') {
        menuController.updateSelectedKey('nested');
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const SideMenu(),
      body: body,
    );
  }
}
