import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/common_scaffold.dart';
import 'package:my_web_app/widgets/side_menu.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Page 2',
      // appBar: AppBar(title: const Text('Page 2')),
      body: Row(
        children: [
          SideMenu(),
          const Center(child: Text('Page 2')),
        ],
      ),
    );
  }
}
