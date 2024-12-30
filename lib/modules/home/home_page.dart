import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/common_scaffold.dart';
import 'package:my_web_app/widgets/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Home',
      // appBar: AppBar(title: const Text('Home')),
      body: Row(
        children: [
          SideMenu(),
          const Center(child: Text('Home')),
          TextButton(
              onPressed: () {
                Beamer.of(context).beamToNamed('/nested');
                // Navigator.of(context).pushNamed('/nested');
              },
              child: Text("Open Nsted Page"))
        ],
      ),
    );
  }
}
