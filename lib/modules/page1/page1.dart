import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/common_scaffold.dart';
import 'package:my_web_app/widgets/side_menu.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Page 1',
      // appBar: AppBar(title: const Text('Page 1')),
      body: Row(
        children: [
          SideMenu(),
          const Center(child: Text('Page 1')),
        ],
      ),
    );
  }
}
