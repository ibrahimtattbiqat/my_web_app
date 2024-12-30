import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'package:get/get.dart';

import 'package:my_web_app/modules/home/menu_controller.dart';
import 'package:my_web_app/app/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routerDelegate = appRouter;

  @override
  Widget build(BuildContext context) {
    // Initialize GetX Controller
    Get.put(MenuControllerService());

    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate),
      debugShowCheckedModeBanner: false,
    );
  }
}
