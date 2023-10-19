import 'package:flutter/cupertino.dart';
import 'package:plant_app/models/plant.dart';
import 'package:plant_app/screens/plant_detail_screen.dart';

import '/screens/onboarding_screen.dart';
import '/screens/plants_screen.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PlantsScreen.routeName:
        return _cupertinoRoute(
          const PlantsScreen(),
        );
      case PlantDetailScreen.routeName:
        final plant = settings.arguments as Plant;
        return _cupertinoRoute(
          PlantDetailScreen(
            plant: plant,
          ),
        );

      default:
        return _cupertinoRoute(
          const OnboardingScreen(),
        );
    }
  }

  static Route _cupertinoRoute(Widget view) {
    return CupertinoPageRoute(
      builder: (_) => view,
    );
  }

  Routes._();
}
