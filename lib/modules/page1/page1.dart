import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_app/modules/page1/page1Controller.dart';
import 'package:my_web_app/widgets/common_scaffold.dart';
import 'package:my_web_app/widgets/side_menu.dart';

class Page1 extends GetView<CounterController> {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Page 1',
      body: Row(
        children: [
          SideMenu(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(
                      'Count: ${controller.count.value}',
                      style: const TextStyle(fontSize: 24),
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => controller.decrement(),
                      child: const Text('Decrement'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => controller.increment(),
                      child: const Text('Increment'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
