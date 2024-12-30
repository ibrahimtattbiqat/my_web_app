import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/common_scaffold.dart';
import 'package:my_web_app/widgets/side_menu.dart';

class NestedPage extends StatelessWidget {
  const NestedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Nested Page',
      // appBar: AppBar(title: const Text('Nested Page')),
      body: Row(
        children: [
          SideMenu(),
          const Center(child: Text('Nested Page')),
        ],
      ),
    );
  }
}
