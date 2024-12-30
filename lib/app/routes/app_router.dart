import 'package:beamer/beamer.dart';
import 'locations.dart';

final appRouter = BeamerDelegate(
  locationBuilder: BeamerLocationBuilder(
    beamLocations: [
      HomeLocation(),
      Page1Location(),
      Page2Location(),
      NestedPageLocation(),
    ],
  ),
);
