import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:my_web_app/modules/home/home_page.dart';
import 'package:my_web_app/modules/insted/nested_page.dart';
import 'package:my_web_app/modules/page1/page1.dart';
import 'package:my_web_app/modules/page2/page2.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(
          key: const ValueKey('home'),
          title: 'Home',
          child: const HomePage(),
          type: BeamPageType.noTransition),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/'];
}

class Page1Location extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(
          key: const ValueKey('page1'),
          title: 'Page 1',
          child: const Page1(),
          type: BeamPageType.noTransition),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/page1'];
}

class Page2Location extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(
          key: const ValueKey('page2'),
          title: 'Page 2',
          child: const Page2(),
          type: BeamPageType.noTransition),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/page2'];
}

class NestedPageLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(
          key: const ValueKey('nested'),
          title: 'Nested Page',
          child: const NestedPage(),
          type: BeamPageType.noTransition),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/nested'];
}
